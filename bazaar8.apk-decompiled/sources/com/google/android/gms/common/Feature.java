package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.C0794q;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.j;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new j();

    /* renamed from: a  reason: collision with root package name */
    public final String f12970a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public final int f12971b;

    /* renamed from: c  reason: collision with root package name */
    public final long f12972c;

    public Feature(String str, long j2) {
        this.f12970a = str;
        this.f12972c = j2;
        this.f12971b = -1;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (((x() != null && x().equals(feature.x())) || (x() == null && feature.x() == null)) && y() == feature.y()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return C0794q.a(x(), Long.valueOf(y()));
    }

    public String toString() {
        C0794q.a a2 = C0794q.a((Object) this);
        a2.a(DefaultAppMeasurementEventListenerRegistrar.NAME, x());
        a2.a("version", Long.valueOf(y()));
        return a2.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, x(), false);
        a.a(parcel, 2, this.f12971b);
        a.a(parcel, 3, y());
        a.a(parcel, a2);
    }

    public String x() {
        return this.f12970a;
    }

    public long y() {
        long j2 = this.f12972c;
        return j2 == -1 ? (long) this.f12971b : j2;
    }

    public Feature(String str, int i2, long j2) {
        this.f12970a = str;
        this.f12971b = i2;
        this.f12972c = j2;
    }
}
