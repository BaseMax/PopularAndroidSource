package com.mapbox.android.telemetry;

import android.os.Parcel;
import android.text.TextUtils;
import com.mapbox.android.telemetry.Event;

public class CrashEvent extends Event {

    /* renamed from: a  reason: collision with root package name */
    private final String f4921a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4922b;
    private String c;

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
    }

    public CrashEvent(String str, String str2) {
        this.f4921a = str;
        this.f4922b = str2;
    }

    /* access modifiers changed from: package-private */
    public Event.Type obtainType() {
        return Event.Type.CRASH;
    }

    public String getHash() {
        return this.c;
    }

    public boolean isValid() {
        return !TextUtils.isEmpty(this.f4921a) && !TextUtils.isEmpty(this.f4922b) && !TextUtils.isEmpty(this.c);
    }
}
