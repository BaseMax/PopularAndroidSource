package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.a.a;
import c.e.a.b.h.b.C0922h;
import c.e.a.b.h.b.C0925i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Iterator;

public final class zzag extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzag> CREATOR = new C0925i();

    /* renamed from: a  reason: collision with root package name */
    public final Bundle f13231a;

    public zzag(Bundle bundle) {
        this.f13231a = bundle;
    }

    public final Object e(String str) {
        return this.f13231a.get(str);
    }

    public final Long f(String str) {
        return Long.valueOf(this.f13231a.getLong(str));
    }

    public final String g(String str) {
        return this.f13231a.getString(str);
    }

    public final Double h(String str) {
        return Double.valueOf(this.f13231a.getDouble(str));
    }

    public final Iterator<String> iterator() {
        return new C0922h(this);
    }

    public final int size() {
        return this.f13231a.size();
    }

    public final String toString() {
        return this.f13231a.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 2, x(), false);
        a.a(parcel, a2);
    }

    public final Bundle x() {
        return new Bundle(this.f13231a);
    }
}
