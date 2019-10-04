package com.mapbox.mapboxsdk.plugins.annotation;

import android.graphics.PointF;
import com.google.gson.JsonObject;
import com.google.gson.k;
import com.mapbox.android.b.c;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.maps.Projection;
import com.mapbox.mapboxsdk.utils.ColorUtils;
import java.util.ArrayList;
import java.util.List;

public class Fill extends Annotation<Polygon> {
    private final AnnotationManager<?, Fill, ?, ?, ?, ?> annotationManager;

    /* access modifiers changed from: package-private */
    public String getName() {
        return "Fill";
    }

    Fill(long j, AnnotationManager<?, Fill, ?, ?, ?, ?> annotationManager2, JsonObject jsonObject, Polygon polygon) {
        super(j, jsonObject, polygon);
        this.annotationManager = annotationManager2;
    }

    /* access modifiers changed from: package-private */
    public void setUsedDataDrivenProperties() {
        if (!(this.jsonObject.get("fill-opacity") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("fill-opacity");
        }
        if (!(this.jsonObject.get("fill-color") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("fill-color");
        }
        if (!(this.jsonObject.get("fill-outline-color") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("fill-outline-color");
        }
        if (!(this.jsonObject.get("fill-pattern") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("fill-pattern");
        }
    }

    public void setLatLngs(List<List<LatLng>> list) {
        ArrayList arrayList = new ArrayList();
        for (List<LatLng> it : list) {
            ArrayList arrayList2 = new ArrayList();
            for (LatLng latLng : it) {
                arrayList2.add(Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude()));
            }
            arrayList.add(arrayList2);
        }
        this.geometry = Polygon.fromLngLats((List<List<Point>>) arrayList);
    }

    public List<List<LatLng>> getLatLngs() {
        ArrayList arrayList = new ArrayList();
        List<List> coordinates = ((Polygon) this.geometry).coordinates();
        if (coordinates != null) {
            for (List<Point> it : coordinates) {
                ArrayList arrayList2 = new ArrayList();
                for (Point point : it) {
                    arrayList2.add(new LatLng(point.latitude(), point.longitude()));
                }
                arrayList.add(arrayList2);
            }
        }
        return arrayList;
    }

    public Float getFillOpacity() {
        return Float.valueOf(this.jsonObject.get("fill-opacity").getAsFloat());
    }

    public void setFillOpacity(Float f) {
        this.jsonObject.addProperty("fill-opacity", (Number) f);
    }

    public int getFillColorAsInt() {
        return ColorUtils.rgbaToColor(this.jsonObject.get("fill-color").getAsString());
    }

    public String getFillColor() {
        return this.jsonObject.get("fill-color").getAsString();
    }

    public void setFillColor(int i) {
        this.jsonObject.addProperty("fill-color", ColorUtils.colorToRgbaString(i));
    }

    public void setFillColor(String str) {
        this.jsonObject.addProperty("fill-color", str);
    }

    public int getFillOutlineColorAsInt() {
        return ColorUtils.rgbaToColor(this.jsonObject.get("fill-outline-color").getAsString());
    }

    public String getFillOutlineColor() {
        return this.jsonObject.get("fill-outline-color").getAsString();
    }

    public void setFillOutlineColor(int i) {
        this.jsonObject.addProperty("fill-outline-color", ColorUtils.colorToRgbaString(i));
    }

    public void setFillOutlineColor(String str) {
        this.jsonObject.addProperty("fill-outline-color", str);
    }

    public String getFillPattern() {
        return this.jsonObject.get("fill-pattern").getAsString();
    }

    public void setFillPattern(String str) {
        this.jsonObject.addProperty("fill-pattern", str);
    }

    /* access modifiers changed from: package-private */
    public Geometry getOffsetGeometry(Projection projection, c cVar, float f, float f2) {
        List<List> coordinates = ((Polygon) this.geometry).coordinates();
        if (coordinates == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(coordinates.size());
        for (List<Point> it : coordinates) {
            ArrayList arrayList2 = new ArrayList();
            for (Point point : it) {
                PointF screenLocation = projection.toScreenLocation(new LatLng(point.latitude(), point.longitude()));
                screenLocation.x -= cVar.getDistanceXSinceLast();
                screenLocation.y -= cVar.getDistanceYSinceLast();
                LatLng fromScreenLocation = projection.fromScreenLocation(screenLocation);
                if (fromScreenLocation.getLatitude() > 85.05112877980659d || fromScreenLocation.getLatitude() < -85.05112877980659d) {
                    return null;
                }
                arrayList2.add(Point.fromLngLat(fromScreenLocation.getLongitude(), fromScreenLocation.getLatitude()));
            }
            arrayList.add(arrayList2);
        }
        return Polygon.fromLngLats((List<List<Point>>) arrayList);
    }
}
