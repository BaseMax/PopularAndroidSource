package c.c.a.e.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.LocationManager;
import c.c.a.e.f.g;
import com.farsitel.bazaar.data.entity.Location;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: LocationManager.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Context f5431a;

    public a(Context context) {
        j.b(context, "context");
        this.f5431a = context;
    }

    public final Location a() {
        Location a2 = a("network");
        return a2 != null ? a2 : a("gps");
    }

    @SuppressLint({"ServiceCast"})
    public final LocationManager b() {
        Object systemService = this.f5431a.getSystemService("location");
        if (systemService != null) {
            return (LocationManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.location.LocationManager");
    }

    @SuppressLint({"MissingPermission"})
    public final Location a(String str) {
        try {
            if (!b().isProviderEnabled(str)) {
                return null;
            }
            android.location.Location lastKnownLocation = b().getLastKnownLocation(str);
            j.a((Object) lastKnownLocation, "locationManager.getLastKnownLocation(provider)");
            return g.a(lastKnownLocation);
        } catch (Exception e2) {
            c.c.a.c.c.a.f4699b.b(e2);
            return null;
        }
    }
}
