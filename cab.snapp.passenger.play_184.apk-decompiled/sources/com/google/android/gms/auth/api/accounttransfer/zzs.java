package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzaxc;
import com.google.android.gms.internal.zzbgo;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class zzs extends zzaxc {
    public static final Parcelable.Creator<zzs> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, zzbgo<?, ?>> f2620a;

    /* renamed from: b  reason: collision with root package name */
    private Set<Integer> f2621b;
    private int c;
    private zzu d;
    private String e;
    private String f;

    static {
        HashMap<String, zzbgo<?, ?>> hashMap = new HashMap<>();
        f2620a = hashMap;
        hashMap.put("authenticatorInfo", zzbgo.zza("authenticatorInfo", 2, zzu.class));
        f2620a.put("signature", zzbgo.zzl("signature", 3));
        f2620a.put("package", zzbgo.zzl("package", 4));
    }

    public zzs() {
        this.f2621b = new HashSet(3);
        this.c = 1;
    }

    zzs(Set<Integer> set, int i, zzu zzu, String str, String str2) {
        this.f2621b = set;
        this.c = i;
        this.d = zzu;
        this.e = str;
        this.f = str2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        Set<Integer> set = this.f2621b;
        if (set.contains(1)) {
            el.zzc(parcel, 1, this.c);
        }
        if (set.contains(2)) {
            el.zza(parcel, 2, (Parcelable) this.d, i, true);
        }
        if (set.contains(3)) {
            el.zza(parcel, 3, this.e, true);
        }
        if (set.contains(4)) {
            el.zza(parcel, 4, this.f, true);
        }
        el.zzai(parcel, zze);
    }

    public final boolean zza(zzbgo zzbgo) {
        return this.f2621b.contains(Integer.valueOf(zzbgo.zzalu()));
    }

    public final /* synthetic */ Map zzaav() {
        return f2620a;
    }

    public final Object zzb(zzbgo zzbgo) {
        int zzalu = zzbgo.zzalu();
        if (zzalu == 1) {
            return Integer.valueOf(this.c);
        }
        if (zzalu == 2) {
            return this.d;
        }
        if (zzalu == 3) {
            return this.e;
        }
        if (zzalu == 4) {
            return this.f;
        }
        int zzalu2 = zzbgo.zzalu();
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unknown SafeParcelable id=");
        sb.append(zzalu2);
        throw new IllegalStateException(sb.toString());
    }
}
