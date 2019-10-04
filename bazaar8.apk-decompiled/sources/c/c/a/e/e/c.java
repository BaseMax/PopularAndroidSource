package c.c.a.e.e;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import c.c.a.e.f.g;
import com.farsitel.bazaar.data.entity.Location;
import com.farsitel.bazaar.data.entity.Place;
import h.a.u;
import h.f.b.j;
import java.util.List;
import java.util.Locale;

/* compiled from: ReverseGeocoding.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final Geocoder f5433a;

    public c(Context context) {
        j.b(context, "context");
        this.f5433a = new Geocoder(context, Locale.ENGLISH);
    }

    public final Place a(Location location) {
        j.b(location, "location");
        List<Address> fromLocation = this.f5433a.getFromLocation(location.getLatitude(), location.getLongitude(), 1);
        j.a((Object) fromLocation, "geocoder.getFromLocation…e, location.longitude, 1)");
        Address address = (Address) u.g(fromLocation);
        if (address != null) {
            return g.a(address, location);
        }
        throw new IllegalArgumentException(("Null address returned, unable to reverse " + location + " to place").toString());
    }
}
