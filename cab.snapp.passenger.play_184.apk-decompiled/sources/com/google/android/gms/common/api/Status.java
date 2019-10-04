package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;

public final class Status extends zzbfm implements m, ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR = new u();

    /* renamed from: a  reason: collision with root package name */
    private static Status f2732a = new Status(18);
    public static final Status zzfni = new Status(0);
    public static final Status zzfnj = new Status(14);
    public static final Status zzfnk = new Status(8);
    public static final Status zzfnl = new Status(15);
    public static final Status zzfnm = new Status(16);
    public static final Status zzfnn = new Status(17);

    /* renamed from: b  reason: collision with root package name */
    private int f2733b;
    private final int c;
    private final String d;
    private final PendingIntent e;

    public Status(int i) {
        this(i, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.f2733b = i;
        this.c = i2;
        this.d = str;
        this.e = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f2733b == status.f2733b && this.c == status.c && ag.equal(this.d, status.d) && ag.equal(this.e, status.e);
    }

    public final PendingIntent getResolution() {
        return this.e;
    }

    public final Status getStatus() {
        return this;
    }

    public final int getStatusCode() {
        return this.c;
    }

    public final String getStatusMessage() {
        return this.d;
    }

    public final boolean hasResolution() {
        return this.e != null;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2733b), Integer.valueOf(this.c), this.d, this.e});
    }

    public final boolean isCanceled() {
        return this.c == 16;
    }

    public final boolean isInterrupted() {
        return this.c == 14;
    }

    public final boolean isSuccess() {
        return this.c <= 0;
    }

    public final void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            activity.startIntentSenderForResult(this.e.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public final String toString() {
        return ag.zzx(this).zzg("statusCode", zzagx()).zzg("resolution", this.e).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, getStatusCode());
        el.zza(parcel, 2, getStatusMessage(), false);
        el.zza(parcel, 3, (Parcelable) this.e, i, false);
        el.zzc(parcel, 1000, this.f2733b);
        el.zzai(parcel, zze);
    }

    public final String zzagx() {
        String str = this.d;
        return str != null ? str : d.getStatusCodeString(this.c);
    }
}
