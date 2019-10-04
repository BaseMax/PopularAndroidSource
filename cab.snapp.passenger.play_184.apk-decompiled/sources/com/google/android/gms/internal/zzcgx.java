package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;

public final class zzcgx extends zzbfm implements Iterable<String> {
    public static final Parcelable.Creator<zzcgx> CREATOR = new in();
    /* access modifiers changed from: package-private */

    /* renamed from: a  reason: collision with root package name */
    public final Bundle f3602a;

    zzcgx(Bundle bundle) {
        this.f3602a = bundle;
    }

    /* access modifiers changed from: package-private */
    public final Object a(String str) {
        return this.f3602a.get(str);
    }

    /* access modifiers changed from: package-private */
    public final Long b(String str) {
        return Long.valueOf(this.f3602a.getLong(str));
    }

    public final Iterator<String> iterator() {
        return new im(this);
    }

    public final int size() {
        return this.f3602a.size();
    }

    public final String toString() {
        return this.f3602a.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 2, zzayx(), false);
        el.zzai(parcel, zze);
    }

    public final Bundle zzayx() {
        return new Bundle(this.f3602a);
    }
}
