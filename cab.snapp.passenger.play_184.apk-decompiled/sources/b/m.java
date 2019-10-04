package b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class m implements v {

    /* renamed from: a  reason: collision with root package name */
    private final e f148a;

    /* renamed from: b  reason: collision with root package name */
    private final Inflater f149b;
    private int c;
    private boolean d;

    public m(v vVar, Inflater inflater) {
        this(n.buffer(vVar), inflater);
    }

    m(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater != null) {
            this.f148a = eVar;
            this.f149b = inflater;
        } else {
            throw new IllegalArgumentException("inflater == null");
        }
    }

    public final long read(c cVar, long j) throws IOException {
        r a2;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (this.d) {
            throw new IllegalStateException("closed");
        } else if (j == 0) {
            return 0;
        } else {
            while (true) {
                boolean refill = refill();
                try {
                    a2 = cVar.a(1);
                    int inflate = this.f149b.inflate(a2.f162a, a2.c, (int) Math.min(j, (long) (8192 - a2.c)));
                    if (inflate > 0) {
                        a2.c += inflate;
                        long j2 = (long) inflate;
                        cVar.f135b += j2;
                        return j2;
                    } else if (this.f149b.finished()) {
                        break;
                    } else if (this.f149b.needsDictionary()) {
                        break;
                    } else if (refill) {
                        throw new EOFException("source exhausted prematurely");
                    }
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            }
            a();
            if (a2.f163b == a2.c) {
                cVar.f134a = a2.pop();
                s.a(a2);
            }
            return -1;
        }
    }

    public final boolean refill() throws IOException {
        if (!this.f149b.needsInput()) {
            return false;
        }
        a();
        if (this.f149b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        } else if (this.f148a.exhausted()) {
            return true;
        } else {
            r rVar = this.f148a.buffer().f134a;
            this.c = rVar.c - rVar.f163b;
            this.f149b.setInput(rVar.f162a, rVar.f163b, this.c);
            return false;
        }
    }

    private void a() throws IOException {
        int i = this.c;
        if (i != 0) {
            int remaining = i - this.f149b.getRemaining();
            this.c -= remaining;
            this.f148a.skip((long) remaining);
        }
    }

    public final w timeout() {
        return this.f148a.timeout();
    }

    public final void close() throws IOException {
        if (!this.d) {
            this.f149b.end();
            this.d = true;
            this.f148a.close();
        }
    }
}
