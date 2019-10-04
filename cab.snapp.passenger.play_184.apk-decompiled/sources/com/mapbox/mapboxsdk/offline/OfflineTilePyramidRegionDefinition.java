package com.mapbox.mapboxsdk.offline;

import android.os.Parcel;
import android.os.Parcelable;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;

public class OfflineTilePyramidRegionDefinition implements OfflineRegionDefinition {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() {
        public final OfflineTilePyramidRegionDefinition createFromParcel(Parcel parcel) {
            return new OfflineTilePyramidRegionDefinition(parcel);
        }

        public final OfflineTilePyramidRegionDefinition[] newArray(int i) {
            return new OfflineTilePyramidRegionDefinition[i];
        }
    };
    private LatLngBounds bounds;
    private boolean includeIdeographs;
    private double maxZoom;
    private double minZoom;
    private float pixelRatio;
    private String styleURL;

    public int describeContents() {
        return 0;
    }

    public String getType() {
        return "tileregion";
    }

    public OfflineTilePyramidRegionDefinition(String str, LatLngBounds latLngBounds, double d, double d2, float f) {
        this(str, latLngBounds, d, d2, f, false);
    }

    public OfflineTilePyramidRegionDefinition(String str, LatLngBounds latLngBounds, double d, double d2, float f, boolean z) {
        this.styleURL = str;
        this.bounds = latLngBounds;
        this.minZoom = d;
        this.maxZoom = d2;
        this.pixelRatio = f;
        this.includeIdeographs = z;
    }

    public OfflineTilePyramidRegionDefinition(Parcel parcel) {
        this.styleURL = parcel.readString();
        this.bounds = new LatLngBounds.Builder().include(new LatLng(parcel.readDouble(), parcel.readDouble())).include(new LatLng(parcel.readDouble(), parcel.readDouble())).build();
        this.minZoom = parcel.readDouble();
        this.maxZoom = parcel.readDouble();
        this.pixelRatio = parcel.readFloat();
        this.includeIdeographs = parcel.readByte() != 0;
    }

    public String getStyleURL() {
        return this.styleURL;
    }

    public LatLngBounds getBounds() {
        return this.bounds;
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
        parcel.writeDouble(this.bounds.getLatNorth());
        parcel.writeDouble(this.bounds.getLonEast());
        parcel.writeDouble(this.bounds.getLatSouth());
        parcel.writeDouble(this.bounds.getLonWest());
        parcel.writeDouble(this.minZoom);
        parcel.writeDouble(this.maxZoom);
        parcel.writeFloat(this.pixelRatio);
        parcel.writeByte(this.includeIdeographs ? (byte) 1 : 0);
    }
}
