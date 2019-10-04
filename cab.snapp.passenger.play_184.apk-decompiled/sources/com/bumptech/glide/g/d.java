package com.bumptech.glide.g;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public final class d extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private static final Queue<d> f2072a = k.createQueue(0);

    /* renamed from: b  reason: collision with root package name */
    private InputStream f2073b;
    private IOException c;

    public static d obtain(InputStream inputStream) {
        d poll;
        synchronized (f2072a) {
            poll = f2072a.poll();
        }
        if (poll == null) {
            poll = new d();
        }
        poll.f2073b = inputStream;
        return poll;
    }

    d() {
    }

    public final int available() throws IOException {
        return this.f2073b.available();
    }

    public final void close() throws IOException {
        this.f2073b.close();
    }

    public final void mark(int i) {
        this.f2073b.mark(i);
    }

    public final boolean markSupported() {
        return this.f2073b.markSupported();
    }

    public final int read(byte[] bArr) {
        try {
            return this.f2073b.read(bArr);
        } catch (IOException e) {
            this.c = e;
            return -1;
        }
    }

    public final int read(byte[] bArr, int i, int i2) {
        try {
            return this.f2073b.read(bArr, i, i2);
        } catch (IOException e) {
            this.c = e;
            return -1;
        }
    }

    public final synchronized void reset() throws IOException {
        this.f2073b.reset();
    }

    public final long skip(long j) {
        try {
            return this.f2073b.skip(j);
        } catch (IOException e) {
            this.c = e;
            return 0;
        }
    }

    public final int read() {
        try {
            return this.f2073b.read();
        } catch (IOException e) {
            this.c = e;
            return -1;
        }
    }

    public final IOException getException() {
        return this.c;
    }

    public final void release() {
        this.c = null;
        this.f2073b = null;
        synchronized (f2072a) {
            f2072a.offer(this);
        }
    }
}
