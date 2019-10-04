package b;

import java.io.IOException;
import java.util.zip.Deflater;

public final class g implements u {

    /* renamed from: a  reason: collision with root package name */
    private final d f141a;

    /* renamed from: b  reason: collision with root package name */
    private final Deflater f142b;
    private boolean c;

    public g(u uVar, Deflater deflater) {
        this(n.buffer(uVar), deflater);
    }

    g(d dVar, Deflater deflater) {
        if (dVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (deflater != null) {
            this.f141a = dVar;
            this.f142b = deflater;
        } else {
            throw new IllegalArgumentException("inflater == null");
        }
    }

    public final void write(c cVar, long j) throws IOException {
        x.checkOffsetAndCount(cVar.f135b, 0, j);
        while (j > 0) {
            r rVar = cVar.f134a;
            int min = (int) Math.min(j, (long) (rVar.c - rVar.f163b));
            this.f142b.setInput(rVar.f162a, rVar.f163b, min);
            a(false);
            long j2 = (long) min;
            cVar.f135b -= j2;
            rVar.f163b += min;
            if (rVar.f163b == rVar.c) {
                cVar.f134a = rVar.pop();
                s.a(rVar);
            }
            j -= j2;
        }
    }

    private void a(boolean z) throws IOException {
        r a2;
        int i;
        c buffer = this.f141a.buffer();
        while (true) {
            a2 = buffer.a(1);
            if (z) {
                i = this.f142b.deflate(a2.f162a, a2.c, 8192 - a2.c, 2);
            } else {
                i = this.f142b.deflate(a2.f162a, a2.c, 8192 - a2.c);
            }
            if (i > 0) {
                a2.c += i;
                buffer.f135b += (long) i;
                this.f141a.emitCompleteSegments();
            } else if (this.f142b.needsInput()) {
                break;
            }
        }
        if (a2.f163b == a2.c) {
            buffer.f134a = a2.pop();
            s.a(a2);
        }
    }

    public final void flush() throws IOException {
        a(true);
        this.f141a.flush();
    }

    /* access modifiers changed from: package-private */
    public final void a() throws IOException {
        this.f142b.finish();
        a(false);
    }

    public final void close() throws IOException {
        if (!this.c) {
            Throwable th = null;
            try {
                a();
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.f142b.end();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            try {
                this.f141a.close();
            } catch (Throwable th4) {
                if (th == null) {
                    th = th4;
                }
            }
            this.c = true;
            if (th != null) {
                x.sneakyRethrow(th);
            }
        }
    }

    public final w timeout() {
        return this.f141a.timeout();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f141a + ")";
    }
}
