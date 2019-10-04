package com.mapbox.mapboxsdk.offline;

import android.os.Parcel;
import android.os.Parcelable;
import com.mapbox.a.c;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;

public class OfflineGeometryRegionDefinition implements OfflineRegionDefinition {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() {
        public final OfflineGeometryRegionDefinition createFromParcel(Parcel parcel) {
            return new OfflineGeometryRegionDefinition(parcel);
        }

        public final OfflineGeometryRegionDefinition[] newArray(int i) {
            return new OfflineGeometryRegionDefinition[i];
        }
    };
    private Geometry geometry;
    private boolean includeIdeographs;
    private double maxZoom;
    private double minZoom;
    private float pixelRatio;
    private String styleURL;

    public int describeContents() {
        return 0;
    }

    public String getType() {
        return "shaperegion";
    }

    public OfflineGeometryRegionDefinition(String str, Geometry geometry2, double d, double d2, float f) {
        this(str, geometry2, d, d2, f, false);
    }

    public OfflineGeometryRegionDefinition(String str, Geometry geometry2, double d, double d2, float f, boolean z) {
        this.styleURL = str;
        this.geometry = geometry2;
        this.minZoom = d;
        this.maxZoom = d2;
        this.pixelRatio = f;
        this.includeIdeographs = z;
    }

    public OfflineGeometryRegionDefinition(Parcel parcel) {
        this.styleURL = parcel.readString();
        this.geometry = Feature.fromJson(parcel.readString()).geometry();
        this.minZoom = parcel.readDouble();
        this.maxZoom = parcel.readDouble();
        this.pixelRatio = parcel.readFloat();
        this.includeIdeographs = parcel.readByte() != 0;
    }

    public String getStyleURL() {
        return this.styleURL;
    }

    public Geometry getGeometry() {
        return this.geometry;
    }

    public LatLngBounds getBounds() {
        Geometry geometry2 = this.geometry;
        if (geometry2 == null) {
            return null;
        }
        double[] bbox = c.bbox(geometry2);
        return LatLngBounds.from(bbox[3], bbox[2], bbox[1], bbox[0]);
    }

    public double getMinZoom() {
        return this.minZoom;
    }

    public double getMaxZoom() {
        return this.maxZoom;
    }

    public float getPixelRatio() {
        return this.pixelRatio;
    }

    public boolean getIncludeIdeographs() {
        return this.includeIdeographs;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.styleURL);
        parcel.writeString(Feature.fromGeometry(this.geometry).toJson());
        parcel.writeDouble(this.minZoom);
        parcel.writeDouble(this.maxZoom);
        parcel.writeFloat(this.pixelRatio);
        parcel.writeByte(this.includeIdeographs ? (byte) 1 : 0);
    }
}
