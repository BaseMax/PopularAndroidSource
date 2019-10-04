package com.mapbox.android.telemetry;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;
import com.mapbox.android.telemetry.Event;

public class AppUserTurnstile extends Event implements Parcelable {
    public static final Parcelable.Creator<AppUserTurnstile> CREATOR = new Parcelable.Creator<AppUserTurnstile>() {
        public final AppUserTurnstile createFromParcel(Parcel parcel) {
            return new AppUserTurnstile(parcel, (byte) 0);
        }

        public final AppUserTurnstile[] newArray(int i) {
            return new AppUserTurnstile[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private static final String f4917a = ("Android - " + Build.VERSION.RELEASE);

    /* renamed from: b  reason: collision with root package name */
    private final String f4918b;
    private final String c;
    private final String d;
    @c("enabled.telemetry")
    private final boolean e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private String k;

    public int describeContents() {
        return 0;
    }

    /* synthetic */ AppUserTurnstile(Parcel parcel, byte b2) {
        this(parcel);
    }

    public AppUserTurnstile(String str, String str2) {
        this(str, str2, (byte) 0);
    }

    private AppUserTurnstile(String str, String str2, byte b2) {
        if (x.f4995a != null) {
            this.f4918b = "appUserTurnstile";
            this.c = ak.obtainCurrentDate();
            this.d = ak.retrieveVendorId();
            this.e = TelemetryEnabler.f4925a.get(new TelemetryEnabler().a()).booleanValue();
            this.f = Build.DEVICE;
            this.g = str;
            this.h = str2;
            this.i = Build.MODEL;
            this.j = f4917a;
            return;
        }
        throw new IllegalStateException("Create a MapboxTelemetry instance before calling this method.");
    }

    public String getSkuId() {
        return this.k;
    }

    public void setSkuId(String str) {
        if (str != null && str.length() != 0) {
            this.k = str;
        }
    }

    /* access modifiers changed from: package-private */
    public Event.Type obtainType() {
        return Event.Type.TURNSTILE;
    }

    private AppUserTurnstile(Parcel parcel) {
        this.f4918b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readByte() != 0;
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readString();
        this.k = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f4918b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeByte(this.e ? (byte) 1 : 0);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
    }
}
