package com.mapbox.mapboxsdk.camera;

import android.graphics.Point;
import android.graphics.PointF;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Projection;
import com.mapbox.mapboxsdk.maps.UiSettings;
import java.util.Arrays;

public final class CameraUpdateFactory {

    static final class CameraBoundsUpdate implements CameraUpdate {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final Double bearing;
        private final LatLngBounds bounds;
        private final int[] padding;
        private final Double tilt;

        static {
            Class<CameraUpdateFactory> cls = CameraUpdateFactory.class;
        }

        CameraBoundsUpdate(LatLngBounds latLngBounds, Double d, Double d2, int[] iArr) {
            this.bounds = latLngBounds;
            this.padding = iArr;
            this.bearing = d;
            this.tilt = d2;
        }

        CameraBoundsUpdate(LatLngBounds latLngBounds, Double d, Double d2, int i, int i2, int i3, int i4) {
            this(latLngBounds, d, d2, new int[]{i, i2, i3, i4});
        }

        public final LatLngBounds getBounds() {
            return this.bounds;
        }

        public final int[] getPadding() {
            return this.padding;
        }

        public final CameraPosition getCameraPosition(MapboxMap mapboxMap) {
            if (this.bearing == null && this.tilt == null) {
                return mapboxMap.getCameraForLatLngBounds(this.bounds, this.padding);
            }
            return mapboxMap.getCameraForLatLngBounds(this.bounds, this.padding, this.bearing.doubleValue(), this.tilt.doubleValue());
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            CameraBoundsUpdate cameraBoundsUpdate = (CameraBoundsUpdate) obj;
            if (!this.bounds.equals(cameraBoundsUpdate.bounds)) {
                return false;
            }
            return Arrays.equals(this.padding, cameraBoundsUpdate.padding);
        }

        public final int hashCode() {
            return (this.bounds.hashCode() * 31) + Arrays.hashCode(this.padding);
        }

        public final String toString() {
            return "CameraBoundsUpdate{bounds=" + this.bounds + ", padding=" + Arrays.toString(this.padding) + '}';
        }
    }

    static final class CameraMoveUpdate implements CameraUpdate {
        private float x;
        private float y;

        CameraMoveUpdate(float f, float f2) {
            this.x = f;
            this.y = f2;
        }

        public final CameraPosition getCameraPosition(MapboxMap mapboxMap) {
            UiSettings uiSettings = mapboxMap.getUiSettings();
            Projection projection = mapboxMap.getProjection();
            float width = uiSettings.getWidth();
            float height = uiSettings.getHeight();
            int[] padding = mapboxMap.getPadding();
            LatLng fromScreenLocation = projection.fromScreenLocation(new PointF((((width - ((float) padding[0])) + ((float) padding[1])) / 2.0f) + this.x, (((height + ((float) padding[1])) - ((float) padding[3])) / 2.0f) + this.y));
            CameraPosition cameraPosition = mapboxMap.getCameraPosition();
            return new CameraPosition.Builder().target(fromScreenLocation).zoom(cameraPosition.zoom).tilt(cameraPosition.tilt).bearing(cameraPosition.bearing).build();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                CameraMoveUpdate cameraMoveUpdate = (CameraMoveUpdate) obj;
                if (Float.compare(cameraMoveUpdate.x, this.x) == 0 && Float.compare(cameraMoveUpdate.y, this.y) == 0) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            float f = this.x;
            int i = 0;
            int floatToIntBits = (f != 0.0f ? Float.floatToIntBits(f) : 0) * 31;
            float f2 = this.y;
            if (f2 != 0.0f) {
                i = Float.floatToIntBits(f2);
            }
            return floatToIntBits + i;
        }

        public final String toString() {
            return "CameraMoveUpdate{x=" + this.x + ", y=" + this.y + '}';
        }
    }

    static final class CameraPositionUpdate implements CameraUpdate {
        private final double bearing;
        private final LatLng target;
        private final double tilt;
        private final double zoom;

        CameraPositionUpdate(double d, LatLng latLng, double d2, double d3) {
            this.bearing = d;
            this.target = latLng;
            this.tilt = d2;
            this.zoom = d3;
        }

        public final LatLng getTarget() {
            return this.target;
        }

        public final double getBearing() {
            return this.bearing;
        }

        public final double getTilt() {
            return this.tilt;
        }

        public final double getZoom() {
            return this.zoom;
        }

        public final CameraPosition getCameraPosition(MapboxMap mapboxMap) {
            CameraPosition cameraPosition = mapboxMap.getCameraPosition();
            if (this.target == null) {
                return new CameraPosition.Builder(this).target(cameraPosition.target).build();
            }
            return new CameraPosition.Builder(this).build();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                CameraPositionUpdate cameraPositionUpdate = (CameraPositionUpdate) obj;
                if (Double.compare(cameraPositionUpdate.bearing, this.bearing) != 0 || Double.compare(cameraPositionUpdate.tilt, this.tilt) != 0 || Double.compare(cameraPositionUpdate.zoom, this.zoom) != 0) {
                    return false;
                }
                LatLng latLng = this.target;
                LatLng latLng2 = cameraPositionUpdate.target;
                if (latLng != null) {
                    return latLng.equals(latLng2);
                }
                if (latLng2 == null) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            long doubleToLongBits = Double.doubleToLongBits(this.bearing);
            int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31;
            LatLng latLng = this.target;
            int hashCode = latLng != null ? latLng.hashCode() : 0;
            long doubleToLongBits2 = Double.doubleToLongBits(this.tilt);
            long doubleToLongBits3 = Double.doubleToLongBits(this.zoom);
            return ((((i + hashCode) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
        }

        public final String toString() {
            return "CameraPositionUpdate{bearing=" + this.bearing + ", target=" + this.target + ", tilt=" + this.tilt + ", zoom=" + this.zoom + '}';
        }
    }

    static final class ZoomUpdate implements CameraUpdate {
        static final int ZOOM_BY = 2;
        static final int ZOOM_IN = 0;
        static final int ZOOM_OUT = 1;
        static final int ZOOM_TO = 3;
        static final int ZOOM_TO_POINT = 4;
        private final int type;
        private float x;
        private float y;
        private final double zoom;

        ZoomUpdate(int i) {
            this.type = i;
            this.zoom = 0.0d;
        }

        ZoomUpdate(int i, double d) {
            this.type = i;
            this.zoom = d;
        }

        ZoomUpdate(double d, float f, float f2) {
            this.type = 4;
            this.zoom = d;
            this.x = f;
            this.y = f2;
        }

        public final double getZoom() {
            return this.zoom;
        }

        public final int getType() {
            return this.type;
        }

        public final float getX() {
            return this.x;
        }

        public final float getY() {
            return this.y;
        }

        /* access modifiers changed from: package-private */
        public final double transformZoom(double d) {
            double d2;
            int type2 = getType();
            if (type2 == 0) {
                return d + 1.0d;
            }
            if (type2 != 1) {
                if (type2 == 2) {
                    d2 = getZoom();
                } else if (type2 == 3) {
                    return getZoom();
                } else {
                    if (type2 != 4) {
                        return d;
                    }
                    d2 = getZoom();
                }
                return d + d2;
            }
            double d3 = d - 1.0d;
            if (d3 < 0.0d) {
                return 0.0d;
            }
            return d3;
        }

        public final CameraPosition getCameraPosition(MapboxMap mapboxMap) {
            CameraPosition cameraPosition = mapboxMap.getCameraPosition();
            if (getType() != 4) {
                return new CameraPosition.Builder(cameraPosition).zoom(transformZoom(cameraPosition.zoom)).build();
            }
            return new CameraPosition.Builder(cameraPosition).zoom(transformZoom(cameraPosition.zoom)).target(mapboxMap.getProjection().fromScreenLocation(new PointF(getX(), getY()))).build();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ZoomUpdate zoomUpdate = (ZoomUpdate) obj;
                if (this.type == zoomUpdate.type && Double.compare(zoomUpdate.zoom, this.zoom) == 0 && Float.compare(zoomUpdate.x, this.x) == 0 && Float.compare(zoomUpdate.y, this.y) == 0) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = this.type;
            long doubleToLongBits = Double.doubleToLongBits(this.zoom);
            int i2 = ((i * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31;
            float f = this.x;
            int i3 = 0;
            int floatToIntBits = (i2 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
            float f2 = this.y;
            if (f2 != 0.0f) {
                i3 = Float.floatToIntBits(f2);
            }
            return floatToIntBits + i3;
        }

        public final String toString() {
            return "ZoomUpdate{type=" + this.type + ", zoom=" + this.zoom + ", x=" + this.x + ", y=" + this.y + '}';
        }
    }

    public static CameraUpdate newCameraPosition(CameraPosition cameraPosition) {
        CameraPositionUpdate cameraPositionUpdate = new CameraPositionUpdate(cameraPosition.bearing, cameraPosition.target, cameraPosition.tilt, cameraPosition.zoom);
        return cameraPositionUpdate;
    }

    public static CameraUpdate newLatLng(LatLng latLng) {
        CameraPositionUpdate cameraPositionUpdate = new CameraPositionUpdate(-1.0d, latLng, -1.0d, -1.0d);
        return cameraPositionUpdate;
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i) {
        return newLatLngBounds(latLngBounds, i, i, i, i);
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, double d, double d2, int i) {
        return newLatLngBounds(latLngBounds, d, d2, i, i, i, i);
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i, int i2, int i3, int i4) {
        CameraBoundsUpdate cameraBoundsUpdate = new CameraBoundsUpdate(latLngBounds, null, null, i, i2, i3, i4);
        return cameraBoundsUpdate;
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, double d, double d2, int i, int i2, int i3, int i4) {
        CameraBoundsUpdate cameraBoundsUpdate = new CameraBoundsUpdate(latLngBounds, Double.valueOf(d), Double.valueOf(d2), i, i2, i3, i4);
        return cameraBoundsUpdate;
    }

    public static CameraUpdate newLatLngZoom(LatLng latLng, double d) {
        CameraPositionUpdate cameraPositionUpdate = new CameraPositionUpdate(-1.0d, latLng, -1.0d, d);
        return cameraPositionUpdate;
    }

    public static CameraUpdate zoomBy(double d, Point point) {
        return new ZoomUpdate(d, (float) point.x, (float) point.y);
    }

    public static CameraUpdate zoomBy(double d) {
        return new ZoomUpdate(2, d);
    }

    public static CameraUpdate zoomIn() {
        return new ZoomUpdate(0);
    }

    public static CameraUpdate zoomOut() {
        return new ZoomUpdate(1);
    }

    public static CameraUpdate zoomTo(double d) {
        return new ZoomUpdate(3, d);
    }

    public static CameraUpdate bearingTo(double d) {
        CameraPositionUpdate cameraPositionUpdate = new CameraPositionUpdate(d, null, -1.0d, -1.0d);
        return cameraPositionUpdate;
    }

    public static CameraUpdate tiltTo(double d) {
        CameraPositionUpdate cameraPositionUpdate = new CameraPositionUpdate(-1.0d, null, d, -1.0d);
        return cameraPositionUpdate;
    }
}
