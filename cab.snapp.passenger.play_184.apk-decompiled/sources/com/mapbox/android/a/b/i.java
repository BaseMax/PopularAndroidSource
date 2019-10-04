package com.mapbox.android.a.b;

import android.location.Location;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final List<Location> f4894a;

    private i(List<Location> list) {
        this.f4894a = Collections.unmodifiableList(list);
    }

    public static i create(Location location) {
        k.a(location, "location can't be null");
        ArrayList arrayList = new ArrayList();
        arrayList.add(location);
        return new i(arrayList);
    }

    public static i create(List<Location> list) {
        k.a(list, "locations can't be null");
        return new i(list);
    }

    public final Location getLastLocation() {
        if (this.f4894a.isEmpty()) {
            return null;
        }
        return this.f4894a.get(0);
    }

    public final List<Location> getLocations() {
        return Collections.unmodifiableList(this.f4894a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003a A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x001b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.mapbox.android.a.b.i extractResult(android.content.Intent r3) {
        /*
            java.lang.String r0 = "com.google.android.gms.location.LocationResult"
            boolean r0 = com.mapbox.android.a.b.k.a(r0)
            r1 = 0
            if (r0 == 0) goto L_0x0018
            com.google.android.gms.location.LocationResult r0 = com.google.android.gms.location.LocationResult.extractResult(r3)
            if (r0 == 0) goto L_0x0018
            java.util.List r0 = r0.getLocations()
            com.mapbox.android.a.b.i r0 = create((java.util.List<android.location.Location>) r0)
            goto L_0x0019
        L_0x0018:
            r0 = r1
        L_0x0019:
            if (r0 != 0) goto L_0x003a
            java.lang.String r0 = "location"
            if (r3 == 0) goto L_0x0027
            boolean r2 = r3.hasExtra(r0)
            if (r2 == 0) goto L_0x0027
            r2 = 1
            goto L_0x0028
        L_0x0027:
            r2 = 0
        L_0x0028:
            if (r2 != 0) goto L_0x002b
            return r1
        L_0x002b:
            android.os.Bundle r3 = r3.getExtras()
            android.os.Parcelable r3 = r3.getParcelable(r0)
            android.location.Location r3 = (android.location.Location) r3
            com.mapbox.android.a.b.i r3 = create((android.location.Location) r3)
            return r3
        L_0x003a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.a.b.i.extractResult(android.content.Intent):com.mapbox.android.a.b.i");
    }
}
