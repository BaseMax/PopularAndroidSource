package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArraySet;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzaxc;
import com.google.android.gms.internal.zzbgo;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class zzu extends zzaxc {
    public static final Parcelable.Creator<zzu> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, zzbgo<?, ?>> f2622a;

    /* renamed from: b  reason: collision with root package name */
    private Set<Integer> f2623b;
    private int c;
    private String d;
    private int e;
    private byte[] f;
    private PendingIntent g;
    private DeviceMetaData h;

    static {
        HashMap<String, zzbgo<?, ?>> hashMap = new HashMap<>();
        f2622a = hashMap;
        hashMap.put("accountType", zzbgo.zzl("accountType", 2));
        f2622a.put("status", zzbgo.zzj("status", 3));
        f2622a.put("transferBytes", zzbgo.zzn("transferBytes", 4));
    }

    public zzu() {
        this.f2623b = new ArraySet(3);
        this.c = 1;
    }

    zzu(Set<Integer> set, int i, String str, int i2, byte[] bArr, PendingIntent pendingIntent, DeviceMetaData deviceMetaData) {
        this.f2623b = set;
        this.c = i;
        this.d = str;
        this.e = i2;
        this.f = bArr;
        this.g = pendingIntent;
        this.h = deviceMetaData;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        Set<Integer> set = this.f2623b;
        if (set.contains(1)) {
            el.zzc(parcel, 1, this.c);
        }
        if (set.contains(2)) {
            el.zza(parcel, 2, this.d, true);
        }
        if (set.contains(3)) {
            el.zzc(parcel, 3, this.e);
        }
        if (set.contains(4)) {
            el.zza(parcel, 4, this.f, true);
        }
        if (set.contains(5)) {
            el.zza(parcel, 5, (Parcelable) this.g, i, true);
        }
        if (set.contains(6)) {
            el.zza(parcel, 6, (Parcelable) this.h, i, true);
        }
        el.zzai(parcel, zze);
    }

    public final boolean zza(zzbgo zzbgo) {
        return this.f2623b.contains(Integer.valueOf(zzbgo.zzalu()));
    }

    public final /* synthetic */ Map zzaav() {
        return f2622a;
    }

    public final Object zzb(zzbgo zzbgo) {
        int i;
        int zzalu = zzbgo.zzalu();
        if (zzalu == 1) {
            i = this.c;
        } else if (zzalu == 2) {
            return this.d;
        } else {
            if (zzalu == 3) {
                i = this.e;
            } else if (zzalu == 4) {
                return this.f;
            } else {
                int zzalu2 = zzbgo.zzalu();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unknown SafeParcelable id=");
                sb.append(zzalu2);
                throw new IllegalStateException(sb.toString());
            }
        }
        return Integer.valueOf(i);
    }
}
