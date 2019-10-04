package com.mapbox.mapboxsdk.geometry;

import android.os.Parcel;
import android.os.Parcelable;

public class LatLngQuad implements Parcelable {
    public static final Parcelable.Creator<LatLngQuad> CREATOR = new Parcelable.Creator<LatLngQuad>() {
        public final LatLngQuad createFromParcel(Parcel parcel) {
            return LatLngQuad.readFromParcel(parcel);
        }

        public final LatLngQuad[] newArray(int i) {
            return new LatLngQuad[i];
        }
    };
    private final LatLng bottomLeft;
    private final LatLng bottomRight;
    private final LatLng topLeft;
    private final LatLng topRight;

    public int describeContents() {
        return 0;
    }

    public LatLngQuad(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4) {
        this.topLeft = latLng;
        this.topRight = latLng2;
        this.bottomRight = latLng3;
        this.bottomLeft = latLng4;
    }

    public LatLng getTopLeft() {
        return this.topLeft;
    }

    public LatLng getTopRight() {
        return this.topRight;
    }

    public LatLng getBottomRight() {
        return this.bottomRight;
    }

    public LatLng getBottomLeft() {
        return this.bottomLeft;
    }

    public int hashCode() {
        int hashCode = this.topLeft.hashCode();
        int hashCode2 = (hashCode ^ (hashCode >>> 31)) + this.topRight.hashCode();
        int hashCode3 = (hashCode2 ^ (hashCode2 >>> 31)) + this.bottomRight.hashCode();
        return (hashCode3 ^ (hashCode3 >>> 31)) + this.bottomLeft.hashCode();
    }

    public void writeToParcel(Parcel parcel, int i) {
        this.topLeft.writeToParcel(parcel, i);
        this.topRight.writeToParcel(parcel, i);
        this.bottomRight.writeToParcel(parcel, i);
        this.bottomLeft.writeToParcel(parcel, i);
    }

    /* access modifiers changed from: private */
    public static LatLngQuad readFromParcel(Parcel parcel) {
        return new LatLngQuad(new LatLng(parcel), new LatLng(parcel), new LatLng(parcel), new LatLng(parcel));
    }
}
