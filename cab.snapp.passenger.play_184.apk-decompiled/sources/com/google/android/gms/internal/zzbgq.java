package com.google.android.gms.internal;

public abstract class zzbgq extends ff implements zzbfq {
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        ff ffVar = (ff) obj;
        for (zzbgo next : zzaav().values()) {
            if (zza(next)) {
                if (!ffVar.zza(next) || !zzb(next).equals(ffVar.zzb(next))) {
                    return false;
                }
            } else if (ffVar.zza(next)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        for (zzbgo next : zzaav().values()) {
            if (zza(next)) {
                i = (i * 31) + zzb(next).hashCode();
            }
        }
        return i;
    }

    public Object zzgo(String str) {
        return null;
    }

    public boolean zzgp(String str) {
        return false;
    }
}
