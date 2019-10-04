package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.C0794q;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.d.v;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ClientIdentity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new v();

    /* renamed from: a  reason: collision with root package name */
    public final int f13056a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13057b;

    public ClientIdentity(int i2, String str) {
        this.f13056a = i2;
        this.f13057b = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ClientIdentity)) {
            ClientIdentity clientIdentity = (ClientIdentity) obj;
            return clientIdentity.f13056a == this.f13056a && C0794q.a(clientIdentity.f13057b, this.f13057b);
        }
    }

    public int hashCode() {
        return this.f13056a;
    }

    public String toString() {
        int i2 = this.f13056a;
        String str = this.f13057b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i2);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13056a);
        a.a(parcel, 2, this.f13057b, false);
        a.a(parcel, a2);
    }
}
