package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashMap;

public final class zzbgj extends zzbfm implements fg<String, Integer> {
    public static final Parcelable.Creator<zzbgj> CREATOR = new fd();

    /* renamed from: a  reason: collision with root package name */
    private int f3571a;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, Integer> f3572b;
    private final SparseArray<String> c;
    private final ArrayList<zzbgk> d;

    public zzbgj() {
        this.f3571a = 1;
        this.f3572b = new HashMap<>();
        this.c = new SparseArray<>();
        this.d = null;
    }

    zzbgj(int i, ArrayList<zzbgk> arrayList) {
        this.f3571a = i;
        this.f3572b = new HashMap<>();
        this.c = new SparseArray<>();
        this.d = null;
        a(arrayList);
    }

    private final void a(ArrayList<zzbgk> arrayList) {
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            zzbgk zzbgk = (zzbgk) obj;
            zzi(zzbgk.f3573a, zzbgk.f3574b);
        }
    }

    public final /* synthetic */ Object convertBack(Object obj) {
        String str = this.c.get(((Integer) obj).intValue());
        return (str != null || !this.f3572b.containsKey("gms_unknown")) ? str : "gms_unknown";
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3571a);
        ArrayList arrayList = new ArrayList();
        for (String next : this.f3572b.keySet()) {
            arrayList.add(new zzbgk(next, this.f3572b.get(next).intValue()));
        }
        el.zzc(parcel, 2, arrayList, false);
        el.zzai(parcel, zze);
    }

    public final zzbgj zzi(String str, int i) {
        this.f3572b.put(str, Integer.valueOf(i));
        this.c.put(i, str);
        return this;
    }
}
