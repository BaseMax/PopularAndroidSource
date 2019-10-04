package b;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

public final class k implements u {

    /* renamed from: a  reason: collision with root package name */
    private final d f144a;

    /* renamed from: b  reason: collision with root package name */
    private final Deflater f145b;
    private final g c;
    private boolean d;
    private final CRC32 e = new CRC32();

    public k(u uVar) {
        if (uVar != null) {
            this.f145b = new Deflater(-1, true);
            this.f144a = n.buffer(uVar);
            this.c = new g(this.f144a, this.f145b);
            c buffer = this.f144a.buffer();
            buffer.writeShort(8075);
            buffer.writeByte(8);
            buffer.writeByte(0);
            buffer.writeInt(0);
            buffer.writeByte(0);
            buffer.writeByte(0);
            return;
        }
        throw new IllegalArgumentException("sink == null");
    }

    public final void write(c cVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (j != 0) {
            a(cVar, j);
            this.c.write(cVar, j);
        }
    }

    public final void flush() throws IOException {
        this.c.flush();
    }

    public final w timeout() {
        return this.f144a.timeout();
    }

    public final void close() throws IOException {
        if (!this.d) {
            Throwable th = null;
            try {
                this.c.a();
                this.f144a.writeIntLe((int) this.e.getValue());
                this.f144a.writeIntLe((int) this.f145b.getBytesRead());
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.f145b.end();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            try {
                this.f144a.close();
            } catch (Throwable th4) {
                if (th == null) {
                    th = th4;
                }
            }
            this.d = true;
            if (th != null) {
                x.sneakyRethrow(th);
            }
        }
    }

    public final Deflater deflater() {
        return this.f145b;
    }

    private void a(c cVar, long j) {
        r rVar = cVar.f134a;
        while (j > 0) {
            int min = (int) Math.min(j, (long) (rVar.c - rVar.f163b));
            this.e.update(rVar.f162a, rVar.f163b, min);
            j -= (long) min;
            rVar = rVar.f;
        }
    }
}
