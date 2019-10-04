package k;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* compiled from: GzipSource */
public final class m implements z {

    /* renamed from: a  reason: collision with root package name */
    public int f15745a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final i f15746b;

    /* renamed from: c  reason: collision with root package name */
    public final Inflater f15747c;

    /* renamed from: d  reason: collision with root package name */
    public final n f15748d;

    /* renamed from: e  reason: collision with root package name */
    public final CRC32 f15749e = new CRC32();

    public m(z zVar) {
        if (zVar != null) {
            this.f15747c = new Inflater(true);
            this.f15746b = s.a(zVar);
            this.f15748d = new n(this.f15746b, this.f15747c);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    public final void a(g gVar, long j2, long j3) {
        w wVar = gVar.f15740b;
        while (true) {
            int i2 = wVar.f15769c;
            int i3 = wVar.f15768b;
            if (j2 < ((long) (i2 - i3))) {
                break;
            }
            j2 -= (long) (i2 - i3);
            wVar = wVar.f15772f;
        }
        while (j3 > 0) {
            int i4 = (int) (((long) wVar.f15768b) + j2);
            int min = (int) Math.min((long) (wVar.f15769c - i4), j3);
            this.f15749e.update(wVar.f15767a, i4, min);
            j3 -= (long) min;
            wVar = wVar.f15772f;
            j2 = 0;
        }
    }

    public long b(g gVar, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        } else if (j2 == 0) {
            return 0;
        } else {
            if (this.f15745a == 0) {
                e();
                this.f15745a = 1;
            }
            if (this.f15745a == 1) {
                long j3 = gVar.f15741c;
                long b2 = this.f15748d.b(gVar, j2);
                if (b2 != -1) {
                    a(gVar, j3, b2);
                    return b2;
                }
                this.f15745a = 2;
            }
            if (this.f15745a == 2) {
                l();
                this.f15745a = 3;
                if (!this.f15746b.d()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1;
        }
    }

    public void close() {
        this.f15748d.close();
    }

    public final void e() {
        this.f15746b.f(10);
        byte h2 = this.f15746b.a().h(3);
        boolean z = ((h2 >> 1) & 1) == 1;
        if (z) {
            a(this.f15746b.a(), 0, 10);
        }
        a("ID1ID2", 8075, (int) this.f15746b.readShort());
        this.f15746b.skip(8);
        if (((h2 >> 2) & 1) == 1) {
            this.f15746b.f(2);
            if (z) {
                a(this.f15746b.a(), 0, 2);
            }
            long i2 = (long) this.f15746b.a().i();
            this.f15746b.f(i2);
            if (z) {
                a(this.f15746b.a(), 0, i2);
            }
            this.f15746b.skip(i2);
        }
        if (((h2 >> 3) & 1) == 1) {
            long a2 = this.f15746b.a((byte) 0);
            if (a2 != -1) {
                if (z) {
                    a(this.f15746b.a(), 0, a2 + 1);
                }
                this.f15746b.skip(a2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((h2 >> 4) & 1) == 1) {
            long a3 = this.f15746b.a((byte) 0);
            if (a3 != -1) {
                if (z) {
                    a(this.f15746b.a(), 0, a3 + 1);
                }
                this.f15746b.skip(a3 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z) {
            a("FHCRC", (int) this.f15746b.i(), (int) (short) ((int) this.f15749e.getValue()));
            this.f15749e.reset();
        }
    }

    public final void l() {
        a("CRC", this.f15746b.h(), (int) this.f15749e.getValue());
        a("ISIZE", this.f15746b.h(), (int) this.f15747c.getBytesWritten());
    }

    public final void a(String str, int i2, int i3) {
        if (i3 != i2) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", new Object[]{str, Integer.valueOf(i3), Integer.valueOf(i2)}));
        }
    }

    public B b() {
        return this.f15746b.b();
    }
}
