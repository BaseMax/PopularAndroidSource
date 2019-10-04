package b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class l implements v {

    /* renamed from: a  reason: collision with root package name */
    private int f146a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final e f147b;
    private final Inflater c;
    private final m d;
    private final CRC32 e = new CRC32();

    public l(v vVar) {
        if (vVar != null) {
            this.c = new Inflater(true);
            this.f147b = n.buffer(vVar);
            this.d = new m(this.f147b, this.c);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    public final long read(c cVar, long j) throws IOException {
        long j2;
        c cVar2 = cVar;
        long j3 = j;
        if (j3 < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (j3 == 0) {
            return 0;
        } else {
            if (this.f146a == 0) {
                this.f147b.require(10);
                byte b2 = this.f147b.buffer().getByte(3);
                boolean z = ((b2 >> 1) & 1) == 1;
                if (z) {
                    a(this.f147b.buffer(), 0, 10);
                }
                a("ID1ID2", 8075, (int) this.f147b.readShort());
                this.f147b.skip(8);
                if (((b2 >> 2) & 1) == 1) {
                    this.f147b.require(2);
                    if (z) {
                        a(this.f147b.buffer(), 0, 2);
                    }
                    long readShortLe = (long) this.f147b.buffer().readShortLe();
                    this.f147b.require(readShortLe);
                    if (z) {
                        j2 = readShortLe;
                        a(this.f147b.buffer(), 0, readShortLe);
                    } else {
                        j2 = readShortLe;
                    }
                    this.f147b.skip(j2);
                }
                if (((b2 >> 3) & 1) == 1) {
                    long indexOf = this.f147b.indexOf((byte) 0);
                    if (indexOf != -1) {
                        if (z) {
                            a(this.f147b.buffer(), 0, indexOf + 1);
                        }
                        this.f147b.skip(indexOf + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (((b2 >> 4) & 1) == 1) {
                    long indexOf2 = this.f147b.indexOf((byte) 0);
                    if (indexOf2 != -1) {
                        if (z) {
                            a(this.f147b.buffer(), 0, indexOf2 + 1);
                        }
                        this.f147b.skip(indexOf2 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (z) {
                    a("FHCRC", (int) this.f147b.readShortLe(), (int) (short) ((int) this.e.getValue()));
                    this.e.reset();
                }
                this.f146a = 1;
            }
            if (this.f146a == 1) {
                long j4 = cVar2.f135b;
                long read = this.d.read(cVar2, j3);
                if (read != -1) {
                    a(cVar, j4, read);
                    return read;
                }
                this.f146a = 2;
            }
            if (this.f146a == 2) {
                a("CRC", this.f147b.readIntLe(), (int) this.e.getValue());
                a("ISIZE", this.f147b.readIntLe(), (int) this.c.getBytesWritten());
                this.f146a = 3;
                if (!this.f147b.exhausted()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1;
        }
    }

    public final w timeout() {
        return this.f147b.timeout();
    }

    public final void close() throws IOException {
        this.d.close();
    }

    private void a(c cVar, long j, long j2) {
        r rVar = cVar.f134a;
        while (j >= ((long) (rVar.c - rVar.f163b))) {
            j -= (long) (rVar.c - rVar.f163b);
            rVar = rVar.f;
        }
        while (j2 > 0) {
            int i = (int) (((long) rVar.f163b) + j);
            int min = (int) Math.min((long) (rVar.c - i), j2);
            this.e.update(rVar.f162a, i, min);
            j2 -= (long) min;
            rVar = rVar.f;
            j = 0;
        }
    }

    private static void a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}));
        }
    }
}
