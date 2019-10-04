package c.b.a.i;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ContentLengthInputStream */
public final class c extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    public final long f4426a;

    /* renamed from: b  reason: collision with root package name */
    public int f4427b;

    public c(InputStream inputStream, long j2) {
        super(inputStream);
        this.f4426a = j2;
    }

    public static InputStream a(InputStream inputStream, long j2) {
        return new c(inputStream, j2);
    }

    public synchronized int available() {
        return (int) Math.max(this.f4426a - ((long) this.f4427b), (long) this.in.available());
    }

    public final int b(int i2) {
        if (i2 >= 0) {
            this.f4427b += i2;
        } else if (this.f4426a - ((long) this.f4427b) > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f4426a + ", but read: " + this.f4427b);
        }
        return i2;
    }

    public synchronized int read() {
        int read;
        read = super.read();
        b(read >= 0 ? 1 : -1);
        return read;
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public synchronized int read(byte[] bArr, int i2, int i3) {
        int read;
        read = super.read(bArr, i2, i3);
        b(read);
        return read;
    }
}
