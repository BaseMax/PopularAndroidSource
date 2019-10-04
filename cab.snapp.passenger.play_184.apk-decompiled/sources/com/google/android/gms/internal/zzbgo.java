package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ah;
import com.google.android.gms.common.internal.ap;
import java.util.ArrayList;
import java.util.Map;

public final class zzbgo<I, O> extends zzbfm {
    public static final fh CREATOR = new fh();

    /* renamed from: a  reason: collision with root package name */
    protected final int f3575a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f3576b;
    protected final int c;
    protected final boolean d;
    protected final String e;
    protected final int f;
    protected final Class<? extends ff> g;
    private final int h;
    private String i;
    private zzbgt j;
    /* access modifiers changed from: private */
    public fg<I, O> k;

    zzbgo(int i2, int i3, boolean z, int i4, boolean z2, String str, int i5, String str2, zzbgh zzbgh) {
        this.h = i2;
        this.f3575a = i3;
        this.f3576b = z;
        this.c = i4;
        this.d = z2;
        this.e = str;
        this.f = i5;
        if (str2 == null) {
            this.g = null;
            this.i = null;
        } else {
            this.g = zzbgy.class;
            this.i = str2;
        }
        if (zzbgh == null) {
            this.k = null;
        } else {
            this.k = zzbgh.zzalt();
        }
    }

    private zzbgo(int i2, boolean z, int i3, boolean z2, String str, int i4, Class<? extends ff> cls, fg<I, O> fgVar) {
        this.h = 1;
        this.f3575a = i2;
        this.f3576b = z;
        this.c = i3;
        this.d = z2;
        this.e = str;
        this.f = i4;
        this.g = cls;
        this.i = cls == null ? null : cls.getCanonicalName();
        this.k = fgVar;
    }

    private String a() {
        String str = this.i;
        if (str == null) {
            return null;
        }
        return str;
    }

    public static zzbgo zza(String str, int i2, fg<?, ?> fgVar, boolean z) {
        zzbgo zzbgo = new zzbgo(7, false, 0, false, str, i2, null, fgVar);
        return zzbgo;
    }

    public static <T extends ff> zzbgo<T, T> zza(String str, int i2, Class<T> cls) {
        zzbgo zzbgo = new zzbgo(11, false, 11, false, str, i2, cls, null);
        return zzbgo;
    }

    public static <T extends ff> zzbgo<ArrayList<T>, ArrayList<T>> zzb(String str, int i2, Class<T> cls) {
        zzbgo zzbgo = new zzbgo(11, true, 11, true, str, i2, cls, null);
        return zzbgo;
    }

    public static zzbgo<Integer, Integer> zzj(String str, int i2) {
        zzbgo zzbgo = new zzbgo(0, false, 0, false, str, i2, null, null);
        return zzbgo;
    }

    public static zzbgo<Boolean, Boolean> zzk(String str, int i2) {
        zzbgo zzbgo = new zzbgo(6, false, 6, false, str, i2, null, null);
        return zzbgo;
    }

    public static zzbgo<String, String> zzl(String str, int i2) {
        zzbgo zzbgo = new zzbgo(7, false, 7, false, str, i2, null, null);
        return zzbgo;
    }

    public static zzbgo<ArrayList<String>, ArrayList<String>> zzm(String str, int i2) {
        zzbgo zzbgo = new zzbgo(7, true, 7, true, str, i2, null, null);
        return zzbgo;
    }

    public static zzbgo<byte[], byte[]> zzn(String str, int i2) {
        zzbgo zzbgo = new zzbgo(8, false, 8, false, str, 4, null, null);
        return zzbgo;
    }

    public final I convertBack(O o) {
        return this.k.convertBack(o);
    }

    public final String toString() {
        ah zzg = ag.zzx(this).zzg("versionCode", Integer.valueOf(this.h)).zzg("typeIn", Integer.valueOf(this.f3575a)).zzg("typeInArray", Boolean.valueOf(this.f3576b)).zzg("typeOut", Integer.valueOf(this.c)).zzg("typeOutArray", Boolean.valueOf(this.d)).zzg("outputFieldName", this.e).zzg("safeParcelFieldId", Integer.valueOf(this.f)).zzg("concreteTypeName", a());
        Class<? extends ff> cls = this.g;
        if (cls != null) {
            zzg.zzg("concreteType.class", cls.getCanonicalName());
        }
        fg<I, O> fgVar = this.k;
        if (fgVar != null) {
            zzg.zzg("converterName", fgVar.getClass().getCanonicalName());
        }
        return zzg.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.h);
        el.zzc(parcel, 2, this.f3575a);
        el.zza(parcel, 3, this.f3576b);
        el.zzc(parcel, 4, this.c);
        el.zza(parcel, 5, this.d);
        el.zza(parcel, 6, this.e, false);
        el.zzc(parcel, 7, this.f);
        el.zza(parcel, 8, a(), false);
        fg<I, O> fgVar = this.k;
        el.zza(parcel, 9, (Parcelable) fgVar == null ? null : zzbgh.zza(fgVar), i2, false);
        el.zzai(parcel, zze);
    }

    public final void zza(zzbgt zzbgt) {
        this.j = zzbgt;
    }

    public final int zzalu() {
        return this.f;
    }

    public final boolean zzalw() {
        return this.k != null;
    }

    public final Map<String, zzbgo<?, ?>> zzalx() {
        ap.checkNotNull(this.i);
        ap.checkNotNull(this.j);
        return this.j.zzgq(this.i);
    }
}
