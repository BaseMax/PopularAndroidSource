package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import c.e.a.a.n.g;
import c.e.a.a.n.l;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class RawResourceDataSource extends g {

    /* renamed from: e  reason: collision with root package name */
    public final Resources f12894e;

    /* renamed from: f  reason: collision with root package name */
    public Uri f12895f;

    /* renamed from: g  reason: collision with root package name */
    public AssetFileDescriptor f12896g;

    /* renamed from: h  reason: collision with root package name */
    public InputStream f12897h;

    /* renamed from: i  reason: collision with root package name */
    public long f12898i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f12899j;

    public static class RawResourceDataSourceException extends IOException {
        public RawResourceDataSourceException(String str) {
            super(str);
        }

        public RawResourceDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f12894e = context.getResources();
    }

    public long a(l lVar) {
        try {
            this.f12895f = lVar.f9466a;
            if (TextUtils.equals("rawresource", this.f12895f.getScheme())) {
                int parseInt = Integer.parseInt(this.f12895f.getLastPathSegment());
                b(lVar);
                this.f12896g = this.f12894e.openRawResourceFd(parseInt);
                this.f12897h = new FileInputStream(this.f12896g.getFileDescriptor());
                this.f12897h.skip(this.f12896g.getStartOffset());
                if (this.f12897h.skip(lVar.f9471f) >= lVar.f9471f) {
                    long j2 = -1;
                    if (lVar.f9472g != -1) {
                        this.f12898i = lVar.f9472g;
                    } else {
                        long length = this.f12896g.getLength();
                        if (length != -1) {
                            j2 = length - lVar.f9471f;
                        }
                        this.f12898i = j2;
                    }
                    this.f12899j = true;
                    c(lVar);
                    return this.f12898i;
                }
                throw new EOFException();
            }
            throw new RawResourceDataSourceException("URI must use scheme rawresource");
        } catch (NumberFormatException unused) {
            throw new RawResourceDataSourceException("Resource identifier must be an integer.");
        } catch (IOException e2) {
            throw new RawResourceDataSourceException(e2);
        }
    }

    public void close() {
        this.f12895f = null;
        try {
            if (this.f12897h != null) {
                this.f12897h.close();
            }
            this.f12897h = null;
            try {
                if (this.f12896g != null) {
                    this.f12896g.close();
                }
                this.f12896g = null;
                if (this.f12899j) {
                    this.f12899j = false;
                    b();
                }
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(e2);
            } catch (Throwable th) {
                this.f12896g = null;
                if (this.f12899j) {
                    this.f12899j = false;
                    b();
                }
                throw th;
            }
        } catch (IOException e3) {
            throw new RawResourceDataSourceException(e3);
        } catch (Throwable th2) {
            this.f12897h = null;
            try {
                if (this.f12896g != null) {
                    this.f12896g.close();
                }
                this.f12896g = null;
                if (this.f12899j) {
                    this.f12899j = false;
                    b();
                }
                throw th2;
            } catch (IOException e4) {
                throw new RawResourceDataSourceException(e4);
            } catch (Throwable th3) {
                this.f12896g = null;
                if (this.f12899j) {
                    this.f12899j = false;
                    b();
                }
                throw th3;
            }
        }
    }

    public Uri getUri() {
        return this.f12895f;
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return 0;
        }
        long j2 = this.f12898i;
        if (j2 == 0) {
            return -1;
        }
        if (j2 != -1) {
            try {
                i3 = (int) Math.min(j2, (long) i3);
            } catch (IOException e2) {
                throw new RawResourceDataSourceException(e2);
            }
        }
        int read = this.f12897h.read(bArr, i2, i3);
        if (read != -1) {
            long j3 = this.f12898i;
            if (j3 != -1) {
                this.f12898i = j3 - ((long) read);
            }
            a(read);
            return read;
        } else if (this.f12898i == -1) {
            return -1;
        } else {
            throw new RawResourceDataSourceException((IOException) new EOFException());
        }
    }
}
