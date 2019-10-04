package com.mapbox.mapboxsdk.plugins.annotation;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.LineString;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;
import java.util.ArrayList;
import java.util.List;

public class LineOptions extends Options<Line> {
    private static final String PROPERTY_IS_DRAGGABLE = "is-draggable";
    static final String PROPERTY_LINE_BLUR = "line-blur";
    static final String PROPERTY_LINE_COLOR = "line-color";
    static final String PROPERTY_LINE_GAP_WIDTH = "line-gap-width";
    static final String PROPERTY_LINE_JOIN = "line-join";
    static final String PROPERTY_LINE_OFFSET = "line-offset";
    static final String PROPERTY_LINE_OPACITY = "line-opacity";
    static final String PROPERTY_LINE_PATTERN = "line-pattern";
    static final String PROPERTY_LINE_WIDTH = "line-width";
    private JsonElement data;
    private LineString geometry;
    private boolean isDraggable;
    private Float lineBlur;
    private String lineColor;
    private Float lineGapWidth;
    private String lineJoin;
    private Float lineOffset;
    private Float lineOpacity;
    private String linePattern;
    private Float lineWidth;

    public LineOptions withLineJoin(String str) {
        this.lineJoin = str;
        return this;
    }

    public String getLineJoin() {
        return this.lineJoin;
    }

    public LineOptions withLineOpacity(Float f) {
        this.lineOpacity = f;
        return this;
    }

    public Float getLineOpacity() {
        return this.lineOpacity;
    }

    public LineOptions withLineColor(String str) {
        this.lineColor = str;
        return this;
    }

    public String getLineColor() {
        return this.lineColor;
    }

    public LineOptions withLineWidth(Float f) {
        this.lineWidth = f;
        return this;
    }

    public Float getLineWidth() {
        return this.lineWidth;
    }

    public LineOptions withLineGapWidth(Float f) {
        this.lineGapWidth = f;
        return this;
    }

    public Float getLineGapWidth() {
        return this.lineGapWidth;
    }

    public LineOptions withLineOffset(Float f) {
        this.lineOffset = f;
        return this;
    }

    public Float getLineOffset() {
        return this.lineOffset;
    }

    public LineOptions withLineBlur(Float f) {
        this.lineBlur = f;
        return this;
    }

    public Float getLineBlur() {
        return this.lineBlur;
    }

    public LineOptions withLinePattern(String str) {
        this.linePattern = str;
        return this;
    }

    public String getLinePattern() {
        return this.linePattern;
    }

    public LineOptions withLatLngs(List<LatLng> list) {
        ArrayList arrayList = new ArrayList();
        for (LatLng next : list) {
            arrayList.add(Point.fromLngLat(next.getLongitude(), next.getLatitude()));
        }
        this.geometry = LineString.fromLngLats((List<Point>) arrayList);
        return this;
    }

    public List<LatLng> getLatLngs() {
        ArrayList arrayList = new ArrayList();
        LineString lineString = this.geometry;
        if (lineString != null) {
            for (Point point : lineString.coordinates()) {
                arrayList.add(new LatLng(point.latitude(), point.longitude()));
            }
        }
        return arrayList;
    }

    public LineOptions withGeometry(LineString lineString) {
        this.geometry = lineString;
        return this;
    }

    public LineString getGeometry() {
        return this.geometry;
    }

    public boolean getDraggable() {
        return this.isDraggable;
    }

    public LineOptions withDraggable(boolean z) {
        this.isDraggable = z;
        return this;
    }

    public LineOptions withData(JsonElement jsonElement) {
        this.data = jsonElement;
        return this;
    }

    public JsonElement getData() {
        return this.data;
    }

    /* access modifiers changed from: package-private */
    public Line build(long j, AnnotationManager<?, Line, ?, ?, ?, ?> annotationManager) {
        if (this.geometry != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty(PROPERTY_LINE_JOIN, this.lineJoin);
            jsonObject.addProperty(PROPERTY_LINE_OPACITY, (Number) this.lineOpacity);
            jsonObject.addProperty(PROPERTY_LINE_COLOR, this.lineColor);
            jsonObject.addProperty(PROPERTY_LINE_WIDTH, (Number) this.lineWidth);
            jsonObject.addProperty(PROPERTY_LINE_GAP_WIDTH, (Number) this.lineGapWidth);
            jsonObject.addProperty(PROPERTY_LINE_OFFSET, (Number) this.lineOffset);
            jsonObject.addProperty(PROPERTY_LINE_BLUR, (Number) this.lineBlur);
            jsonObject.addProperty(PROPERTY_LINE_PATTERN, this.linePattern);
            Line line = new Line(j, annotationManager, jsonObject, this.geometry);
            line.setDraggable(this.isDraggable);
            line.setData(this.data);
            return line;
        }
        throw new RuntimeException("geometry field is required");
    }

    static LineOptions fromFeature(Feature feature) {
        if (feature.geometry() == null) {
            throw new RuntimeException("geometry field is required");
        } else if (!(feature.geometry() instanceof LineString)) {
            return null;
        } else {
            LineOptions lineOptions = new LineOptions();
            lineOptions.geometry = (LineString) feature.geometry();
            if (feature.hasProperty(PROPERTY_LINE_JOIN)) {
                lineOptions.lineJoin = feature.getProperty(PROPERTY_LINE_JOIN).getAsString();
            }
            if (feature.hasProperty(PROPERTY_LINE_OPACITY)) {
                lineOptions.lineOpacity = Float.valueOf(feature.getProperty(PROPERTY_LINE_OPACITY).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_LINE_COLOR)) {
                lineOptions.lineColor = feature.getProperty(PROPERTY_LINE_COLOR).getAsString();
            }
            if (feature.hasProperty(PROPERTY_LINE_WIDTH)) {
                lineOptions.lineWidth = Float.valueOf(feature.getProperty(PROPERTY_LINE_WIDTH).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_LINE_GAP_WIDTH)) {
                lineOptions.lineGapWidth = Float.valueOf(feature.getProperty(PROPERTY_LINE_GAP_WIDTH).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_LINE_OFFSET)) {
                lineOptions.lineOffset = Float.valueOf(feature.getProperty(PROPERTY_LINE_OFFSET).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_LINE_BLUR)) {
                lineOptions.lineBlur = Float.valueOf(feature.getProperty(PROPERTY_LINE_BLUR).getAsFloat());
            }
            if (feature.hasProperty(PROPERTY_LINE_PATTERN)) {
                lineOptions.linePattern = feature.getProperty(PROPERTY_LINE_PATTERN).getAsString();
            }
            if (feature.hasProperty(PROPERTY_IS_DRAGGABLE)) {
                lineOptions.isDraggable = feature.getProperty(PROPERTY_IS_DRAGGABLE).getAsBoolean();
            }
            return lineOptions;
        }
    }
}
