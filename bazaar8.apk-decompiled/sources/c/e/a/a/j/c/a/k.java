package c.e.a.a.j.c.a;

import c.e.a.a.o.I;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;
import java.util.List;

/* compiled from: SegmentBase */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    public final h f8578a;

    /* renamed from: b  reason: collision with root package name */
    public final long f8579b;

    /* renamed from: c  reason: collision with root package name */
    public final long f8580c;

    /* compiled from: SegmentBase */
    public static abstract class a extends k {

        /* renamed from: d  reason: collision with root package name */
        public final long f8581d;

        /* renamed from: e  reason: collision with root package name */
        public final long f8582e;

        /* renamed from: f  reason: collision with root package name */
        public final List<d> f8583f;

        public a(h hVar, long j2, long j3, long j4, long j5, List<d> list) {
            super(hVar, j2, j3);
            this.f8581d = j4;
            this.f8582e = j5;
            this.f8583f = list;
        }

        public abstract int a(long j2);

        public final long a(long j2, long j3) {
            List<d> list = this.f8583f;
            if (list != null) {
                return (list.get((int) (j2 - this.f8581d)).f8588b * RetryManager.NANOSECONDS_IN_MS) / this.f8579b;
            }
            int a2 = a(j3);
            return (a2 == -1 || j2 != (b() + ((long) a2)) - 1) ? (this.f8582e * RetryManager.NANOSECONDS_IN_MS) / this.f8579b : j3 - b(j2);
        }

        public abstract h a(j jVar, long j2);

        public long b(long j2, long j3) {
            long b2 = b();
            long a2 = (long) a(j3);
            if (a2 == 0) {
                return b2;
            }
            if (this.f8583f == null) {
                long j4 = (j2 / ((this.f8582e * RetryManager.NANOSECONDS_IN_MS) / this.f8579b)) + this.f8581d;
                if (j4 >= b2) {
                    if (a2 == -1) {
                        b2 = j4;
                    } else {
                        b2 = Math.min(j4, (b2 + a2) - 1);
                    }
                }
                return b2;
            }
            long j5 = (a2 + b2) - 1;
            long j6 = b2;
            while (j6 <= j5) {
                long j7 = ((j5 - j6) / 2) + j6;
                long b3 = b(j7);
                if (b3 < j2) {
                    j6 = j7 + 1;
                } else if (b3 <= j2) {
                    return j7;
                } else {
                    j5 = j7 - 1;
                }
            }
            if (j6 != b2) {
                j6 = j5;
            }
            return j6;
        }

        public boolean c() {
            return this.f8583f != null;
        }

        public final long b(long j2) {
            long j3;
            List<d> list = this.f8583f;
            if (list != null) {
                j3 = list.get((int) (j2 - this.f8581d)).f8587a - this.f8580c;
            } else {
                j3 = (j2 - this.f8581d) * this.f8582e;
            }
            return I.c(j3, RetryManager.NANOSECONDS_IN_MS, this.f8579b);
        }

        public long b() {
            return this.f8581d;
        }
    }

    /* compiled from: SegmentBase */
    public static class b extends a {

        /* renamed from: g  reason: collision with root package name */
        public final List<h> f8584g;

        public b(h hVar, long j2, long j3, long j4, long j5, List<d> list, List<h> list2) {
            super(hVar, j2, j3, j4, j5, list);
            this.f8584g = list2;
        }

        public h a(j jVar, long j2) {
            return this.f8584g.get((int) (j2 - this.f8581d));
        }

        public boolean c() {
            return true;
        }

        public int a(long j2) {
            return this.f8584g.size();
        }
    }

    /* compiled from: SegmentBase */
    public static class c extends a {

        /* renamed from: g  reason: collision with root package name */
        public final m f8585g;

        /* renamed from: h  reason: collision with root package name */
        public final m f8586h;

        public c(h hVar, long j2, long j3, long j4, long j5, List<d> list, m mVar, m mVar2) {
            super(hVar, j2, j3, j4, j5, list);
            this.f8585g = mVar;
            this.f8586h = mVar2;
        }

        public h a(j jVar) {
            m mVar = this.f8585g;
            if (mVar == null) {
                return k.super.a(jVar);
            }
            Format format = jVar.f8567b;
            h hVar = new h(mVar.a(format.f12506a, 0, format.f12510e, 0), 0, -1);
            return hVar;
        }

        public h a(j jVar, long j2) {
            long j3;
            List<d> list = this.f8583f;
            if (list != null) {
                j3 = list.get((int) (j2 - this.f8581d)).f8587a;
            } else {
                j3 = (j2 - this.f8581d) * this.f8582e;
            }
            long j4 = j3;
            m mVar = this.f8586h;
            Format format = jVar.f8567b;
            h hVar = new h(mVar.a(format.f12506a, j2, format.f12510e, j4), 0, -1);
            return hVar;
        }

        public int a(long j2) {
            List<d> list = this.f8583f;
            if (list != null) {
                return list.size();
            }
            if (j2 != -9223372036854775807L) {
                return (int) I.a(j2, (this.f8582e * RetryManager.NANOSECONDS_IN_MS) / this.f8579b);
            }
            return -1;
        }
    }

    /* compiled from: SegmentBase */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f8587a;

        /* renamed from: b  reason: collision with root package name */
        public final long f8588b;

        public d(long j2, long j3) {
            this.f8587a = j2;
            this.f8588b = j3;
        }
    }

    /* compiled from: SegmentBase */
    public static class e extends k {

        /* renamed from: d  reason: collision with root package name */
        public final long f8589d;

        /* renamed from: e  reason: collision with root package name */
        public final long f8590e;

        public e(h hVar, long j2, long j3, long j4, long j5) {
            super(hVar, j2, j3);
            this.f8589d = j4;
            this.f8590e = j5;
        }

        public h b() {
            long j2 = this.f8590e;
            if (j2 <= 0) {
                return null;
            }
            h hVar = new h(null, this.f8589d, j2);
            return hVar;
        }

        public e() {
            this(null, 1, 0, 0, 0);
        }
    }

    public k(h hVar, long j2, long j3) {
        this.f8578a = hVar;
        this.f8579b = j2;
        this.f8580c = j3;
    }

    public h a(j jVar) {
        return this.f8578a;
    }

    public long a() {
        return I.c(this.f8580c, RetryManager.NANOSECONDS_IN_MS, this.f8579b);
    }
}
