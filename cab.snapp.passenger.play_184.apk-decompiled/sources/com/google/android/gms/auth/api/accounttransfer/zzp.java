package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzaxc;
import com.google.android.gms.internal.zzbgo;
import java.util.List;
import java.util.Map;

public class zzp extends zzaxc {
    public static final Parcelable.Creator<zzp> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayMap<String, zzbgo<?, ?>> f2618a;

    /* renamed from: b  reason: collision with root package name */
    private int f2619b;
    private List<String> c;
    private List<String> d;
    private List<String> e;
    private List<String> f;
    private List<String> g;

    static {
        ArrayMap<String, zzbgo<?, ?>> arrayMap = new ArrayMap<>();
        f2618a = arrayMap;
        arrayMap.put("registered", zzbgo.zzm("registered", 2));
        f2618a.put("in_progress", zzbgo.zzm("in_progress", 3));
        f2618a.put("success", zzbgo.zzm("success", 4));
        f2618a.put("failed", zzbgo.zzm("failed", 5));
        f2618a.put("escrowed", zzbgo.zzm("escrowed", 6));
    }

    public zzp() {
        this.f2619b = 1;
    }

    zzp(int i, List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5) {
        this.f2619b = i;
        this.c = list;
        this.d = list2;
        this.e = list3;
        this.f = list4;
        this.g = list5;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f2619b);
        el.zzb(parcel, 2, this.c, false);
        el.zzb(parcel, 3, this.d, false);
        el.zzb(parcel, 4, this.e, false);
        el.zzb(parcel, 5, this.f, false);
        el.zzb(parcel, 6, this.g, false);
        el.zzai(parcel, zze);
    }

    public final boolean zza(zzbgo zzbgo) {
        return true;
    }

    public final Map<String, zzbgo<?, ?>> zzaav() {
        return f2618a;
    }

    public final Object zzb(zzbgo zzbgo) {
        switch (zzbgo.zzalu()) {
            case 1:
                return Integer.valueOf(this.f2619b);
            case 2:
                return this.c;
            case 3:
                return this.d;
            case 4:
                return this.e;
            case 5:
                return this.f;
            case 6:
                return this.g;
            default:
                int zzalu = zzbgo.zzalu();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unknown SafeParcelable id=");
                sb.append(zzalu);
                throw new IllegalStateException(sb.toString());
        }
    }
}
