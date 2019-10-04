package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Handler;
import android.os.Looper;
import com.yandex.metrica.impl.au;
import java.util.concurrent.TimeUnit;

class ib {

    /* renamed from: a  reason: collision with root package name */
    static final long f6147a = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private Context f6148b;
    private Looper c;
    private LocationManager d;
    private LocationListener e;

    static {
        TimeUnit.SECONDS.toMillis(10);
    }

    public ib(Context context, Looper looper, LocationManager locationManager, LocationListener locationListener) {
        this.f6148b = context;
        this.c = looper;
        this.d = locationManager;
        this.e = locationListener;
        new Handler(this.c);
    }

    public void a() {
        if (au.a(this.f6148b, "android.permission.ACCESS_FINE_LOCATION")) {
            long j = f6147a;
            LocationListener locationListener = this.e;
            Looper looper = this.c;
            LocationManager locationManager = this.d;
            if (locationManager != null) {
                try {
                    locationManager.requestLocationUpdates("passive", j, 0.0f, locationListener, looper);
                } catch (Exception unused) {
                }
            }
        }
    }

    public void b() {
        LocationManager locationManager = this.d;
        if (locationManager != null) {
            try {
                locationManager.removeUpdates(this.e);
            } catch (Exception unused) {
            }
        }
    }
}
