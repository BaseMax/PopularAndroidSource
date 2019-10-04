package c.b.a.a;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* compiled from: StrictLineReader */
public class d implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final InputStream f3719a;

    /* renamed from: b  reason: collision with root package name */
    public final Charset f3720b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f3721c;

    /* renamed from: d  reason: collision with root package name */
    public int f3722d;

    /* renamed from: e  reason: collision with root package name */
    public int f3723e;

    public d(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public void close() {
        synchronized (this.f3719a) {
            if (this.f3721c != null) {
                this.f3721c = null;
                this.f3719a.close();
            }
        }
    }

    public final void s() {
        InputStream inputStream = this.f3719a;
        byte[] bArr = this.f3721c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f3722d = 0;
            this.f3723e = read;
            return;
        }
        throw new EOFException();
    }

    public boolean t() {
        return this.f3723e == -1;
    }

    public String u() {
        int i2;
        int i3;
        synchronized (this.f3719a) {
            if (this.f3721c != null) {
                if (this.f3722d >= this.f3723e) {
                    s();
                }
                for (int i4 = this.f3722d; i4 != this.f3723e; i4++) {
                    if (this.f3721c[i4] == 10) {
                        if (i4 != this.f3722d) {
                            i3 = i4 - 1;
                            if (this.f3721c[i3] == 13) {
                                String str = new String(this.f3721c, this.f3722d, i3 - this.f3722d, this.f3720b.name());
                                this.f3722d = i4 + 1;
                                return str;
                            }
                        }
                        i3 = i4;
                        String str2 = new String(this.f3721c, this.f3722d, i3 - this.f3722d, this.f3720b.name());
                        this.f3722d = i4 + 1;
                        return str2;
                    }
                }
                c cVar = new c(this, (this.f3723e - this.f3722d) + 80);
                loop1:
                while (true) {
                    cVar.write(this.f3721c, this.f3722d, this.f3723e - this.f3722d);
                    this.f3723e = -1;
                    s();
                    i2 = this.f3722d;
                    while (true) {
                        if (i2 != this.f3723e) {
                            if (this.f3721c[i2] == 10) {
                                break loop1;
                            }
                            i2++;
                        }
                    }
                }
                if (i2 != this.f3722d) {
                    cVar.write(this.f3721c, this.f3722d, i2 - this.f3722d);
                }
                this.f3722d = i2 + 1;
                String cVar2 = cVar.toString();
                return cVar2;
            }
            throw new IOException("LineReader is closed");
        }
    }

    public d(InputStream inputStream, int i2, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (i2 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(e.f3724a)) {
            this.f3719a = inputStream;
            this.f3720b = charset;
            this.f3721c = new byte[i2];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }
}
