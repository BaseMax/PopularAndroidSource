package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.a.b;
import c.e.a.b.d.a.g;
import c.e.a.b.d.a.k;
import c.e.a.b.d.d.C0794q;
import c.e.a.b.d.d.a.a;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Status extends AbstractSafeParcelable implements g, ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR = new k();

    /* renamed from: a  reason: collision with root package name */
    public static final Status f12976a = new Status(0);

    /* renamed from: b  reason: collision with root package name */
    public static final Status f12977b = new Status(14);

    /* renamed from: c  reason: collision with root package name */
    public static final Status f12978c = new Status(8);

    /* renamed from: d  reason: collision with root package name */
    public static final Status f12979d = new Status(15);

    /* renamed from: e  reason: collision with root package name */
    public static final Status f12980e = new Status(16);

    /* renamed from: f  reason: collision with root package name */
    public static final Status f12981f = new Status(17);

    /* renamed from: g  reason: collision with root package name */
    public static final Status f12982g = new Status(18);

    /* renamed from: h  reason: collision with root package name */
    public final int f12983h;

    /* renamed from: i  reason: collision with root package name */
    public final int f12984i;

    /* renamed from: j  reason: collision with root package name */
    public final String f12985j;

    /* renamed from: k  reason: collision with root package name */
    public final PendingIntent f12986k;

    public Status(int i2, int i3, String str, PendingIntent pendingIntent) {
        this.f12983h = i2;
        this.f12984i = i3;
        this.f12985j = str;
        this.f12986k = pendingIntent;
    }

    public final boolean A() {
        return this.f12984i <= 0;
    }

    public final String B() {
        String str = this.f12985j;
        if (str != null) {
            return str;
        }
        return b.a(this.f12984i);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        if (this.f12983h != status.f12983h || this.f12984i != status.f12984i || !C0794q.a(this.f12985j, status.f12985j) || !C0794q.a(this.f12986k, status.f12986k)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return C0794q.a(Integer.valueOf(this.f12983h), Integer.valueOf(this.f12984i), this.f12985j, this.f12986k);
    }

    public final String toString() {
        C0794q.a a2 = C0794q.a((Object) this);
        a2.a("statusCode", B());
        a2.a("resolution", this.f12986k);
        return a2.toString();
    }

    public final Status w() {
        return this;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = a.a(parcel);
        a.a(parcel, 1, x());
        a.a(parcel, 2, y(), false);
        a.a(parcel, 3, (Parcelable) this.f12986k, i2, false);
        a.a(parcel, (int) AnswersRetryFilesSender.BACKOFF_MS, this.f12983h);
        a.a(parcel, a2);
    }

    public final int x() {
        return this.f12984i;
    }

    public final String y() {
        return this.f12985j;
    }

    public final boolean z() {
        return this.f12986k != null;
    }

    public Status(int i2) {
        this(i2, null);
    }

    public Status(int i2, String str) {
        this(1, i2, str, null);
    }
}
