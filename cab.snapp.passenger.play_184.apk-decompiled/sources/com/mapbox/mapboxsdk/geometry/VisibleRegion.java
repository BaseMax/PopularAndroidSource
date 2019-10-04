package com.mapbox.mapboxsdk.geometry;

import android.os.Parcel;
import android.os.Parcelable;

public class VisibleRegion implements Parcelable {
    public static final Parcelable.Creator<VisibleRegion> CREATOR = new Parcelable.Creator<VisibleRegion>() {
        public final VisibleRegion createFromParcel(Parcel parcel) {
            return new VisibleRegion(parcel);
        }

        public final VisibleRegion[] newArray(int i) {
            return new VisibleRegion[i];
        }
    };
    public final LatLng farLeft;
    public final LatLng farRight;
    public final LatLngBounds latLngBounds;
    public final LatLng nearLeft;
    public final LatLng nearRight;

    public int describeContents() {
        return 0;
    }

    private VisibleRegion(Parcel parcel) {
        this.farLeft = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.farRight = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.nearLeft = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.nearRight = (LatLng) parcel.readParcelable(LatLng.class.getClassLoader());
        this.latLngBounds = (LatLngBounds) parcel.readParcelable(LatLngBounds.class.getClassLoader());
    }

    public VisibleRegion(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4, LatLngBounds latLngBounds2) {
        this.farLeft = latLng;
        this.farRight = latLng2;
        this.nearLeft = latLng3;
        this.nearRight = latLng4;
        this.latLngBounds = latLngBounds2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VisibleRegion)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        VisibleRegion visibleRegion = (VisibleRegion) obj;
        return this.farLeft.equals(visibleRegion.farLeft) && this.farRight.equals(visibleRegion.farRight) && this.nearLeft.equals(visibleRegion.nearLeft) && this.nearRight.equals(visibleRegion.nearRight) && this.latLngBounds.equals(visibleRegion.latLngBounds);
    }

    public String toString() {
        return "[farLeft [" + this.farLeft + "], farRight [" + this.farRight + "], nearLeft [" + this.nearLeft + "], nearRight [" + this.nearRight + "], latLngBounds [" + this.latLngBounds + "]]";
    }

    public int hashCode() {
        return this.farLeft.hashCode() + 90 + ((this.farRight.hashCode() + 90) * 1000) + ((this.nearLeft.hashCode() + 180) * 1000000) + ((this.nearRight.hashCode() + 180) * 1000000000);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.farLeft, i);
        parcel.writeParcelable(this.farRight, i);
        parcel.writeParcelable(this.nearLeft, i);
        parcel.writeParcelable(this.nearRight, i);
        parcel.writeParcelable(this.latLngBounds, i);
    }
}
