package com.mapbox.mapboxsdk.plugins.annotation;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Point;
import com.mapbox.geojson.Polygon;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

public class FillOptions extends Options<Fill> {
    static final String PROPERTY_FILL_COLOR = "fill-color";
    static final String PROPERTY_FILL_OPACITY = "fill-opacity";
    static final String PROPERTY_FILL_OUTLINE_COLOR = "fill-outline-color";
    static final String PROPERTY_FILL_PATTERN = "fill-pattern";
    private static final String PROPERTY_IS_DRAGGABLE = "is-draggable";
    private JsonElement data;
    private String fillColor;
    private Float fillOpacity;
    private String fillOutlineColor;
    private String fillPattern;
    private Polygon geometry;
    private boolean isDraggable;

    public FillOptions withFillOpacity(Float f) {
        this.fillOpacity = f;
        return this;
    }

    public Float getFillOpacity() {
        return this.fillOpacity;
    }

    public FillOptions withFillColor(String str) {
        this.fillColor = str;
        return this;
    }

    public String getFillColor() {
        return this.fillColor;
    }

    public FillOptions withFillOutlineColor(String str) {
        this.fillOutlineColor = str;
        return this;
    }

    public String getFillOutlineColor() {
        return this.fillOutlineColor;
    }

    public FillOptions withFillPattern(String str) {
        this.fillPattern = str;
        return this;
    }

    public String getFillPattern() {
        return this.fillPattern;
    }

    public FillOptions withLatLngs(List<List<LatLng>> list) {
        ArrayList arrayList = new ArrayList();
        for (List<LatLng> it : list) {
            ArrayList arrayList2 = new ArrayList();
            for (LatLng latLng : it) {
                arrayList2.add(Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude()));
            }
            arrayList.add(arrayList2);
        }
        this.geometry = Polygon.fromLngLats((List<List<Point>>) arrayList);
        return this;
    }

    public List<List<LatLng>> getLatLngs() {
        ArrayList arrayList = new ArrayList();
        Polygon polygon = this.geometry;
        if (polygon != null) {
            for (List<Point> it : polygon.coordinates()) {
                ArrayList arrayList2 = new ArrayList();
                for (Point point : it) {
                    arrayList2.add(new LatLng(point.latitude(), point.longitude()));
                }
                arrayList.add(arrayList2);
            }
        }
        return arrayList;
    }

    public FillOptions withGeometry(Polygon polygon) {
        this.geometry = polygon;
        return this;
    }

    public Polygon getGeometry() {
        return this.geometry;
    }

    public boolean getDraggable() {
        return this.isDraggable;
    }

    public FillOptions withDraggable(boolean z) {
        this.isDraggable = z;
        return this;
    }

    public FillOptions withData(JsonElement jsonElement) {
        this.data = jsonElement;
        return this;
    }

    public JsonElement getData() {
        return this.data;
    }

    /* access modifiers changed from: package-private */
    public Fill build(long j, AnnotationManager<?, Fill, ?, ?, ?, ?> annotationManager) {
        if (this.geometry != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(PROPERTY_FILL_OPACITY, (Number) this.fillOpacity);
            jsonObject.addProperty(PROPERTY_FILL_COLOR, this.fillColor);
            jsonObject.addProperty(PROPERTY_FILL_OUTLINE_COLOR, this.fillOutlineColor);
            jsonObject.addProperty(PROPERTY_FILL_PATTERN, this.fillPattern);
            Fill fill = new Fill(j, annotationManager, jsonObject, this.geometry);
            fill.setDraggable(this.isDraggable);
            fill.setData(this.data);
            return fill;
        }
        throw new RuntimeException("geometry field is required");
    }

    static FillOptions fromFeature(Feature feature) {
        if (feature.geometry() == null) {
            throw new RuntimeException("geometry field is required");
        } else if (!(feature.geometry() instanceof Polygon)) {
            return null;
        } else {
            FillOptions fillOptions = new FillOptions();
            fillOptions.geometry = (Polygon) feature.geometry();
            if (feature.hasProperty(PROPERTY_FILL_OPACITY)) {
                fillOptions.fillOpacity = Float.valueOf(feature.getProperty(PROPERTY_FILL_OPACITY).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_FILL_COLOR)) {
                fillOptions.fillColor = feature.getProperty(PROPERTY_FILL_COLOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_FILL_OUTLINE_COLOR)) {
                fillOptions.fillOutlineColor = feature.getProperty(PROPERTY_FILL_OUTLINE_COLOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_FILL_PATTERN)) {
                fillOptions.fillPattern = feature.getProperty(PROPERTY_FILL_PATTERN).getAsString();
            }
            if (feature.hasProperty(PROPERTY_IS_DRAGGABLE)) {
                fillOptions.isDraggable = feature.getProperty(PROPERTY_IS_DRAGGABLE).getAsBoolean();
            }
            return fillOptions;
        }
    }
}
