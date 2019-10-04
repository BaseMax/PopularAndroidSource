package com.mapbox.mapboxsdk.module.telemetry;

import android.os.Parcel;
import com.mapbox.android.telemetry.Event;

abstract class MapBaseEvent extends Event {
    private final String created;
    private final String event = getEventName();

    public int describeContents() {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public abstract String getEventName();

    public void writeToParcel(Parcel parcel, int i) {
    }

    MapBaseEvent(PhoneState phoneState) {
        this.created = phoneState.getCreated();
    }

    /* access modifiers changed from: package-private */
    public String getEvent() {
        return this.event;
    }

    /* access modifiers changed from: package-private */
    public String getCreated() {
        return this.created;
    }
}
