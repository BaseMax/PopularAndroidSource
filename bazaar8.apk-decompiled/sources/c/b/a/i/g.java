package c.b.a.i;

import java.io.FilterInputStream;
import java.io.InputStream;

/* compiled from: MarkEnforcingInputStream */
public class g extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    public int f4436a = Integer.MIN_VALUE;

    public g(InputStream inputStream) {
        super(inputStream);
    }

    public int available() {
        int i2 = this.f4436a;
        if (i2 == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i2, super.available());
    }

    public final long h(long j2) {
        int i2 = this.f4436a;
        if (i2 == 0) {
            return -1;
        }
        if (i2 != Integer.MIN_VALUE && j2 > ((long) i2)) {
            j2 = (long) i2;
        }
        return j2;
    }

    public final void i(long j2) {
        int i2 = this.f4436a;
        if (i2 != Integer.MIN_VALUE && j2 != -1) {
            this.f4436a = (int) (((long) i2) - j2);
        }
    }

    public synchronized void mark(int i2) {
        super.mark(i2);
        this.f4436a = i2;
    }

    public int read() {
        if (h(1) == -1) {
            return -1;
        }
        int read = super.read();
        i(1);
        return read;
    }

    public synchronized void reset() {
        super.reset();
        this.f4436a = Integer.MIN_VALUE;
    }

    public long skip(long j2) {
        long h2 = h(j2);
        if (h2 == -1) {
            return 0;
        }
        long skip = super.skip(h2);
        i(skip);
        return skip;
    }

    public int read(byte[] bArr, int i2, int i3) {
        int h2 = (int) h((long) i3);
        if (h2 == -1) {
            return -1;
        }
        int read = super.read(bArr, i2, h2);
        i((long) read);
        return read;
    }
}
