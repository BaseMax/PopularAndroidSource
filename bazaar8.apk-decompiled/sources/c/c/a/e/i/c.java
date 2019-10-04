package c.c.a.e.i;

import c.c.a.e.e.a;
import com.farsitel.bazaar.data.entity.Location;
import com.farsitel.bazaar.data.entity.Place;
import h.f.b.j;

/* compiled from: PlaceRepository.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final c.c.a.e.e.c f5537a;

    /* renamed from: b  reason: collision with root package name */
    public final a f5538b;

    /* renamed from: c  reason: collision with root package name */
    public final a f5539c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5540d;

    public c(c.c.a.e.e.c cVar, a aVar, a aVar2, long j2) {
        j.b(cVar, "reverseGeocoding");
        j.b(aVar, "locationManager");
        j.b(aVar2, "placeDataSource");
        this.f5537a = cVar;
        this.f5538b = aVar;
        this.f5539c = aVar2;
        this.f5540d = j2;
    }

    public final Place a() {
        try {
            Place c2 = this.f5539c.c();
            if (a(c2)) {
                return b();
            }
            return c2;
        } catch (Exception e2) {
            c.c.a.c.c.a.f4699b.b(new Throwable("Unable to find any related Place", e2));
            return null;
        }
    }

    public final Place b() {
        Location a2 = this.f5538b.a();
        if (a2 == null) {
            return null;
        }
        Place a3 = this.f5537a.a(a2);
        this.f5539c.a(a3);
        return a3;
    }

    public final boolean a(Place place) {
        return place == null || System.currentTimeMillis() - place.getUpdatedAt() > this.f5540d;
    }
}
