package c.f.a;

import com.crashlytics.android.core.CodedOutputStream;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MarkableInputStream */
public final class y extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    public final InputStream f12020a;

    /* renamed from: b  reason: collision with root package name */
    public long f12021b;

    /* renamed from: c  reason: collision with root package name */
    public long f12022c;

    /* renamed from: d  reason: collision with root package name */
    public long f12023d;

    /* renamed from: e  reason: collision with root package name */
    public long f12024e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f12025f;

    /* renamed from: g  reason: collision with root package name */
    public int f12026g;

    public y(InputStream inputStream) {
        this(inputStream, CodedOutputStream.DEFAULT_BUFFER_SIZE);
    }

    public void a(boolean z) {
        this.f12025f = z;
    }

    public int available() {
        return this.f12020a.available();
    }

    public long b(int i2) {
        long j2 = this.f12021b + ((long) i2);
        if (this.f12023d < j2) {
            i(j2);
        }
        return this.f12021b;
    }

    public void close() {
        this.f12020a.close();
    }

    public void h(long j2) {
        if (this.f12021b > this.f12023d || j2 < this.f12022c) {
            throw new IOException("Cannot reset");
        }
        this.f12020a.reset();
        a(this.f12022c, j2);
        this.f12021b = j2;
    }

    public final void i(long j2) {
        try {
            if (this.f12022c >= this.f12021b || this.f12021b > this.f12023d) {
                this.f12022c = this.f12021b;
                this.f12020a.mark((int) (j2 - this.f12021b));
            } else {
                this.f12020a.reset();
                this.f12020a.mark((int) (j2 - this.f12022c));
                a(this.f12022c, this.f12021b);
            }
            this.f12023d = j2;
        } catch (IOException e2) {
            throw new IllegalStateException("Unable to mark: " + e2);
        }
    }

    public void mark(int i2) {
        this.f12024e = b(i2);
    }

    public boolean markSupported() {
        return this.f12020a.markSupported();
    }

    public int read() {
        if (!this.f12025f) {
            long j2 = this.f12023d;
            if (this.f12021b + 1 > j2) {
                i(j2 + ((long) this.f12026g));
            }
        }
        int read = this.f12020a.read();
        if (read != -1) {
            this.f12021b++;
        }
        return read;
    }

    public void reset() {
        h(this.f12024e);
    }

    public long skip(long j2) {
        if (!this.f12025f) {
            long j3 = this.f12021b;
            if (j3 + j2 > this.f12023d) {
                i(j3 + j2 + ((long) this.f12026g));
            }
        }
        long skip = this.f12020a.skip(j2);
        this.f12021b += skip;
        return skip;
    }

    public y(InputStream inputStream, int i2) {
        this(inputStream, i2, 1024);
    }

    public final void a(long j2, long j3) {
        while (j2 < j3) {
            long skip = this.f12020a.skip(j3 - j2);
            if (skip == 0) {
                if (read() != -1) {
                    skip = 1;
                } else {
                    return;
                }
            }
            j2 += skip;
        }
    }

    public y(InputStream inputStream, int i2, int i3) {
        this.f12024e = -1;
        this.f12025f = true;
        this.f12026g = -1;
        this.f12020a = !inputStream.markSupported() ? new BufferedInputStream(inputStream, i2) : inputStream;
        this.f12026g = i3;
    }

    public int read(byte[] bArr) {
        if (!this.f12025f) {
            long j2 = this.f12021b;
            if (((long) bArr.length) + j2 > this.f12023d) {
                i(j2 + ((long) bArr.length) + ((long) this.f12026g));
            }
        }
        int read = this.f12020a.read(bArr);
        if (read != -1) {
            this.f12021b += (long) read;
        }
        return read;
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (!this.f12025f) {
            long j2 = this.f12021b;
            long j3 = (long) i3;
            if (j2 + j3 > this.f12023d) {
                i(j2 + j3 + ((long) this.f12026g));
            }
        }
        int read = this.f12020a.read(bArr, i2, i3);
        if (read != -1) {
            this.f12021b += (long) read;
        }
        return read;
    }
}
