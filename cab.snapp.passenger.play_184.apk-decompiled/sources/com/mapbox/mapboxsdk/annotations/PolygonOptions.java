package com.mapbox.mapboxsdk.annotations;

import android.os.Parcel;
import android.os.Parcelable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public final class PolygonOptions implements Parcelable {
    public static final Parcelable.Creator<PolygonOptions> CREATOR = new Parcelable.Creator<PolygonOptions>() {
        public final PolygonOptions createFromParcel(Parcel parcel) {
            return new PolygonOptions(parcel);
        }

        public final PolygonOptions[] newArray(int i) {
            return new PolygonOptions[i];
        }
    };
    private Polygon polygon;

    public final int describeContents() {
        return 0;
    }

    private PolygonOptions(Parcel parcel) {
        this.polygon = new Polygon();
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, LatLng.class.getClassLoader());
        addAll(arrayList);
        ArrayList arrayList2 = new ArrayList();
        parcel.readList(arrayList2, LatLng.class.getClassLoader());
        addAllHoles(arrayList2);
        alpha(parcel.readFloat());
        fillColor(parcel.readInt());
        strokeColor(parcel.readInt());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(getPoints());
        parcel.writeList(getHoles());
        parcel.writeFloat(getAlpha());
        parcel.writeInt(getFillColor());
        parcel.writeInt(getStrokeColor());
    }

    public PolygonOptions() {
        this.polygon = new Polygon();
    }

    public final PolygonOptions add(LatLng latLng) {
        this.polygon.addPoint(latLng);
        return this;
    }

    public final PolygonOptions add(LatLng... latLngArr) {
        for (LatLng add : latLngArr) {
            add(add);
        }
        return this;
    }

    public final PolygonOptions addAll(Iterable<LatLng> iterable) {
        for (LatLng add : iterable) {
            add(add);
        }
        return this;
    }

    public final PolygonOptions addHole(List<LatLng> list) {
        this.polygon.addHole(list);
        return this;
    }

    public final PolygonOptions addHole(List<LatLng>... listArr) {
        for (List<LatLng> addHole : listArr) {
            addHole(addHole);
        }
        return this;
    }

    public final PolygonOptions addAllHoles(Iterable<List<LatLng>> iterable) {
        for (List<LatLng> addHole : iterable) {
            addHole(addHole);
        }
        return this;
    }

    public final PolygonOptions alpha(float f) {
        this.polygon.setAlpha(f);
        return this;
    }

    public final float getAlpha() {
        return this.polygon.getAlpha();
    }

    public final PolygonOptions fillColor(int i) {
        this.polygon.setFillColor(i);
        return this;
    }

    public final int getFillColor() {
        return this.polygon.getFillColor();
    }

    public final Polygon getPolygon() {
        return this.polygon;
    }

    public final PolygonOptions strokeColor(int i) {
        this.polygon.setStrokeColor(i);
        return this;
    }

    public final int getStrokeColor() {
        return this.polygon.getStrokeColor();
    }

    public final List<LatLng> getPoints() {
        return this.polygon.getPoints();
    }

    public final List<List<LatLng>> getHoles() {
        return this.polygon.getHoles();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            PolygonOptions polygonOptions = (PolygonOptions) obj;
            if (Float.compare(polygonOptions.getAlpha(), getAlpha()) != 0 || getFillColor() != polygonOptions.getFillColor() || getStrokeColor() != polygonOptions.getStrokeColor()) {
                return false;
            }
            if (getPoints() == null ? polygonOptions.getPoints() == null : getPoints().equals(polygonOptions.getPoints())) {
                return getHoles() == null ? polygonOptions.getHoles() == null : getHoles().equals(polygonOptions.getHoles());
            }
            return false;
        }
    }

    public final int hashCode() {
        int i = 0;
        int floatToIntBits = ((((((((getAlpha() != 0.0f ? Float.floatToIntBits(getAlpha()) : 0) + 31) * 31) + getFillColor()) * 31) + getStrokeColor()) * 31) + (getPoints() != null ? getPoints().hashCode() : 0)) * 31;
        if (getHoles() != null) {
            i = getHoles().hashCode();
        }
        return floatToIntBits + i;
    }
}
