package c.b.a.i;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* compiled from: ExceptionCatchingInputStream */
public class d extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    public static final Queue<d> f4428a = k.a(0);

    /* renamed from: b  reason: collision with root package name */
    public InputStream f4429b;

    /* renamed from: c  reason: collision with root package name */
    public IOException f4430c;

    public static d a(InputStream inputStream) {
        d poll;
        synchronized (f4428a) {
            poll = f4428a.poll();
        }
        if (poll == null) {
            poll = new d();
        }
        poll.b(inputStream);
        return poll;
    }

    public int available() {
        return this.f4429b.available();
    }

    public void b(InputStream inputStream) {
        this.f4429b = inputStream;
    }

    public void close() {
        this.f4429b.close();
    }

    public void mark(int i2) {
        this.f4429b.mark(i2);
    }

    public boolean markSupported() {
        return this.f4429b.markSupported();
    }

    public int read(byte[] bArr) {
        try {
            return this.f4429b.read(bArr);
        } catch (IOException e2) {
            this.f4430c = e2;
            return -1;
        }
    }

    public synchronized void reset() {
        this.f4429b.reset();
    }

    public IOException s() {
        return this.f4430c;
    }

    public long skip(long j2) {
        try {
            return this.f4429b.skip(j2);
        } catch (IOException e2) {
            this.f4430c = e2;
            return 0;
        }
    }

    public void t() {
        this.f4430c = null;
        this.f4429b = null;
        synchronized (f4428a) {
            f4428a.offer(this);
        }
    }

    public int read(byte[] bArr, int i2, int i3) {
        try {
            return this.f4429b.read(bArr, i2, i3);
        } catch (IOException e2) {
            this.f4430c = e2;
            return -1;
        }
    }

    public int read() {
        try {
            return this.f4429b.read();
        } catch (IOException e2) {
            this.f4430c = e2;
            return -1;
        }
    }
}
