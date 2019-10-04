package b.H;

import android.os.Build;
import androidx.work.NetworkType;
import java.util.concurrent.TimeUnit;

/* compiled from: Constraints */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f1619a = new a().a();

    /* renamed from: b  reason: collision with root package name */
    public NetworkType f1620b = NetworkType.NOT_REQUIRED;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1621c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1622d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1623e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1624f;

    /* renamed from: g  reason: collision with root package name */
    public long f1625g = -1;

    /* renamed from: h  reason: collision with root package name */
    public long f1626h = -1;

    /* renamed from: i  reason: collision with root package name */
    public c f1627i = new c();

    /* compiled from: Constraints */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f1628a = false;

        /* renamed from: b  reason: collision with root package name */
        public boolean f1629b = false;

        /* renamed from: c  reason: collision with root package name */
        public NetworkType f1630c = NetworkType.NOT_REQUIRED;

        /* renamed from: d  reason: collision with root package name */
        public boolean f1631d = false;

        /* renamed from: e  reason: collision with root package name */
        public boolean f1632e = false;

        /* renamed from: f  reason: collision with root package name */
        public long f1633f = -1;

        /* renamed from: g  reason: collision with root package name */
        public long f1634g = -1;

        /* renamed from: h  reason: collision with root package name */
        public c f1635h = new c();

        public a a(NetworkType networkType) {
            this.f1630c = networkType;
            return this;
        }

        public a b(boolean z) {
            this.f1628a = z;
            return this;
        }

        public a c(boolean z) {
            this.f1629b = z;
            return this;
        }

        public a d(boolean z) {
            this.f1632e = z;
            return this;
        }

        public a a(boolean z) {
            this.f1631d = z;
            return this;
        }

        public a a(long j2, TimeUnit timeUnit) {
            this.f1634g = timeUnit.toMillis(j2);
            return this;
        }

        public b a() {
            return new b(this);
        }
    }

    public b() {
    }

    public void a(NetworkType networkType) {
        this.f1620b = networkType;
    }

    public NetworkType b() {
        return this.f1620b;
    }

    public void c(boolean z) {
        this.f1622d = z;
    }

    public void d(boolean z) {
        this.f1624f = z;
    }

    public boolean e() {
        return this.f1627i.b() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f1621c == bVar.f1621c && this.f1622d == bVar.f1622d && this.f1623e == bVar.f1623e && this.f1624f == bVar.f1624f && this.f1625g == bVar.f1625g && this.f1626h == bVar.f1626h && this.f1620b == bVar.f1620b) {
            return this.f1627i.equals(bVar.f1627i);
        }
        return false;
    }

    public boolean f() {
        return this.f1623e;
    }

    public boolean g() {
        return this.f1621c;
    }

    public boolean h() {
        return this.f1622d;
    }

    public int hashCode() {
        long j2 = this.f1625g;
        long j3 = this.f1626h;
        return (((((((((((((this.f1620b.hashCode() * 31) + (this.f1621c ? 1 : 0)) * 31) + (this.f1622d ? 1 : 0)) * 31) + (this.f1623e ? 1 : 0)) * 31) + (this.f1624f ? 1 : 0)) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + this.f1627i.hashCode();
    }

    public boolean i() {
        return this.f1624f;
    }

    public void a(boolean z) {
        this.f1623e = z;
    }

    public void b(boolean z) {
        this.f1621c = z;
    }

    public long c() {
        return this.f1625g;
    }

    public long d() {
        return this.f1626h;
    }

    public void a(long j2) {
        this.f1625g = j2;
    }

    public void b(long j2) {
        this.f1626h = j2;
    }

    public void a(c cVar) {
        this.f1627i = cVar;
    }

    public c a() {
        return this.f1627i;
    }

    public b(a aVar) {
        this.f1621c = aVar.f1628a;
        this.f1622d = Build.VERSION.SDK_INT >= 23 && aVar.f1629b;
        this.f1620b = aVar.f1630c;
        this.f1623e = aVar.f1631d;
        this.f1624f = aVar.f1632e;
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1627i = aVar.f1635h;
            this.f1625g = aVar.f1633f;
            this.f1626h = aVar.f1634g;
        }
    }

    public b(b bVar) {
        this.f1621c = bVar.f1621c;
        this.f1622d = bVar.f1622d;
        this.f1620b = bVar.f1620b;
        this.f1623e = bVar.f1623e;
        this.f1624f = bVar.f1624f;
        this.f1627i = bVar.f1627i;
    }
}
