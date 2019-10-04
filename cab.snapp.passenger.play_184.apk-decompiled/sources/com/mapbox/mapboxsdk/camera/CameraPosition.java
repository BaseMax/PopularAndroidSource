package com.mapbox.mapboxsdk.camera;

import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.camera.CameraUpdateFactory;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.utils.MathUtils;

public final class CameraPosition implements Parcelable {
    public static final Parcelable.Creator<CameraPosition> CREATOR = new Parcelable.Creator<CameraPosition>() {
        public final CameraPosition createFromParcel(Parcel parcel) {
            double readDouble = parcel.readDouble();
            CameraPosition cameraPosition = new CameraPosition((LatLng) parcel.readParcelable(LatLng.class.getClassLoader()), parcel.readDouble(), parcel.readDouble(), readDouble);
            return cameraPosition;
        }

        public final CameraPosition[] newArray(int i) {
            return new CameraPosition[i];
        }
    };
    public static final CameraPosition DEFAULT;
    public final double bearing;
    public final LatLng target;
    public final double tilt;
    public final double zoom;

    public static final class Builder {
        private double bearing = -1.0d;
        private LatLng target = null;
        private double tilt = -1.0d;
        private double zoom = -1.0d;

        public Builder() {
        }

        public Builder(CameraPosition cameraPosition) {
            if (cameraPosition != null) {
                this.bearing = cameraPosition.bearing;
                this.target = cameraPosition.target;
                this.tilt = cameraPosition.tilt;
                this.zoom = cameraPosition.zoom;
            }
        }

        public Builder(TypedArray typedArray) {
            if (typedArray != null) {
                this.bearing = (double) typedArray.getFloat(R.styleable.mapbox_MapView_mapbox_cameraBearing, 0.0f);
                this.target = new LatLng((double) typedArray.getFloat(R.styleable.mapbox_MapView_mapbox_cameraTargetLat, 0.0f), (double) typedArray.getFloat(R.styleable.mapbox_MapView_mapbox_cameraTargetLng, 0.0f));
                this.tilt = (double) typedArray.getFloat(R.styleable.mapbox_MapView_mapbox_cameraTilt, 0.0f);
                this.zoom = (double) typedArray.getFloat(R.styleable.mapbox_MapView_mapbox_cameraZoom, 0.0f);
            }
        }

        public Builder(CameraUpdateFactory.CameraPositionUpdate cameraPositionUpdate) {
            if (cameraPositionUpdate != null) {
                this.bearing = cameraPositionUpdate.getBearing();
                this.target = cameraPositionUpdate.getTarget();
                this.tilt = cameraPositionUpdate.getTilt();
                this.zoom = cameraPositionUpdate.getZoom();
            }
        }

        public Builder(CameraUpdateFactory.ZoomUpdate zoomUpdate) {
            if (zoomUpdate != null) {
                this.zoom = zoomUpdate.getZoom();
            }
        }

        public final Builder bearing(double d) {
            while (d >= 360.0d) {
                d -= 360.0d;
            }
            while (d < 0.0d) {
                d += 360.0d;
            }
            this.bearing = d;
            return this;
        }

        public final Builder target(LatLng latLng) {
            this.target = latLng;
            return this;
        }

        public final Builder tilt(double d) {
            this.tilt = MathUtils.clamp(d, 0.0d, 60.0d);
            return this;
        }

        public final Builder zoom(double d) {
            this.zoom = d;
            return this;
        }

        public final CameraPosition build() {
            CameraPosition cameraPosition = new CameraPosition(this.target, this.zoom, this.tilt, this.bearing);
            return cameraPosition;
        }
    }

    public final int describeContents() {
        return 0;
    }

    static {
        CameraPosition cameraPosition = new CameraPosition(new LatLng(), 0.0d, 0.0d, 0.0d);
        DEFAULT = cameraPosition;
    }

    CameraPosition(LatLng latLng, double d, double d2, double d3) {
        this.target = latLng;
        this.bearing = d3;
        this.tilt = d2;
        this.zoom = d;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.bearing);
        parcel.writeParcelable(this.target, i);
        parcel.writeDouble(this.tilt);
        parcel.writeDouble(this.zoom);
    }

    public final String toString() {
        return "Target: " + this.target + ", Zoom:" + this.zoom + ", Bearing:" + this.bearing + ", Tilt:" + this.tilt;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CameraPosition cameraPosition = (CameraPosition) obj;
        LatLng latLng = this.target;
        return (latLng == null || latLng.equals(cameraPosition.target)) && this.zoom == cameraPosition.zoom && this.tilt == cameraPosition.tilt && this.bearing == cameraPosition.bearing;
    }

    public final int hashCode() {
        LatLng latLng = this.target;
        return (latLng != null ? latLng.hashCode() : 0) + 31;
    }
}
