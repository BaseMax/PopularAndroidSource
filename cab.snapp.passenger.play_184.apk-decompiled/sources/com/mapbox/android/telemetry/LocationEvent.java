package com.mapbox.android.telemetry;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.a.c;
import com.mapbox.android.telemetry.Event;

public class LocationEvent extends Event implements Parcelable {
    public static final Parcelable.Creator<LocationEvent> CREATOR = new Parcelable.Creator<LocationEvent>() {
        public final LocationEvent createFromParcel(Parcel parcel) {
            return new LocationEvent(parcel, (byte) 0);
        }

        public final LocationEvent[] newArray(int i) {
            return new LocationEvent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private static final String f4923a = ("Android - " + Build.VERSION.RELEASE);
    @c("event")

    /* renamed from: b  reason: collision with root package name */
    private final String f4924b;
    @c("created")
    private final String c;
    @c("source")
    private String d;
    @c("sessionId")
    private final String e;
    @c("lat")
    private final double f;
    @c("lng")
    private final double g;
    @c("altitude")
    private Double h;
    @c("operatingSystem")
    private String i;
    @c("applicationState")
    private String j;
    @c("horizontalAccuracy")
    private Float k;

    public int describeContents() {
        return 0;
    }

    /* synthetic */ LocationEvent(Parcel parcel, byte b2) {
        this(parcel);
    }

    public LocationEvent(String str, double d2, double d3, String str2) {
        this.h = null;
        this.k = null;
        this.f4924b = FirebaseAnalytics.b.LOCATION;
        this.c = ak.obtainCurrentDate();
        this.d = "mapbox";
        this.e = str;
        this.f = d2;
        this.g = d3;
        this.i = f4923a;
        this.j = str2;
    }

    /* access modifiers changed from: package-private */
    public Event.Type obtainType() {
        return Event.Type.LOCATION;
    }

    public void setAltitude(Double d2) {
        this.h = d2;
    }

    public void setAccuracy(Float f2) {
        this.k = f2;
    }

    private LocationEvent(Parcel parcel) {
        Float f2 = null;
        this.h = null;
        this.k = null;
        this.f4924b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readDouble();
        this.g = parcel.readDouble();
        this.h = parcel.readByte() == 0 ? null : Double.valueOf(parcel.readDouble());
        this.i = parcel.readString();
        this.j = parcel.readString();
        this.k = parcel.readByte() != 0 ? Float.valueOf(parcel.readFloat()) : f2;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f4924b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeDouble(this.f);
        parcel.writeDouble(this.g);
        if (this.h == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeDouble(this.h.doubleValue());
        }
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        if (this.k == null) {
            parcel.writeByte((byte) 0);
            return;
        }
        parcel.writeByte((byte) 1);
        parcel.writeFloat(this.k.floatValue());
    }
}
