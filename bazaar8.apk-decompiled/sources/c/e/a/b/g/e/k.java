package c.e.a.b.g.e;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class k extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    public long f10116a;

    /* renamed from: b  reason: collision with root package name */
    public long f10117b = -1;

    public k(InputStream inputStream, long j2) {
        super(inputStream);
        g.a(inputStream);
        this.f10116a = 1048576;
    }

    public final int available() {
        return (int) Math.min((long) this.in.available(), this.f10116a);
    }

    public final synchronized void mark(int i2) {
        this.in.mark(i2);
        this.f10117b = this.f10116a;
    }

    public final int read() {
        if (this.f10116a == 0) {
            return -1;
        }
        int read = this.in.read();
        if (read != -1) {
            this.f10116a--;
        }
        return read;
    }

    public final synchronized void reset() {
        if (!this.in.markSupported()) {
            throw new IOException("Mark not supported");
        } else if (this.f10117b != -1) {
            this.in.reset();
            this.f10116a = this.f10117b;
        } else {
            throw new IOException("Mark not set");
        }
    }

    public final long skip(long j2) {
        long skip = this.in.skip(Math.min(j2, this.f10116a));
        this.f10116a -= skip;
        return skip;
    }

    public final int read(byte[] bArr, int i2, int i3) {
        long j2 = this.f10116a;
        if (j2 == 0) {
            return -1;
        }
        int read = this.in.read(bArr, i2, (int) Math.min((long) i3, j2));
        if (read != -1) {
            this.f10116a -= (long) read;
        }
        return read;
    }
}
