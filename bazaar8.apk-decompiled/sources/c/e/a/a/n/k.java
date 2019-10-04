package c.e.a.a.n;

import c.e.a.a.o.C0737e;
import java.io.InputStream;

/* compiled from: DataSourceInputStream */
public final class k extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    public final j f9460a;

    /* renamed from: b  reason: collision with root package name */
    public final l f9461b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f9462c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9463d = false;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9464e = false;

    /* renamed from: f  reason: collision with root package name */
    public long f9465f;

    public k(j jVar, l lVar) {
        this.f9460a = jVar;
        this.f9461b = lVar;
        this.f9462c = new byte[1];
    }

    public void close() {
        if (!this.f9464e) {
            this.f9460a.close();
            this.f9464e = true;
        }
    }

    public int read() {
        if (read(this.f9462c) == -1) {
            return -1;
        }
        return this.f9462c[0] & 255;
    }

    public final void s() {
        if (!this.f9463d) {
            this.f9460a.a(this.f9461b);
            this.f9463d = true;
        }
    }

    public void t() {
        s();
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i2, int i3) {
        C0737e.b(!this.f9464e);
        s();
        int read = this.f9460a.read(bArr, i2, i3);
        if (read == -1) {
            return -1;
        }
        this.f9465f += (long) read;
        return read;
    }
}
