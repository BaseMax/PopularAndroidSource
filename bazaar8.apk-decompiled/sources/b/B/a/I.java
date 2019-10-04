package b.b.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import b.i.b.b;
import java.util.Calendar;

/* compiled from: TwilightManager */
public class I {

    /* renamed from: a  reason: collision with root package name */
    public static I f1700a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f1701b;

    /* renamed from: c  reason: collision with root package name */
    public final LocationManager f1702c;

    /* renamed from: d  reason: collision with root package name */
    public final a f1703d = new a();

    /* compiled from: TwilightManager */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f1704a;

        /* renamed from: b  reason: collision with root package name */
        public long f1705b;

        /* renamed from: c  reason: collision with root package name */
        public long f1706c;

        /* renamed from: d  reason: collision with root package name */
        public long f1707d;

        /* renamed from: e  reason: collision with root package name */
        public long f1708e;

        /* renamed from: f  reason: collision with root package name */
        public long f1709f;
    }

    public I(Context context, LocationManager locationManager) {
        this.f1701b = context;
        this.f1702c = locationManager;
    }

    public static I a(Context context) {
        if (f1700a == null) {
            Context applicationContext = context.getApplicationContext();
            f1700a = new I(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f1700a;
    }

    public boolean b() {
        a aVar = this.f1703d;
        if (c()) {
            return aVar.f1704a;
        }
        Location a2 = a();
        if (a2 != null) {
            a(a2);
            return aVar.f1704a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i2 = Calendar.getInstance().get(11);
        return i2 < 6 || i2 >= 22;
    }

    public final boolean c() {
        return this.f1703d.f1709f > System.currentTimeMillis();
    }

    @SuppressLint({"MissingPermission"})
    public final Location a() {
        Location location = null;
        Location a2 = b.a(this.f1701b, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? a("network") : null;
        if (b.a(this.f1701b, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location = a("gps");
        }
        if (location == null || a2 == null) {
            if (location != null) {
                a2 = location;
            }
            return a2;
        }
        if (location.getTime() > a2.getTime()) {
            a2 = location;
        }
        return a2;
    }

    public final Location a(String str) {
        try {
            if (this.f1702c.isProviderEnabled(str)) {
                return this.f1702c.getLastKnownLocation(str);
            }
        } catch (Exception e2) {
            Log.d("TwilightManager", "Failed to get last known location", e2);
        }
        return null;
    }

    public final void a(Location location) {
        long j2;
        a aVar = this.f1703d;
        long currentTimeMillis = System.currentTimeMillis();
        H a2 = H.a();
        H h2 = a2;
        h2.a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j3 = a2.f1697b;
        h2.a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = a2.f1699d == 1;
        long j4 = a2.f1698c;
        long j5 = j3;
        long j6 = a2.f1697b;
        long j7 = j4;
        boolean z2 = z;
        a2.a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j8 = a2.f1698c;
        if (j7 == -1 || j6 == -1) {
            j2 = 43200000 + currentTimeMillis;
        } else {
            j2 = (currentTimeMillis > j6 ? 0 + j8 : currentTimeMillis > j7 ? 0 + j6 : 0 + j7) + 60000;
        }
        aVar.f1704a = z2;
        aVar.f1705b = j5;
        aVar.f1706c = j7;
        aVar.f1707d = j6;
        aVar.f1708e = j8;
        aVar.f1709f = j2;
    }
}
