package c.e.a.a.e.h;

import c.e.a.a.e.a;
import c.e.a.a.e.h;
import c.e.a.a.o.F;
import c.e.a.a.o.I;
import c.e.a.a.o.v;

/* compiled from: TsBinarySearchSeeker */
public final class G extends c.e.a.a.e.a {

    /* compiled from: TsBinarySearchSeeker */
    private static final class a implements a.g {

        /* renamed from: a  reason: collision with root package name */
        public final F f8033a;

        /* renamed from: b  reason: collision with root package name */
        public final v f8034b = new v();

        /* renamed from: c  reason: collision with root package name */
        public final int f8035c;

        public a(int i2, F f2) {
            this.f8035c = i2;
            this.f8033a = f2;
        }

        public a.f a(h hVar, long j2, a.c cVar) {
            long position = hVar.getPosition();
            int min = (int) Math.min(112800, hVar.getLength() - position);
            this.f8034b.c(min);
            hVar.a(this.f8034b.f9634a, 0, min);
            return a(this.f8034b, j2, position);
        }

        public final a.f a(v vVar, long j2, long j3) {
            v vVar2 = vVar;
            long j4 = j3;
            int d2 = vVar.d();
            long j5 = -1;
            long j6 = -1;
            long j7 = -9223372036854775807L;
            while (vVar.a() >= 188) {
                int a2 = K.a(vVar2.f9634a, vVar.c(), d2);
                int i2 = a2 + 188;
                if (i2 > d2) {
                    break;
                }
                long a3 = K.a(vVar2, a2, this.f8035c);
                if (a3 != -9223372036854775807L) {
                    long b2 = this.f8033a.b(a3);
                    if (b2 > j2) {
                        if (j7 == -9223372036854775807L) {
                            return a.f.a(b2, j4);
                        }
                        return a.f.a(j4 + j6);
                    } else if (100000 + b2 > j2) {
                        return a.f.a(j4 + ((long) a2));
                    } else {
                        j6 = (long) a2;
                        j7 = b2;
                    }
                }
                vVar2.e(i2);
                j5 = (long) i2;
            }
            if (j7 != -9223372036854775807L) {
                return a.f.b(j7, j4 + j5);
            }
            return a.f.f7621a;
        }

        public void a() {
            this.f8034b.a(I.f9570f);
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public G(c.e.a.a.o.F r17, long r18, long r20, int r22) {
        /*
            r16 = this;
            c.e.a.a.e.a$b r1 = new c.e.a.a.e.a$b
            r1.<init>()
            c.e.a.a.e.h.G$a r2 = new c.e.a.a.e.h.G$a
            r0 = r17
            r3 = r22
            r2.<init>(r3, r0)
            r3 = 1
            long r7 = r18 + r3
            r5 = 0
            r9 = 0
            r13 = 188(0xbc, double:9.3E-322)
            r15 = 940(0x3ac, float:1.317E-42)
            r0 = r16
            r3 = r18
            r11 = r20
            r0.<init>(r1, r2, r3, r5, r7, r9, r11, r13, r15)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.h.G.<init>(c.e.a.a.o.F, long, long, int):void");
    }
}
