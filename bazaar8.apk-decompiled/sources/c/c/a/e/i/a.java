package c.c.a.e.i;

import c.c.a.e.d.b.I;
import com.farsitel.bazaar.data.entity.Location;
import com.farsitel.bazaar.data.entity.Place;
import h.f.b.f;
import h.f.b.g;
import h.f.b.j;
import h.f.b.k;
import h.g.c;
import h.i.i;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* compiled from: PlaceLocalStorageDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f5522a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final C0082a f5523b = new C0082a(null);

    /* renamed from: c  reason: collision with root package name */
    public final b f5524c = new b("geo_lat", Float.valueOf(g.f14571f.a()));

    /* renamed from: d  reason: collision with root package name */
    public final b f5525d = new b("geo_lng", Float.valueOf(g.f14571f.a()));

    /* renamed from: e  reason: collision with root package name */
    public final b f5526e = new b("geo_city", Place.NA);

    /* renamed from: f  reason: collision with root package name */
    public final b f5527f = new b("geo_province", Place.NA);

    /* renamed from: g  reason: collision with root package name */
    public final b f5528g = new b("geo_country", Place.NA);

    /* renamed from: h  reason: collision with root package name */
    public final b f5529h = new b("geo_country_code", Place.NA);

    /* renamed from: i  reason: collision with root package name */
    public final b f5530i = new b("geo_last_update", Long.MIN_VALUE);

    /* renamed from: j  reason: collision with root package name */
    public final I f5531j;

    /* renamed from: c.c.a.e.i.a$a  reason: collision with other inner class name */
    /* compiled from: PlaceLocalStorageDataSource.kt */
    private static final class C0082a {
        public C0082a() {
        }

        public /* synthetic */ C0082a(f fVar) {
            this();
        }
    }

    /* compiled from: PlaceLocalStorageDataSource.kt */
    public static final class b<T> implements c<a, T> {

        /* renamed from: a  reason: collision with root package name */
        public T f5532a = this.f5535d;

        /* renamed from: b  reason: collision with root package name */
        public boolean f5533b;

        /* renamed from: c  reason: collision with root package name */
        public final String f5534c;

        /* renamed from: d  reason: collision with root package name */
        public final T f5535d;

        public b(String str, T t) {
            j.b(str, "key");
            this.f5534c = str;
            this.f5535d = t;
        }

        public T a(a aVar, i<?> iVar) {
            j.b(aVar, "thisRef");
            j.b(iVar, "property");
            if (!this.f5533b) {
                this.f5533b = true;
                this.f5532a = aVar.f5531j.a(this.f5534c, this.f5535d);
            }
            return this.f5532a;
        }

        public void a(a aVar, i<?> iVar, T t) {
            j.b(aVar, "thisRef");
            j.b(iVar, "property");
            I.a(aVar.f5531j, this.f5534c, t, false, 4, null);
            this.f5532a = t;
        }
    }

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(k.a(a.class), "lat", "getLat()F");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl);
        MutablePropertyReference1Impl mutablePropertyReference1Impl2 = new MutablePropertyReference1Impl(k.a(a.class), "long", "getLong()F");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl2);
        MutablePropertyReference1Impl mutablePropertyReference1Impl3 = new MutablePropertyReference1Impl(k.a(a.class), "city", "getCity()Ljava/lang/String;");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl3);
        MutablePropertyReference1Impl mutablePropertyReference1Impl4 = new MutablePropertyReference1Impl(k.a(a.class), "province", "getProvince()Ljava/lang/String;");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl4);
        MutablePropertyReference1Impl mutablePropertyReference1Impl5 = new MutablePropertyReference1Impl(k.a(a.class), "country", "getCountry()Ljava/lang/String;");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl5);
        MutablePropertyReference1Impl mutablePropertyReference1Impl6 = new MutablePropertyReference1Impl(k.a(a.class), "countryCode", "getCountryCode()Ljava/lang/String;");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl6);
        MutablePropertyReference1Impl mutablePropertyReference1Impl7 = new MutablePropertyReference1Impl(k.a(a.class), "lastUpdate", "getLastUpdate()J");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl7);
        f5522a = new i[]{mutablePropertyReference1Impl, mutablePropertyReference1Impl2, mutablePropertyReference1Impl3, mutablePropertyReference1Impl4, mutablePropertyReference1Impl5, mutablePropertyReference1Impl6, mutablePropertyReference1Impl7};
    }

    public a(I i2) {
        j.b(i2, "sharedDataSource");
        this.f5531j = i2;
    }

    public final void a(float f2) {
        this.f5524c.a(this, (i<?>) f5522a[0], Float.valueOf(f2));
    }

    public final void a(long j2) {
        this.f5530i.a(this, (i<?>) f5522a[6], Long.valueOf(j2));
    }

    public final void a(String str) {
        this.f5526e.a(this, (i<?>) f5522a[2], str);
    }

    public final String b() {
        return e();
    }

    public final void b(float f2) {
        this.f5525d.a(this, (i<?>) f5522a[1], Float.valueOf(f2));
    }

    public final void b(String str) {
        this.f5528g.a(this, (i<?>) f5522a[4], str);
    }

    public final Place c() {
        if (g() == Long.MIN_VALUE) {
            return null;
        }
        Place place = new Place(d(), j(), e(), f(), new Location((double) h(), (double) i()), g());
        return place;
    }

    public final void c(String str) {
        this.f5529h.a(this, (i<?>) f5522a[5], str);
    }

    public final String d() {
        return (String) this.f5526e.a(this, (i<?>) f5522a[2]);
    }

    public final void d(String str) {
        this.f5527f.a(this, (i<?>) f5522a[3], str);
    }

    public final String e() {
        return (String) this.f5528g.a(this, (i<?>) f5522a[4]);
    }

    public final String f() {
        return (String) this.f5529h.a(this, (i<?>) f5522a[5]);
    }

    public final long g() {
        return ((Number) this.f5530i.a(this, (i<?>) f5522a[6])).longValue();
    }

    public final float h() {
        return ((Number) this.f5524c.a(this, (i<?>) f5522a[0])).floatValue();
    }

    public final float i() {
        return ((Number) this.f5525d.a(this, (i<?>) f5522a[1])).floatValue();
    }

    public final String j() {
        return (String) this.f5527f.a(this, (i<?>) f5522a[3]);
    }

    public final String k() {
        return j();
    }

    public final void a(Place place) {
        j.b(place, "place");
        a((float) place.getLocation().getLatitude());
        b((float) place.getLocation().getLongitude());
        a(place.getCity());
        d(place.getProvince());
        b(place.getCountry());
        c(place.getCountryCode());
        a(place.getUpdatedAt());
    }

    public final String a() {
        return d();
    }
}
