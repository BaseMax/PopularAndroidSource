package b.H.a.c;

import android.os.Build;
import androidx.work.BackoffPolicy;
import androidx.work.WorkInfo;
import b.H.d;
import b.H.f;
import java.util.List;
import java.util.UUID;

/* compiled from: WorkSpec */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1464a = f.a("WorkSpec");

    /* renamed from: b  reason: collision with root package name */
    public static final b.c.a.c.a<List<b>, List<WorkInfo>> f1465b = new n();

    /* renamed from: c  reason: collision with root package name */
    public String f1466c;

    /* renamed from: d  reason: collision with root package name */
    public WorkInfo.State f1467d = WorkInfo.State.ENQUEUED;

    /* renamed from: e  reason: collision with root package name */
    public String f1468e;

    /* renamed from: f  reason: collision with root package name */
    public String f1469f;

    /* renamed from: g  reason: collision with root package name */
    public d f1470g;

    /* renamed from: h  reason: collision with root package name */
    public d f1471h;

    /* renamed from: i  reason: collision with root package name */
    public long f1472i;

    /* renamed from: j  reason: collision with root package name */
    public long f1473j;

    /* renamed from: k  reason: collision with root package name */
    public long f1474k;

    /* renamed from: l  reason: collision with root package name */
    public b.H.b f1475l;
    public int m;
    public BackoffPolicy n;
    public long o;
    public long p;
    public long q;
    public long r;

    /* compiled from: WorkSpec */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f1476a;

        /* renamed from: b  reason: collision with root package name */
        public WorkInfo.State f1477b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f1477b != aVar.f1477b) {
                return false;
            }
            return this.f1476a.equals(aVar.f1476a);
        }

        public int hashCode() {
            return (this.f1476a.hashCode() * 31) + this.f1477b.hashCode();
        }
    }

    /* compiled from: WorkSpec */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f1478a;

        /* renamed from: b  reason: collision with root package name */
        public WorkInfo.State f1479b;

        /* renamed from: c  reason: collision with root package name */
        public d f1480c;

        /* renamed from: d  reason: collision with root package name */
        public List<String> f1481d;

        public WorkInfo a() {
            return new WorkInfo(UUID.fromString(this.f1478a), this.f1479b, this.f1480c, this.f1481d);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            String str = this.f1478a;
            if (str == null ? bVar.f1478a != null : !str.equals(bVar.f1478a)) {
                return false;
            }
            if (this.f1479b != bVar.f1479b) {
                return false;
            }
            d dVar = this.f1480c;
            if (dVar == null ? bVar.f1480c != null : !dVar.equals(bVar.f1480c)) {
                return false;
            }
            List<String> list = this.f1481d;
            if (list != null) {
                z = list.equals(bVar.f1481d);
            } else if (bVar.f1481d != null) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f1478a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            WorkInfo.State state = this.f1479b;
            int hashCode2 = (hashCode + (state != null ? state.hashCode() : 0)) * 31;
            d dVar = this.f1480c;
            int hashCode3 = (hashCode2 + (dVar != null ? dVar.hashCode() : 0)) * 31;
            List<String> list = this.f1481d;
            if (list != null) {
                i2 = list.hashCode();
            }
            return hashCode3 + i2;
        }
    }

    public o(String str, String str2) {
        d dVar = d.f1640b;
        this.f1470g = dVar;
        this.f1471h = dVar;
        this.f1475l = b.H.b.f1619a;
        this.n = BackoffPolicy.EXPONENTIAL;
        this.o = 30000;
        this.r = -1;
        this.f1466c = str;
        this.f1468e = str2;
    }

    public void a(long j2) {
        if (j2 > 18000000) {
            f.a().e(f1464a, "Backoff delay duration exceeds maximum value", new Throwable[0]);
            j2 = 18000000;
        }
        if (j2 < 10000) {
            f.a().e(f1464a, "Backoff delay duration less than minimum value", new Throwable[0]);
            j2 = 10000;
        }
        this.o = j2;
    }

    public void b(long j2) {
        if (j2 < 900000) {
            f.a().e(f1464a, String.format("Interval duration lesser than minimum allowed value; Changed to %s", new Object[]{900000L}), new Throwable[0]);
            j2 = 900000;
        }
        a(j2, j2);
    }

    public boolean c() {
        return this.f1467d == WorkInfo.State.ENQUEUED && this.m > 0;
    }

    public boolean d() {
        return this.f1473j != 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f1472i != oVar.f1472i || this.f1473j != oVar.f1473j || this.f1474k != oVar.f1474k || this.m != oVar.m || this.o != oVar.o || this.p != oVar.p || this.q != oVar.q || this.r != oVar.r || !this.f1466c.equals(oVar.f1466c) || this.f1467d != oVar.f1467d || !this.f1468e.equals(oVar.f1468e)) {
            return false;
        }
        String str = this.f1469f;
        if (str == null ? oVar.f1469f != null : !str.equals(oVar.f1469f)) {
            return false;
        }
        if (!this.f1470g.equals(oVar.f1470g) || !this.f1471h.equals(oVar.f1471h) || !this.f1475l.equals(oVar.f1475l)) {
            return false;
        }
        if (this.n != oVar.n) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = ((((this.f1466c.hashCode() * 31) + this.f1467d.hashCode()) * 31) + this.f1468e.hashCode()) * 31;
        String str = this.f1469f;
        int hashCode2 = str != null ? str.hashCode() : 0;
        long j2 = this.f1472i;
        long j3 = this.f1473j;
        long j4 = this.f1474k;
        long j5 = this.o;
        long j6 = this.p;
        long j7 = this.q;
        long j8 = this.r;
        return ((((((((((((((((((((((((hashCode + hashCode2) * 31) + this.f1470g.hashCode()) * 31) + this.f1471h.hashCode()) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + this.f1475l.hashCode()) * 31) + this.m) * 31) + this.n.hashCode()) * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + ((int) (j6 ^ (j6 >>> 32)))) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31) + ((int) (j8 ^ (j8 >>> 32)));
    }

    public String toString() {
        return "{WorkSpec: " + this.f1466c + "}";
    }

    public void a(long j2, long j3) {
        if (j2 < 900000) {
            f.a().e(f1464a, String.format("Interval duration lesser than minimum allowed value; Changed to %s", new Object[]{900000L}), new Throwable[0]);
            j2 = 900000;
        }
        if (j3 < 300000) {
            f.a().e(f1464a, String.format("Flex duration lesser than minimum allowed value; Changed to %s", new Object[]{300000L}), new Throwable[0]);
            j3 = 300000;
        }
        if (j3 > j2) {
            f.a().e(f1464a, String.format("Flex duration greater than interval duration; Changed to %s", new Object[]{Long.valueOf(j2)}), new Throwable[0]);
            j3 = j2;
        }
        this.f1473j = j2;
        this.f1474k = j3;
    }

    public boolean b() {
        return !b.H.b.f1619a.equals(this.f1475l);
    }

    public o(o oVar) {
        d dVar = d.f1640b;
        this.f1470g = dVar;
        this.f1471h = dVar;
        this.f1475l = b.H.b.f1619a;
        this.n = BackoffPolicy.EXPONENTIAL;
        this.o = 30000;
        this.r = -1;
        this.f1466c = oVar.f1466c;
        this.f1468e = oVar.f1468e;
        this.f1467d = oVar.f1467d;
        this.f1469f = oVar.f1469f;
        this.f1470g = new d(oVar.f1470g);
        this.f1471h = new d(oVar.f1471h);
        this.f1472i = oVar.f1472i;
        this.f1473j = oVar.f1473j;
        this.f1474k = oVar.f1474k;
        this.f1475l = new b.H.b(oVar.f1475l);
        this.m = oVar.m;
        this.n = oVar.n;
        this.o = oVar.o;
        this.p = oVar.p;
        this.q = oVar.q;
        this.r = oVar.r;
    }

    public long a() {
        long j2;
        boolean z = false;
        if (c()) {
            if (this.n == BackoffPolicy.LINEAR) {
                z = true;
            }
            if (z) {
                j2 = this.o * ((long) this.m);
            } else {
                j2 = (long) Math.scalb((float) this.o, this.m - 1);
            }
            return this.p + Math.min(18000000, j2);
        } else if (!d()) {
            return this.p + this.f1472i;
        } else {
            if (Build.VERSION.SDK_INT > 22) {
                return (this.p + this.f1473j) - this.f1474k;
            }
            if (this.f1474k != this.f1473j) {
                z = true;
            }
            if (!z) {
                return this.p + this.f1473j;
            }
            long j3 = this.p == 0 ? -1 * this.f1474k : 0;
            long j4 = this.p;
            if (j4 == 0) {
                j4 = System.currentTimeMillis();
            }
            return j4 + this.f1473j + j3;
        }
    }
}
