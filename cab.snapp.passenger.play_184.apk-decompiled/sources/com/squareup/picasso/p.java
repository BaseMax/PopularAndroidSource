package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

final class p extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f5289a;

    /* renamed from: b  reason: collision with root package name */
    private long f5290b;
    private long c;
    private long d;
    private long e;
    private boolean f;
    private int g;

    p(InputStream inputStream) {
        this(inputStream, (byte) 0);
    }

    private p(InputStream inputStream, byte b2) {
        this(inputStream, 0);
    }

    private p(InputStream inputStream, char c2) {
        this.e = -1;
        this.f = true;
        this.g = -1;
        this.f5289a = !inputStream.markSupported() ? new BufferedInputStream(inputStream, 4096) : inputStream;
        this.g = 1024;
    }

    public final void mark(int i) {
        this.e = savePosition(i);
    }

    public final long savePosition(int i) {
        long j = this.f5290b + ((long) i);
        if (this.d < j) {
            a(j);
        }
        return this.f5290b;
    }

    public final void allowMarksToExpire(boolean z) {
        this.f = z;
    }

    private void a(long j) {
        try {
            if (this.c >= this.f5290b || this.f5290b > this.d) {
                this.c = this.f5290b;
                this.f5289a.mark((int) (j - this.f5290b));
            } else {
                this.f5289a.reset();
                this.f5289a.mark((int) (j - this.c));
                a(this.c, this.f5290b);
            }
            this.d = j;
        } catch (IOException e2) {
            throw new IllegalStateException("Unable to mark: ".concat(String.valueOf(e2)));
        }
    }

    public final void reset() throws IOException {
        reset(this.e);
    }

    public final void reset(long j) throws IOException {
        if (this.f5290b > this.d || j < this.c) {
            throw new IOException("Cannot reset");
        }
        this.f5289a.reset();
        a(this.c, j);
        this.f5290b = j;
    }

    private void a(long j, long j2) throws IOException {
        while (j < j2) {
            long skip = this.f5289a.skip(j2 - j);
            if (skip == 0) {
                if (read() != -1) {
                    skip = 1;
                } else {
                    return;
                }
            }
            j += skip;
        }
    }

    public final int read() throws IOException {
        if (!this.f) {
            long j = this.d;
            if (this.f5290b + 1 > j) {
                a(j + ((long) this.g));
            }
        }
        int read = this.f5289a.read();
        if (read != -1) {
            this.f5290b++;
        }
        return read;
    }

    public final int read(byte[] bArr) throws IOException {
        if (!this.f) {
            long j = this.f5290b;
            if (((long) bArr.length) + j > this.d) {
                a(j + ((long) bArr.length) + ((long) this.g));
            }
        }
        int read = this.f5289a.read(bArr);
        if (read != -1) {
            this.f5290b += (long) read;
        }
        return read;
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f) {
            long j = this.f5290b;
            long j2 = (long) i2;
            if (j + j2 > this.d) {
                a(j + j2 + ((long) this.g));
            }
        }
        int read = this.f5289a.read(bArr, i, i2);
        if (read != -1) {
            this.f5290b += (long) read;
        }
        return read;
    }

    public final long skip(long j) throws IOException {
        if (!this.f) {
            long j2 = this.f5290b;
            if (j2 + j > this.d) {
                a(j2 + j + ((long) this.g));
            }
        }
        long skip = this.f5289a.skip(j);
        this.f5290b += skip;
        return skip;
    }

    public final int available() throws IOException {
        return this.f5289a.available();
    }

    public final void close() throws IOException {
        this.f5289a.close();
    }

    public final boolean markSupported() {
        return this.f5289a.markSupported();
    }
}
