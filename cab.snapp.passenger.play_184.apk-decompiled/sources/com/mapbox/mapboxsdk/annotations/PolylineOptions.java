package com.mapbox.mapboxsdk.annotations;

import android.os.Parcel;
import android.os.Parcelable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public final class PolylineOptions implements Parcelable {
    public static final Parcelable.Creator<PolylineOptions> CREATOR = new Parcelable.Creator<PolylineOptions>() {
        public final PolylineOptions createFromParcel(Parcel parcel) {
            return new PolylineOptions(parcel);
        }

        public final PolylineOptions[] newArray(int i) {
            return new PolylineOptions[i];
        }
    };
    private Polyline polyline;

    public final int describeContents() {
        return 0;
    }

    private PolylineOptions(Parcel parcel) {
        this.polyline = new Polyline();
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, LatLng.class.getClassLoader());
        addAll(arrayList);
        alpha(parcel.readFloat());
        color(parcel.readInt());
        width(parcel.readFloat());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(getPoints());
        parcel.writeFloat(getAlpha());
        parcel.writeInt(getColor());
        parcel.writeFloat(getWidth());
    }

    public PolylineOptions() {
        this.polyline = new Polyline();
    }

    public final PolylineOptions add(LatLng latLng) {
        this.polyline.addPoint(latLng);
        return this;
    }

    public final PolylineOptions add(LatLng... latLngArr) {
        for (LatLng add : latLngArr) {
            add(add);
        }
        return this;
    }

    public final PolylineOptions addAll(Iterable<LatLng> iterable) {
        for (LatLng add : iterable) {
            add(add);
        }
        return this;
    }

    public final PolylineOptions alpha(float f) {
        this.polyline.setAlpha(f);
        return this;
    }

    public final float getAlpha() {
        return this.polyline.getAlpha();
    }

    public final PolylineOptions color(int i) {
        this.polyline.setColor(i);
        return this;
    }

    public final int getColor() {
        return this.polyline.getColor();
    }

    public final Polyline getPolyline() {
        return this.polyline;
    }

    public final float getWidth() {
        return this.polyline.getWidth();
    }

    public final PolylineOptions width(float f) {
        this.polyline.setWidth(f);
        return this;
    }

    public final List<LatLng> getPoints() {
        return this.polyline.getPoints();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            PolylineOptions polylineOptions = (PolylineOptions) obj;
            if (Float.compare(polylineOptions.getAlpha(), getAlpha()) == 0 && getColor() == polylineOptions.getColor() && Float.compare(polylineOptions.getWidth(), getWidth()) == 0) {
                return getPoints() == null ? polylineOptions.getPoints() == null : getPoints().equals(polylineOptions.getPoints());
            }
            return false;
        }
    }

    public final int hashCode() {
        int i = 0;
        int floatToIntBits = ((((((getAlpha() != 0.0f ? Float.floatToIntBits(getAlpha()) : 0) + 31) * 31) + getColor()) * 31) + (getWidth() != 0.0f ? Float.floatToIntBits(getWidth()) : 0)) * 31;
        if (getPoints() != null) {
            i = getPoints().hashCode();
        }
        return floatToIntBits + i;
    }
}
