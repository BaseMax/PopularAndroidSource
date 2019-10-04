package com.mapbox.android.telemetry;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;
import com.mapbox.android.telemetry.Event;
import java.util.HashMap;

public class VisionEvent extends Event implements Parcelable {
    public static final Parcelable.Creator<VisionEvent> CREATOR = new Parcelable.Creator<VisionEvent>() {
        public final VisionEvent createFromParcel(Parcel parcel) {
            return new VisionEvent(parcel, (byte) 0);
        }

        public final VisionEvent[] newArray(int i) {
            return new VisionEvent[i];
        }
    };
    @c("event")

    /* renamed from: a  reason: collision with root package name */
    private final String f4927a;
    @c("name")

    /* renamed from: b  reason: collision with root package name */
    private String f4928b;
    @c("contents")
    private HashMap<String, Object> c;

    public int describeContents() {
        return 0;
    }

    /* synthetic */ VisionEvent(Parcel parcel, byte b2) {
        this(parcel);
    }

    VisionEvent() {
        this.f4928b = "";
        this.c = new HashMap<>();
        this.f4927a = "vision.general";
    }

    /* access modifiers changed from: package-private */
    public Event.Type obtainType() {
        return Event.Type.VIS_GENERAL;
    }

    public void setContents(HashMap<String, Object> hashMap) {
        this.c = hashMap;
    }

    public void setName(String str) {
        this.f4928b = str;
    }

    public HashMap<String, Object> getContents() {
        return this.c;
    }

    private VisionEvent(Parcel parcel) {
        this.f4928b = "";
        this.c = new HashMap<>();
        this.f4927a = parcel.readString();
        this.f4928b = parcel.readString();
        this.c = (HashMap) parcel.readSerializable();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4927a);
        parcel.writeString(this.f4928b);
        parcel.writeSerializable(this.c);
    }
}
