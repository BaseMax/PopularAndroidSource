package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class zzbgt extends zzbfm {
    public static final Parcelable.Creator<zzbgt> CREATOR = new fj();

    /* renamed from: a  reason: collision with root package name */
    private int f3577a;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, Map<String, zzbgo<?, ?>>> f3578b;
    private final ArrayList<zzbgu> c = null;
    private final String d;

    zzbgt(int i, ArrayList<zzbgu> arrayList, String str) {
        this.f3577a = i;
        HashMap<String, Map<String, zzbgo<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzbgu zzbgu = arrayList.get(i2);
            hashMap.put(zzbgu.f3579a, zzbgu.a());
        }
        this.f3578b = hashMap;
        this.d = (String) ap.checkNotNull(str);
        a();
    }

    private final void a() {
        for (String str : this.f3578b.keySet()) {
            Map map = this.f3578b.get(str);
            for (String str2 : map.keySet()) {
                ((zzbgo) map.get(str2)).zza(this);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String next : this.f3578b.keySet()) {
            sb.append(next);
            sb.append(":\n");
            Map map = this.f3578b.get(next);
            for (String str : map.keySet()) {
                sb.append("  ");
                sb.append(str);
                sb.append(": ");
                sb.append(map.get(str));
            }
        }
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3577a);
        ArrayList arrayList = new ArrayList();
        for (String next : this.f3578b.keySet()) {
            arrayList.add(new zzbgu(next, this.f3578b.get(next)));
        }
        el.zzc(parcel, 2, arrayList, false);
        el.zza(parcel, 3, this.d, false);
        el.zzai(parcel, zze);
    }

    public final String zzalz() {
        return this.d;
    }

    public final Map<String, zzbgo<?, ?>> zzgq(String str) {
        return this.f3578b.get(str);
    }
}
