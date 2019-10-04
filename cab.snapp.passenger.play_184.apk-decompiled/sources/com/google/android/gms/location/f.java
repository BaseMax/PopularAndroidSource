package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.internal.zzcfs;
import java.util.ArrayList;
import java.util.List;

public class f {

    /* renamed from: a  reason: collision with root package name */
    private final int f3647a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3648b;
    private final List<c> c;
    private final Location d;

    private f(int i, int i2, List<c> list, Location location) {
        this.f3647a = i;
        this.f3648b = i2;
        this.c = list;
        this.d = location;
    }

    public static f fromIntent(Intent intent) {
        ArrayList arrayList = null;
        if (intent == null) {
            return null;
        }
        int i = -1;
        int intExtra = intent.getIntExtra("gms_error_code", -1);
        int intExtra2 = intent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
        if (intExtra2 != -1 && (intExtra2 == 1 || intExtra2 == 2 || intExtra2 == 4)) {
            i = intExtra2;
        }
        ArrayList arrayList2 = (ArrayList) intent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
        if (arrayList2 != null) {
            arrayList = new ArrayList(arrayList2.size());
            ArrayList arrayList3 = arrayList2;
            int size = arrayList3.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList3.get(i2);
                i2++;
                arrayList.add(zzcfs.zzp((byte[]) obj));
            }
        }
        return new f(intExtra, i, arrayList, (Location) intent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
    }

    public int getErrorCode() {
        return this.f3647a;
    }

    public int getGeofenceTransition() {
        return this.f3648b;
    }

    public List<c> getTriggeringGeofences() {
        return this.c;
    }

    public Location getTriggeringLocation() {
        return this.d;
    }

    public boolean hasError() {
        return this.f3647a != -1;
    }
}
