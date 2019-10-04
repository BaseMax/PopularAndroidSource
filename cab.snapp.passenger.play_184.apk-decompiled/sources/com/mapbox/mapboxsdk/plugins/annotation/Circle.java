package com.mapbox.mapboxsdk.plugins.annotation;

import android.graphics.PointF;
import com.google.gson.JsonObject;
import com.google.gson.k;
import com.mapbox.android.b.c;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.maps.Projection;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public class Circle extends Annotation<Point> {
    private final AnnotationManager<?, Circle, ?, ?, ?, ?> annotationManager;

    /* access modifiers changed from: package-private */
    public String getName() {
        return "Circle";
    }

    Circle(long j, AnnotationManager<?, Circle, ?, ?, ?, ?> annotationManager2, JsonObject jsonObject, Point point) {
        super(j, jsonObject, point);
        this.annotationManager = annotationManager2;
    }

    /* access modifiers changed from: package-private */
    public void setUsedDataDrivenProperties() {
        if (!(this.jsonObject.get("circle-radius") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("circle-radius");
        }
        if (!(this.jsonObject.get("circle-color") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("circle-color");
        }
        if (!(this.jsonObject.get("circle-blur") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("circle-blur");
        }
        if (!(this.jsonObject.get("circle-opacity") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("circle-opacity");
        }
        if (!(this.jsonObject.get("circle-stroke-width") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("circle-stroke-width");
        }
        if (!(this.jsonObject.get("circle-stroke-color") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("circle-stroke-color");
        }
        if (!(this.jsonObject.get("circle-stroke-opacity") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("circle-stroke-opacity");
        }
    }

    public void setLatLng(LatLng latLng) {
        this.geometry = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
    }

    public LatLng getLatLng() {
        return new LatLng(((Point) this.geometry).latitude(), ((Point) this.geometry).longitude());
    }

    public Float getCircleRadius() {
        return Float.valueOf(this.jsonObject.get("circle-radius").getAsFloat());
    }

    public void setCircleRadius(Float f) {
        this.jsonObject.addProperty("circle-radius", (Number) f);
    }

    public int getCircleColorAsInt() {
        return ColorUtils.rgbaToColor(this.jsonObject.get("circle-color").getAsString());
    }

    public String getCircleColor() {
        return this.jsonObject.get("circle-color").getAsString();
    }

    public void setCircleColor(int i) {
        this.jsonObject.addProperty("circle-color", ColorUtils.colorToRgbaString(i));
    }

    public void setCircleColor(String str) {
        this.jsonObject.addProperty("circle-color", str);
    }

    public Float getCircleBlur() {
        return Float.valueOf(this.jsonObject.get("circle-blur").getAsFloat());
    }

    public void setCircleBlur(Float f) {
        this.jsonObject.addProperty("circle-blur", (Number) f);
    }

    public Float getCircleOpacity() {
        return Float.valueOf(this.jsonObject.get("circle-opacity").getAsFloat());
    }

    public void setCircleOpacity(Float f) {
        this.jsonObject.addProperty("circle-opacity", (Number) f);
    }

    public Float getCircleStrokeWidth() {
        return Float.valueOf(this.jsonObject.get("circle-stroke-width").getAsFloat());
    }

    public void setCircleStrokeWidth(Float f) {
        this.jsonObject.addProperty("circle-stroke-width", (Number) f);
    }

    public int getCircleStrokeColorAsInt() {
        return ColorUtils.rgbaToColor(this.jsonObject.get("circle-stroke-color").getAsString());
    }

    public String getCircleStrokeColor() {
        return this.jsonObject.get("circle-stroke-color").getAsString();
    }

    public void setCircleStrokeColor(int i) {
        this.jsonObject.addProperty("circle-stroke-color", ColorUtils.colorToRgbaString(i));
    }

    public void setCircleStrokeColor(String str) {
        this.jsonObject.addProperty("circle-stroke-color", str);
    }

    public Float getCircleStrokeOpacity() {
        return Float.valueOf(this.jsonObject.get("circle-stroke-opacity").getAsFloat());
    }

    public void setCircleStrokeOpacity(Float f) {
        this.jsonObject.addProperty("circle-stroke-opacity", (Number) f);
    }

    /* access modifiers changed from: package-private */
    public Geometry getOffsetGeometry(Projection projection, c cVar, float f, float f2) {
        LatLng fromScreenLocation = projection.fromScreenLocation(new PointF(cVar.getCurrentX() - f, cVar.getCurrentY() - f2));
        if (fromScreenLocation.getLatitude() > 85.05112877980659d || fromScreenLocation.getLatitude() < -85.05112877980659d) {
            return null;
        }
        return Point.fromLngLat(fromScreenLocation.getLongitude(), fromScreenLocation.getLatitude());
    }
}
