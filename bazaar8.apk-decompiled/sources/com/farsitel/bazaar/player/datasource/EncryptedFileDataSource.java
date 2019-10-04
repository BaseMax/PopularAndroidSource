package com.farsitel.bazaar.player.datasource;

import android.net.Uri;
import c.e.a.a.n.A;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class EncryptedFileDataSource implements j {

    /* renamed from: a  reason: collision with root package name */
    public a f12309a;

    /* renamed from: b  reason: collision with root package name */
    public Uri f12310b;

    /* renamed from: c  reason: collision with root package name */
    public long f12311c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f12312d;

    /* renamed from: e  reason: collision with root package name */
    public Cipher f12313e;

    /* renamed from: f  reason: collision with root package name */
    public SecretKeySpec f12314f;

    /* renamed from: g  reason: collision with root package name */
    public IvParameterSpec f12315g;

    public static final class EncryptedFileDataSourceException extends IOException {
        public EncryptedFileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public static class a extends CipherInputStream {

        /* renamed from: a  reason: collision with root package name */
        public InputStream f12316a;

        /* renamed from: b  reason: collision with root package name */
        public Cipher f12317b;

        /* renamed from: c  reason: collision with root package name */
        public SecretKeySpec f12318c;

        /* renamed from: d  reason: collision with root package name */
        public IvParameterSpec f12319d;

        public a(InputStream inputStream, Cipher cipher, SecretKeySpec secretKeySpec, IvParameterSpec ivParameterSpec) {
            super(inputStream, cipher);
            this.f12316a = inputStream;
            this.f12317b = cipher;
            this.f12318c = secretKeySpec;
            this.f12319d = ivParameterSpec;
        }

        public int available() {
            return this.f12316a.available();
        }

        public long h(long j2) {
            IvParameterSpec ivParameterSpec;
            long skip = this.f12316a.skip(j2);
            try {
                int i2 = (int) (j2 % 16);
                byte[] byteArray = new BigInteger(1, this.f12319d.getIV()).add(BigInteger.valueOf((j2 - ((long) i2)) / 16)).toByteArray();
                if (byteArray.length < 16) {
                    byte[] bArr = new byte[16];
                    System.arraycopy(byteArray, 0, bArr, 16 - byteArray.length, byteArray.length);
                    ivParameterSpec = new IvParameterSpec(bArr);
                } else {
                    ivParameterSpec = new IvParameterSpec(byteArray, byteArray.length - 16, 16);
                }
                this.f12317b.init(1, this.f12318c, ivParameterSpec);
                byte[] bArr2 = new byte[i2];
                this.f12317b.update(bArr2, 0, i2, bArr2);
                Arrays.fill(bArr2, (byte) 0);
                return skip;
            } catch (Exception unused) {
                return 0;
            }
        }

        public int read(byte[] bArr, int i2, int i3) {
            return super.read(bArr, i2, i3);
        }
    }

    public EncryptedFileDataSource(c.c.a.c.e.a aVar) {
        this.f12313e = aVar.c();
        this.f12314f = aVar.e();
        this.f12315g = aVar.f();
    }

    public long a(l lVar) {
        if (this.f12312d) {
            return this.f12311c;
        }
        this.f12310b = lVar.f9466a;
        try {
            b();
            c(lVar);
            b(lVar);
            this.f12312d = true;
            return this.f12311c;
        } catch (IOException e2) {
            throw new EncryptedFileDataSourceException(e2);
        }
    }

    public void a(A a2) {
    }

    public final void b() {
        Uri uri = this.f12310b;
        if (uri != null && uri.getPath() != null) {
            this.f12309a = new a(new FileInputStream(new File(this.f12310b.getPath())), this.f12313e, this.f12314f, this.f12315g);
        }
    }

    public final void c(l lVar) {
        this.f12309a.h(lVar.f9471f);
    }

    public void close() {
        this.f12310b = null;
        try {
            if (this.f12309a != null) {
                this.f12309a.close();
            }
            this.f12309a = null;
            if (this.f12312d) {
                this.f12312d = false;
            }
        } catch (IOException e2) {
            throw new EncryptedFileDataSourceException(e2);
        } catch (Throwable th) {
            this.f12309a = null;
            if (this.f12312d) {
                this.f12312d = false;
            }
            throw th;
        }
    }

    public Uri getUri() {
        return this.f12310b;
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        if (this.f12311c == 0) {
            return -1;
        }
        try {
            int read = this.f12309a.read(bArr, i2, a(i3));
            if (read != -1) {
                long j2 = this.f12311c;
                if (j2 != -1) {
                    this.f12311c = j2 - ((long) read);
                }
                return read;
            } else if (this.f12311c == -1) {
                return -1;
            } else {
                throw new EncryptedFileDataSourceException(new EOFException());
            }
        } catch (IOException e2) {
            throw new EncryptedFileDataSourceException(e2);
        }
    }

    public final void b(l lVar) {
        long j2 = lVar.f9472g;
        if (j2 != -1) {
            this.f12311c = j2;
            return;
        }
        this.f12311c = (long) this.f12309a.available();
        if (this.f12311c == 2147483647L) {
            this.f12311c = -1;
        }
    }

    public final int a(int i2) {
        long j2 = this.f12311c;
        if (j2 == -1) {
            return i2;
        }
        return (int) Math.min(j2, (long) i2);
    }

    public Map<String, List<String>> a() {
        return Collections.emptyMap();
    }
}
