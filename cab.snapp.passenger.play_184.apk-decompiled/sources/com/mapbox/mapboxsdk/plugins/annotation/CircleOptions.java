package com.mapbox.mapboxsdk.plugins.annotation;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;

public class CircleOptions extends Options<Circle> {
    static final String PROPERTY_CIRCLE_BLUR = "circle-blur";
    static final String PROPERTY_CIRCLE_COLOR = "circle-color";
    static final String PROPERTY_CIRCLE_OPACITY = "circle-opacity";
    static final String PROPERTY_CIRCLE_RADIUS = "circle-radius";
    static final String PROPERTY_CIRCLE_STROKE_COLOR = "circle-stroke-color";
    static final String PROPERTY_CIRCLE_STROKE_OPACITY = "circle-stroke-opacity";
    static final String PROPERTY_CIRCLE_STROKE_WIDTH = "circle-stroke-width";
    private static final String PROPERTY_IS_DRAGGABLE = "is-draggable";
    private Float circleBlur;
    private String circleColor;
    private Float circleOpacity;
    private Float circleRadius;
    private String circleStrokeColor;
    private Float circleStrokeOpacity;
    private Float circleStrokeWidth;
    private JsonElement data;
    private Point geometry;
    private boolean isDraggable;

    public CircleOptions withCircleRadius(Float f) {
        this.circleRadius = f;
        return this;
    }

    public Float getCircleRadius() {
        return this.circleRadius;
    }

    public CircleOptions withCircleColor(String str) {
        this.circleColor = str;
        return this;
    }

    public String getCircleColor() {
        return this.circleColor;
    }

    public CircleOptions withCircleBlur(Float f) {
        this.circleBlur = f;
        return this;
    }

    public Float getCircleBlur() {
        return this.circleBlur;
    }

    public CircleOptions withCircleOpacity(Float f) {
        this.circleOpacity = f;
        return this;
    }

    public Float getCircleOpacity() {
        return this.circleOpacity;
    }

    public CircleOptions withCircleStrokeWidth(Float f) {
        this.circleStrokeWidth = f;
        return this;
    }

    public Float getCircleStrokeWidth() {
        return this.circleStrokeWidth;
    }

    public CircleOptions withCircleStrokeColor(String str) {
        this.circleStrokeColor = str;
        return this;
    }

    public String getCircleStrokeColor() {
        return this.circleStrokeColor;
    }

    public CircleOptions withCircleStrokeOpacity(Float f) {
        this.circleStrokeOpacity = f;
        return this;
    }

    public Float getCircleStrokeOpacity() {
        return this.circleStrokeOpacity;
    }

    public CircleOptions withLatLng(LatLng latLng) {
        this.geometry = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
        return this;
    }

    public LatLng getLatLng() {
        Point point = this.geometry;
        if (point == null) {
            return null;
        }
        return new LatLng(point.latitude(), this.geometry.longitude());
    }

    public CircleOptions withGeometry(Point point) {
        this.geometry = point;
        return this;
    }

    public Point getGeometry() {
        return this.geometry;
    }

    public boolean getDraggable() {
        return this.isDraggable;
    }

    public CircleOptions withDraggable(boolean z) {
        this.isDraggable = z;
        return this;
    }

    public CircleOptions withData(JsonElement jsonElement) {
        this.data = jsonElement;
        return this;
    }

    public JsonElement getData() {
        return this.data;
    }

    /* access modifiers changed from: package-private */
    public Circle build(long j, AnnotationManager<?, Circle, ?, ?, ?, ?> annotationManager) {
        if (this.geometry != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(PROPERTY_CIRCLE_RADIUS, (Number) this.circleRadius);
            jsonObject.addProperty(PROPERTY_CIRCLE_COLOR, this.circleColor);
            jsonObject.addProperty(PROPERTY_CIRCLE_BLUR, (Number) this.circleBlur);
            jsonObject.addProperty(PROPERTY_CIRCLE_OPACITY, (Number) this.circleOpacity);
            jsonObject.addProperty(PROPERTY_CIRCLE_STROKE_WIDTH, (Number) this.circleStrokeWidth);
            jsonObject.addProperty(PROPERTY_CIRCLE_STROKE_COLOR, this.circleStrokeColor);
            jsonObject.addProperty(PROPERTY_CIRCLE_STROKE_OPACITY, (Number) this.circleStrokeOpacity);
            Circle circle = new Circle(j, annotationManager, jsonObject, this.geometry);
            circle.setDraggable(this.isDraggable);
            circle.setData(this.data);
            return circle;
        }
        throw new RuntimeException("geometry field is required");
    }

    static CircleOptions fromFeature(Feature feature) {
        if (feature.geometry() == null) {
            throw new RuntimeException("geometry field is required");
        } else if (!(feature.geometry() instanceof Point)) {
            return null;
        } else {
            CircleOptions circleOptions = new CircleOptions();
            circleOptions.geometry = (Point) feature.geometry();
            if (feature.hasProperty(PROPERTY_CIRCLE_RADIUS)) {
                circleOptions.circleRadius = Float.valueOf(feature.getProperty(PROPERTY_CIRCLE_RADIUS).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_CIRCLE_COLOR)) {
                circleOptions.circleColor = feature.getProperty(PROPERTY_CIRCLE_COLOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_CIRCLE_BLUR)) {
                circleOptions.circleBlur = Float.valueOf(feature.getProperty(PROPERTY_CIRCLE_BLUR).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_CIRCLE_OPACITY)) {
                circleOptions.circleOpacity = Float.valueOf(feature.getProperty(PROPERTY_CIRCLE_OPACITY).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_CIRCLE_STROKE_WIDTH)) {
                circleOptions.circleStrokeWidth = Float.valueOf(feature.getProperty(PROPERTY_CIRCLE_STROKE_WIDTH).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_CIRCLE_STROKE_COLOR)) {
                circleOptions.circleStrokeColor = feature.getProperty(PROPERTY_CIRCLE_STROKE_COLOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_CIRCLE_STROKE_OPACITY)) {
                circleOptions.circleStrokeOpacity = Float.valueOf(feature.getProperty(PROPERTY_CIRCLE_STROKE_OPACITY).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_IS_DRAGGABLE)) {
                circleOptions.isDraggable = feature.getProperty(PROPERTY_IS_DRAGGABLE).getAsBoolean();
            }
            return circleOptions;
        }
    }
}
