package com.mapbox.android.telemetry;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;
import com.mapbox.android.telemetry.Event;

public class VisionObjectDetectionEvent extends Event implements Parcelable {
    public static final Parcelable.Creator<VisionObjectDetectionEvent> CREATOR = new Parcelable.Creator<VisionObjectDetectionEvent>() {
        public final VisionObjectDetectionEvent createFromParcel(Parcel parcel) {
            return new VisionObjectDetectionEvent(parcel, (byte) 0);
        }

        public final VisionObjectDetectionEvent[] newArray(int i) {
            return new VisionObjectDetectionEvent[i];
        }
    };
    @c("event")

    /* renamed from: a  reason: collision with root package name */
    private final String f4929a;
    @c("created")

    /* renamed from: b  reason: collision with root package name */
    private final String f4930b;
    @c("object_lat")
    private Double c;
    @c("object_lon")
    private Double d;
    @c("vehicle_lat")
    private Double e;
    @c("vehicle_lon")
    private Double f;
    @c("class")
    private String g;
    @c("sign_value")
    private String h;
    @c("object_size_width")
    private Double i;
    @c("object_size_height")
    private Double j;
    @c("object_pos_height")
    private Double k;
    @c("distance_from_camera")
    private Double l;

    public int describeContents() {
        return 0;
    }

    /* synthetic */ VisionObjectDetectionEvent(Parcel parcel, byte b2) {
        this(parcel);
    }

    public VisionObjectDetectionEvent(String str) {
        this.f4929a = "vision.objectDetection";
        this.f4930b = str;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.j = null;
        this.i = null;
        this.k = null;
        this.l = null;
    }

    public String getEvent() {
        return this.f4929a;
    }

    public String getCreated() {
        return this.f4930b;
    }

    public double getObjectLatitude() {
        return this.c.doubleValue();
    }

    public void setObjectLatitude(double d2) {
        this.c = Double.valueOf(d2);
    }

    public double getObjectLongitude() {
        return this.d.doubleValue();
    }

    public void setObjectLongitude(double d2) {
        this.d = Double.valueOf(d2);
    }

    public double getVehicleLatitude() {
        return this.e.doubleValue();
    }

    public void setVehicleLatitude(double d2) {
        this.e = Double.valueOf(d2);
    }

    public double getVehicleLongitude() {
        return this.f.doubleValue();
    }

    public void setVehicleLongitude(double d2) {
        this.f = Double.valueOf(d2);
    }

    public String getClazz() {
        return this.g;
    }

    public void setClazz(String str) {
        this.g = str;
    }

    public String getSignValue() {
        return this.h;
    }

    public void setSignValue(String str) {
        this.h = str;
    }

    public double getObjectSizeWidth() {
        return this.i.doubleValue();
    }

    public void setObjectSizeWidth(double d2) {
        this.i = Double.valueOf(d2);
    }

    public double getObjectSizeHeight() {
        return this.j.doubleValue();
    }

    public void setObjectSizeHeight(double d2) {
        this.j = Double.valueOf(d2);
    }

    public double getObjectPositionHeight() {
        return this.k.doubleValue();
    }

    public void setObjectPositionHeight(double d2) {
        this.k = Double.valueOf(d2);
    }

    public double getDistanceFromCamera() {
        return this.l.doubleValue();
    }

    public void setDistanceFromCamera(double d2) {
        this.l = Double.valueOf(d2);
    }

    /* access modifiers changed from: package-private */
    public Event.Type obtainType() {
        return Event.Type.VIS_OBJ_DETECTION;
    }

    private VisionObjectDetectionEvent(Parcel parcel) {
        this.f4929a = parcel.readString();
        this.f4930b = parcel.readString();
        this.c = a(parcel);
        this.d = a(parcel);
        this.e = a(parcel);
        this.f = a(parcel);
        this.g = b(parcel);
        this.h = b(parcel);
        this.i = a(parcel);
        this.j = a(parcel);
        this.k = a(parcel);
        this.l = a(parcel);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f4929a);
        parcel.writeString(this.f4930b);
        a(parcel, this.c);
        a(parcel, this.d);
        a(parcel, this.e);
        a(parcel, this.f);
        a(parcel, this.g);
        a(parcel, this.h);
        a(parcel, this.i);
        a(parcel, this.j);
        a(parcel, this.k);
        a(parcel, this.l);
    }

    private static void a(Parcel parcel, Double d2) {
        parcel.writeByte((byte) (d2 != null ? 1 : 0));
        if (d2 != null) {
            parcel.writeDouble(d2.doubleValue());
        }
    }

    private static void a(Parcel parcel, String str) {
        parcel.writeByte((byte) (str != null ? 1 : 0));
        if (str != null) {
            parcel.writeString(str);
        }
    }

    private static Double a(Parcel parcel) {
        if (parcel.readByte() == 0) {
            return null;
        }
        return Double.valueOf(parcel.readDouble());
    }

    private static String b(Parcel parcel) {
        if (parcel.readByte() == 0) {
            return null;
        }
        return parcel.readString();
    }
}
