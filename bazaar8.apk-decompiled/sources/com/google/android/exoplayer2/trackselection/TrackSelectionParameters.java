package com.google.android.exoplayer2.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c.e.a.a.o.I;

public class TrackSelectionParameters implements Parcelable {
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new p();

    /* renamed from: a  reason: collision with root package name */
    public static final TrackSelectionParameters f12791a = new TrackSelectionParameters();

    /* renamed from: b  reason: collision with root package name */
    public final String f12792b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12793c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12794d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12795e;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f12796a;

        /* renamed from: b  reason: collision with root package name */
        public String f12797b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f12798c;

        /* renamed from: d  reason: collision with root package name */
        public int f12799d;

        public a(TrackSelectionParameters trackSelectionParameters) {
            this.f12796a = trackSelectionParameters.f12792b;
            this.f12797b = trackSelectionParameters.f12793c;
            this.f12798c = trackSelectionParameters.f12794d;
            this.f12799d = trackSelectionParameters.f12795e;
        }
    }

    public TrackSelectionParameters() {
        this(null, null, false, 0);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
        if (!TextUtils.equals(this.f12792b, trackSelectionParameters.f12792b) || !TextUtils.equals(this.f12793c, trackSelectionParameters.f12793c) || this.f12794d != trackSelectionParameters.f12794d || this.f12795e != trackSelectionParameters.f12795e) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f12792b;
        int i2 = 0;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.f12793c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((hashCode + i2) * 31) + (this.f12794d ? 1 : 0)) * 31) + this.f12795e;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12792b);
        parcel.writeString(this.f12793c);
        I.a(parcel, this.f12794d);
        parcel.writeInt(this.f12795e);
    }

    public TrackSelectionParameters(String str, String str2, boolean z, int i2) {
        this.f12792b = I.h(str);
        this.f12793c = I.h(str2);
        this.f12794d = z;
        this.f12795e = i2;
    }

    public TrackSelectionParameters(Parcel parcel) {
        this.f12792b = parcel.readString();
        this.f12793c = parcel.readString();
        this.f12794d = I.a(parcel);
        this.f12795e = parcel.readInt();
    }
}
