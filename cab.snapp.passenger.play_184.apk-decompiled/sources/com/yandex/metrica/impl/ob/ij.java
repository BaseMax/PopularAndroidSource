package com.yandex.metrica.impl.ob;

import android.location.Location;
import android.text.TextUtils;
import com.google.android.gms.measurement.AppMeasurement;
import com.yandex.metrica.impl.bt;
import com.yandex.metrica.impl.ob.hq;
import org.a.b;
import org.a.c;

class ij {
    public static String a(ic icVar) {
        try {
            c cVar = new c();
            cVar.putOpt("collection_mode", icVar.f6149a.toString());
            cVar.put("lat", icVar.c().getLatitude());
            cVar.put("lon", icVar.c().getLongitude());
            cVar.putOpt(AppMeasurement.d.TIMESTAMP, Long.valueOf(icVar.c().getTime()));
            cVar.putOpt("receive_timestamp", Long.valueOf(icVar.b()));
            cVar.putOpt("precision", icVar.c().hasAccuracy() ? Float.valueOf(icVar.c().getAccuracy()) : null);
            cVar.putOpt("direction", icVar.c().hasBearing() ? Float.valueOf(icVar.c().getBearing()) : null);
            cVar.putOpt("speed", icVar.c().hasSpeed() ? Float.valueOf(icVar.c().getSpeed()) : null);
            cVar.putOpt("altitude", icVar.c().hasAltitude() ? Double.valueOf(icVar.c().getAltitude()) : null);
            cVar.putOpt("provider", bt.c(icVar.c().getProvider(), null));
            return cVar.toString();
        } catch (b unused) {
            return null;
        }
    }

    public static ic a(long j, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                c cVar = new c(str);
                long optLong = cVar.optLong("receive_timestamp", 0);
                hq.a a2 = hq.a.a(cVar.optString("collection_mode"));
                Location location = new Location(cVar.optString("provider", null));
                location.setLongitude(cVar.optDouble("lon", 0.0d));
                location.setLatitude(cVar.optDouble("lat", 0.0d));
                location.setTime(cVar.optLong(AppMeasurement.d.TIMESTAMP, 0));
                location.setAccuracy((float) cVar.optDouble("precision", 0.0d));
                location.setBearing((float) cVar.optDouble("direction", 0.0d));
                location.setSpeed((float) cVar.optDouble("speed", 0.0d));
                location.setAltitude(cVar.optDouble("altitude", 0.0d));
                ic icVar = new ic(a2, optLong, location, Long.valueOf(j));
                return icVar;
            } catch (b unused) {
            }
        }
        return null;
    }

    public static hv b(long j, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            hv hvVar = new hv();
            try {
                hvVar.a(Long.valueOf(j));
                c cVar = new c(str);
                hvVar.a(cVar.optLong(AppMeasurement.d.TIMESTAMP, 0));
                hvVar.b(cVar.optJSONArray("cell_info"));
                hvVar.a(cVar.optJSONArray("wifi_info"));
            } catch (b unused) {
            }
            return hvVar;
        } catch (b unused2) {
            return null;
        }
    }

    public static String a(hv hvVar) {
        try {
            c cVar = new c();
            cVar.put(AppMeasurement.d.TIMESTAMP, hvVar.b());
            cVar.putOpt("wifi_info", hvVar.c());
            cVar.putOpt("cell_info", hvVar.d());
            return cVar.toString();
        } catch (b unused) {
            return null;
        }
    }
}
