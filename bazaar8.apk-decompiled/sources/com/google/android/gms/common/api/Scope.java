package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.a.j;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.d.r;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new j();

    /* renamed from: a  reason: collision with root package name */
    public final int f12974a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12975b;

    public Scope(int i2, String str) {
        r.a(str, (Object) "scopeUri must not be null or empty");
        this.f12974a = i2;
        this.f12975b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f12975b.equals(((Scope) obj).f12975b);
    }

    public final int hashCode() {
        return this.f12975b.hashCode();
    }

    public final String toString() {
        return this.f12975b;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f12974a);
        a.a(parcel, 2, x(), false);
        a.a(parcel, a2);
    }

    public final String x() {
        return this.f12975b;
    }

    public Scope(String str) {
        this(1, str);
    }
}
