package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzaxc;
import com.google.android.gms.internal.zzbgo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class zzm extends zzaxc {
    public static final Parcelable.Creator<zzm> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, zzbgo<?, ?>> f2616a;

    /* renamed from: b  reason: collision with root package name */
    private Set<Integer> f2617b;
    private int c;
    private ArrayList<zzs> d;
    private int e;
    private zzp f;

    static {
        HashMap<String, zzbgo<?, ?>> hashMap = new HashMap<>();
        f2616a = hashMap;
        hashMap.put("authenticatorData", zzbgo.zzb("authenticatorData", 2, zzs.class));
        f2616a.put(NotificationCompat.CATEGORY_PROGRESS, zzbgo.zza(NotificationCompat.CATEGORY_PROGRESS, 4, zzp.class));
    }

    public zzm() {
        this.f2617b = new HashSet(1);
        this.c = 1;
    }

    zzm(Set<Integer> set, int i, ArrayList<zzs> arrayList, int i2, zzp zzp) {
        this.f2617b = set;
        this.c = i;
        this.d = arrayList;
        this.e = i2;
        this.f = zzp;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        Set<Integer> set = this.f2617b;
        if (set.contains(1)) {
            el.zzc(parcel, 1, this.c);
        }
        if (set.contains(2)) {
            el.zzc(parcel, 2, this.d, true);
        }
        if (set.contains(3)) {
            el.zzc(parcel, 3, this.e);
        }
        if (set.contains(4)) {
            el.zza(parcel, 4, (Parcelable) this.f, i, true);
        }
        el.zzai(parcel, zze);
    }

    public final boolean zza(zzbgo zzbgo) {
        return this.f2617b.contains(Integer.valueOf(zzbgo.zzalu()));
    }

    public final /* synthetic */ Map zzaav() {
        return f2616a;
    }

    public final Object zzb(zzbgo zzbgo) {
        int zzalu = zzbgo.zzalu();
        if (zzalu == 1) {
            return Integer.valueOf(this.c);
        }
        if (zzalu == 2) {
            return this.d;
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
