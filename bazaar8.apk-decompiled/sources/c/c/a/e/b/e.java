package c.c.a.e.b;

import c.c.a.e.d.u.a;
import com.farsitel.bazaar.data.entity.DeviceInfo;
import com.farsitel.bazaar.data.entity.Language;
import com.farsitel.bazaar.data.entity.Location;
import com.farsitel.bazaar.data.entity.RequestProperties;
import h.f.b.j;

/* compiled from: RequestPropertiesDataSource.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final c f4891a;

    /* renamed from: b  reason: collision with root package name */
    public final a f4892b;

    /* renamed from: c  reason: collision with root package name */
    public final c.c.a.e.i.a f4893c;

    /* renamed from: d  reason: collision with root package name */
    public final c.c.a.e.e.a f4894d;

    public e(c cVar, a aVar, c.c.a.e.i.a aVar2, c.c.a.e.e.a aVar3) {
        j.b(cVar, "deviceInfoDataSource");
        j.b(aVar, "settingsRepository");
        j.b(aVar2, "placeDataSource");
        j.b(aVar3, "locationManager");
        this.f4891a = cVar;
        this.f4892b = aVar;
        this.f4893c = aVar2;
        this.f4894d = aVar3;
    }

    public final String a() {
        return this.f4891a.i() == Language.PERSIAN ? "fa" : "en";
    }

    public final RequestProperties b() {
        Double d2 = null;
        Location a2 = this.f4892b.x() ? this.f4894d.a() : null;
        String a3 = c.a(this.f4891a, null, 1, null);
        String b2 = this.f4891a.b();
        long c2 = this.f4891a.c();
        int value = this.f4891a.i().getValue();
        boolean u = this.f4892b.u();
        DeviceInfo deviceInfo = new DeviceInfo(this.f4891a.o(), this.f4891a.k(), this.f4891a.n(), "", "", "", this.f4891a.q(), this.f4891a.p(), "", this.f4893c.a(), this.f4893c.k(), this.f4893c.b(), this.f4891a.e(), this.f4891a.f(), this.f4891a.s(), this.f4891a.g(), this.f4891a.j(), this.f4892b.f(), this.f4892b.g(), this.f4891a.a());
        Double valueOf = a2 != null ? Double.valueOf(a2.getLatitude()) : null;
        if (a2 != null) {
            d2 = Double.valueOf(a2.getLongitude());
        }
        RequestProperties requestProperties = new RequestProperties(a3, b2, c2, value, deviceInfo, u, valueOf, d2);
        return requestProperties;
    }
}
