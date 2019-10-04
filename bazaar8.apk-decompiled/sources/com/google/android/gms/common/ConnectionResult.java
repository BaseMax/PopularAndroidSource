package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.C0794q;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class ConnectionResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new i();

    /* renamed from: a  reason: collision with root package name */
    public static final ConnectionResult f12965a = new ConnectionResult(0);

    /* renamed from: b  reason: collision with root package name */
    public final int f12966b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12967c;

    /* renamed from: d  reason: collision with root package name */
    public final PendingIntent f12968d;

    /* renamed from: e  reason: collision with root package name */
    public final String f12969e;

    public ConnectionResult(int i2, int i3, PendingIntent pendingIntent, String str) {
        this.f12966b = i2;
        this.f12967c = i3;
        this.f12968d = pendingIntent;
        this.f12969e = str;
    }

    public static String e(int i2) {
        if (i2 == 99) {
            return "UNFINISHED";
        }
        if (i2 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i2) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i2) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    default:
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i2);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    public final boolean A() {
        return (this.f12967c == 0 || this.f12968d == null) ? false : true;
    }

    public final boolean B() {
        return this.f12967c == 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f12967c == connectionResult.f12967c && C0794q.a(this.f12968d, connectionResult.f12968d) && C0794q.a(this.f12969e, connectionResult.f12969e);
    }

    public final int hashCode() {
        return C0794q.a(Integer.valueOf(this.f12967c), this.f12968d, this.f12969e);
    }

    public final String toString() {
        C0794q.a a2 = C0794q.a((Object) this);
        a2.a("statusCode", e(this.f12967c));
        a2.a("resolution", this.f12968d);
        a2.a("message", this.f12969e);
        return a2.toString();
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f12966b);
        a.a(parcel, 2, x());
        a.a(parcel, 3, (Parcelable) z(), i2, false);
        a.a(parcel, 4, y(), false);
        a.a(parcel, a2);
    }

    public final int x() {
        return this.f12967c;
    }

    public final String y() {
        return this.f12969e;
    }

    public final PendingIntent z() {
        return this.f12968d;
    }

    public ConnectionResult(int i2) {
        this(i2, null, null);
    }

    public ConnectionResult(int i2, PendingIntent pendingIntent) {
        this(i2, pendingIntent, null);
    }

    public ConnectionResult(int i2, PendingIntent pendingIntent, String str) {
        this(1, i2, pendingIntent, str);
    }
}
