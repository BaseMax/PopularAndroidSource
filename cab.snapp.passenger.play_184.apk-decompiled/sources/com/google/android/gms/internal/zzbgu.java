package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class zzbgu extends zzbfm {
    public static final Parcelable.Creator<zzbgu> CREATOR = new fk();

    /* renamed from: a  reason: collision with root package name */
    final String f3579a;

    /* renamed from: b  reason: collision with root package name */
    private int f3580b;
    private ArrayList<zzbgv> c;

    zzbgu(int i, String str, ArrayList<zzbgv> arrayList) {
        this.f3580b = i;
        this.f3579a = str;
        this.c = arrayList;
    }

    zzbgu(String str, Map<String, zzbgo<?, ?>> map) {
        ArrayList<zzbgv> arrayList;
        this.f3580b = 1;
        this.f3579a = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList<>();
            for (String next : map.keySet()) {
                arrayList.add(new zzbgv(next, map.get(next)));
            }
        }
        this.c = arrayList;
    }

    /* access modifiers changed from: package-private */
    public final HashMap<String, zzbgo<?, ?>> a() {
        HashMap<String, zzbgo<?, ?>> hashMap = new HashMap<>();
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            zzbgv zzbgv = this.c.get(i);
            hashMap.put(zzbgv.f3581a, zzbgv.f3582b);
        }
        return hashMap;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3580b);
        el.zza(parcel, 2, this.f3579a, false);
        el.zzc(parcel, 3, this.c, false);
        el.zzai(parcel, zze);
    }
}
