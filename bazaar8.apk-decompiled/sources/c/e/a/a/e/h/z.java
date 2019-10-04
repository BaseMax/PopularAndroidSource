package c.e.a.a.e.h;

import c.e.a.a.e.a;
import c.e.a.a.e.h;
import c.e.a.a.o.F;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.AnswersRetryFilesSender;

/* compiled from: PsBinarySearchSeeker */
public final class z extends c.e.a.a.e.a {

    /* compiled from: PsBinarySearchSeeker */
    private static final class a implements a.g {

        /* renamed from: a  reason: collision with root package name */
        public final F f8285a;

        /* renamed from: b  reason: collision with root package name */
        public final v f8286b;

        public a.f a(h hVar, long j2, a.c cVar) {
            long position = hVar.getPosition();
            int min = (int) Math.min(20000, hVar.getLength() - position);
            this.f8286b.c(min);
            hVar.a(this.f8286b.f9634a, 0, min);
            return a(this.f8286b, j2, position);
        }

        public a(F f2) {
            this.f8285a = f2;
            this.f8286b = new v();
        }

        public void a() {
            this.f8286b.a(I.f9570f);
        }

        public final a.f a(v vVar, long j2, long j3) {
            int i2 = -1;
            long j4 = -9223372036854775807L;
            int i3 = -1;
            while (vVar.a() >= 4) {
                if (z.b(vVar.f9634a, vVar.c()) != 442) {
                    vVar.f(1);
                } else {
                    vVar.f(4);
                    long c2 = A.c(vVar);
                    if (c2 != -9223372036854775807L) {
                        long b2 = this.f8285a.b(c2);
                        if (b2 > j2) {
                            if (j4 == -9223372036854775807L) {
                                return a.f.a(b2, j3);
                            }
                            return a.f.a(j3 + ((long) i3));
                        } else if (100000 + b2 > j2) {
                            return a.f.a(j3 + ((long) vVar.c()));
                        } else {
                            i3 = vVar.c();
                            j4 = b2;
                        }
                    }
                    a(vVar);
                    i2 = vVar.c();
                }
            }
            if (j4 != -9223372036854775807L) {
                return a.f.b(j4, j3 + ((long) i2));
            }
            return a.f.f7621a;
        }

        public static void a(v vVar) {
            int d2 = vVar.d();
            if (vVar.a() < 10) {
                vVar.e(d2);
                return;
            }
            vVar.f(9);
            int u = vVar.u() & 7;
            if (vVar.a() < u) {
                vVar.e(d2);
                return;
            }
            vVar.f(u);
            if (vVar.a() < 4) {
                vVar.e(d2);
                return;
            }
            if (z.b(vVar.f9634a, vVar.c()) == 443) {
                vVar.f(4);
                int A = vVar.A();
                if (vVar.a() < A) {
                    vVar.e(d2);
                    return;
                }
                vVar.f(A);
            }
            while (vVar.a() >= 4) {
                int a2 = z.b(vVar.f9634a, vVar.c());
                if (a2 == 442 || a2 == 441 || (a2 >>> 8) != 1) {
                    break;
                }
                vVar.f(4);
                if (vVar.a() < 2) {
                    vVar.e(d2);
                    return;
                } else {
                    vVar.e(Math.min(vVar.d(), vVar.c() + vVar.A()));
                }
            }
        }
    }

    public z(F f2, long j2, long j3) {
        super(new a.b(), new a(f2), j2, 0, j2 + 1, 0, j3, 188, AnswersRetryFilesSender.BACKOFF_MS);
    }

    public static int b(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }
}
