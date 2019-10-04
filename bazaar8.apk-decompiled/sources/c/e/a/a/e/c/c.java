package c.e.a.a.e.c;

import c.e.a.a.e.h;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.ParserException;
import java.util.ArrayDeque;

/* compiled from: DefaultEbmlReader */
public final class c implements e {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f7661a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    public final ArrayDeque<a> f7662b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    public final i f7663c = new i();

    /* renamed from: d  reason: collision with root package name */
    public d f7664d;

    /* renamed from: e  reason: collision with root package name */
    public int f7665e;

    /* renamed from: f  reason: collision with root package name */
    public int f7666f;

    /* renamed from: g  reason: collision with root package name */
    public long f7667g;

    /* compiled from: DefaultEbmlReader */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f7668a;

        /* renamed from: b  reason: collision with root package name */
        public final long f7669b;

        public a(int i2, long j2) {
            this.f7668a = i2;
            this.f7669b = j2;
        }
    }

    public void a(d dVar) {
        this.f7664d = dVar;
    }

    public final long b(h hVar) {
        hVar.b();
        while (true) {
            hVar.a(this.f7661a, 0, 4);
            int a2 = i.a(this.f7661a[0]);
            if (a2 != -1 && a2 <= 4) {
                int a3 = (int) i.a(this.f7661a, a2, false);
                if (this.f7664d.c(a3)) {
                    hVar.c(a2);
                    return (long) a3;
                }
            }
            hVar.c(1);
        }
    }

    public final String c(h hVar, int i2) {
        if (i2 == 0) {
            return "";
        }
        byte[] bArr = new byte[i2];
        hVar.readFully(bArr, 0, i2);
        while (i2 > 0 && bArr[i2 - 1] == 0) {
            i2--;
        }
        return new String(bArr, 0, i2);
    }

    public void reset() {
        this.f7665e = 0;
        this.f7662b.clear();
        this.f7663c.b();
    }

    public boolean a(h hVar) {
        C0737e.a(this.f7664d);
        while (true) {
            if (this.f7662b.isEmpty() || hVar.getPosition() < this.f7662b.peek().f7669b) {
                if (this.f7665e == 0) {
                    long a2 = this.f7663c.a(hVar, true, false, 4);
                    if (a2 == -2) {
                        a2 = b(hVar);
                    }
                    if (a2 == -1) {
                        return false;
                    }
                    this.f7666f = (int) a2;
                    this.f7665e = 1;
                }
                if (this.f7665e == 1) {
                    this.f7667g = this.f7663c.a(hVar, false, true, 8);
                    this.f7665e = 2;
                }
                int b2 = this.f7664d.b(this.f7666f);
                if (b2 == 0) {
                    hVar.c((int) this.f7667g);
                    this.f7665e = 0;
                } else if (b2 == 1) {
                    long position = hVar.getPosition();
                    this.f7662b.push(new a(this.f7666f, this.f7667g + position));
                    this.f7664d.a(this.f7666f, position, this.f7667g);
                    this.f7665e = 0;
                    return true;
                } else if (b2 == 2) {
                    long j2 = this.f7667g;
                    if (j2 <= 8) {
                        this.f7664d.a(this.f7666f, b(hVar, (int) j2));
                        this.f7665e = 0;
                        return true;
                    }
                    throw new ParserException("Invalid integer size: " + this.f7667g);
                } else if (b2 == 3) {
                    long j3 = this.f7667g;
                    if (j3 <= 2147483647L) {
                        this.f7664d.a(this.f7666f, c(hVar, (int) j3));
                        this.f7665e = 0;
                        return true;
                    }
                    throw new ParserException("String element size: " + this.f7667g);
                } else if (b2 == 4) {
                    this.f7664d.a(this.f7666f, (int) this.f7667g, hVar);
                    this.f7665e = 0;
                    return true;
                } else if (b2 == 5) {
                    long j4 = this.f7667g;
                    if (j4 == 4 || j4 == 8) {
                        this.f7664d.a(this.f7666f, a(hVar, (int) this.f7667g));
                        this.f7665e = 0;
                        return true;
                    }
                    throw new ParserException("Invalid float size: " + this.f7667g);
                } else {
                    throw new ParserException("Invalid element type " + b2);
                }
            } else {
                this.f7664d.a(this.f7662b.pop().f7668a);
                return true;
            }
        }
    }

    public final long b(h hVar, int i2) {
        hVar.readFully(this.f7661a, 0, i2);
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 = (j2 << 8) | ((long) (this.f7661a[i3] & 255));
        }
        return j2;
    }

    public final double a(h hVar, int i2) {
        long b2 = b(hVar, i2);
        if (i2 == 4) {
            return (double) Float.intBitsToFloat((int) b2);
        }
        return Double.longBitsToDouble(b2);
    }
}
