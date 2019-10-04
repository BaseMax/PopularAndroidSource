package com.mapbox.mapboxsdk.plugins.annotation;

import android.graphics.PointF;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.k;
import com.mapbox.android.b.c;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.maps.Projection;
import com.mapbox.mapboxsdk.utils.ColorUtils;

public class Symbol extends Annotation<Point> {
    private final AnnotationManager<?, Symbol, ?, ?, ?, ?> annotationManager;

    /* access modifiers changed from: package-private */
    public String getName() {
        return "Symbol";
    }

    Symbol(long j, AnnotationManager<?, Symbol, ?, ?, ?, ?> annotationManager2, JsonObject jsonObject, Point point) {
        super(j, jsonObject, point);
        this.annotationManager = annotationManager2;
    }

    /* access modifiers changed from: package-private */
    public void setUsedDataDrivenProperties() {
        if (!(this.jsonObject.get("symbol-sort-key") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("symbol-sort-key");
        }
        if (!(this.jsonObject.get("icon-size") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-size");
        }
        if (!(this.jsonObject.get("icon-image") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-image");
        }
        if (!(this.jsonObject.get("icon-rotate") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-rotate");
        }
        if (!(this.jsonObject.get("icon-offset") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-offset");
        }
        if (!(this.jsonObject.get("icon-anchor") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-anchor");
        }
        if (!(this.jsonObject.get("text-field") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-field");
        }
        if (!(this.jsonObject.get("text-font") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-font");
        }
        if (!(this.jsonObject.get("text-size") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-size");
        }
        if (!(this.jsonObject.get("text-max-width") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-max-width");
        }
        if (!(this.jsonObject.get("text-letter-spacing") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-letter-spacing");
        }
        if (!(this.jsonObject.get("text-justify") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-justify");
        }
        if (!(this.jsonObject.get("text-radial-offset") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-radial-offset");
        }
        if (!(this.jsonObject.get("text-anchor") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-anchor");
        }
        if (!(this.jsonObject.get("text-rotate") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-rotate");
        }
        if (!(this.jsonObject.get("text-transform") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-transform");
        }
        if (!(this.jsonObject.get("text-offset") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-offset");
        }
        if (!(this.jsonObject.get("icon-opacity") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-opacity");
        }
        if (!(this.jsonObject.get("icon-color") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-color");
        }
        if (!(this.jsonObject.get("icon-halo-color") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-halo-color");
        }
        if (!(this.jsonObject.get("icon-halo-width") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-halo-width");
        }
        if (!(this.jsonObject.get("icon-halo-blur") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("icon-halo-blur");
        }
        if (!(this.jsonObject.get("text-opacity") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-opacity");
        }
        if (!(this.jsonObject.get("text-color") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-color");
        }
        if (!(this.jsonObject.get("text-halo-color") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-halo-color");
        }
        if (!(this.jsonObject.get("text-halo-width") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-halo-width");
        }
        if (!(this.jsonObject.get("text-halo-blur") instanceof k)) {
            this.annotationManager.enableDataDrivenProperty("text-halo-blur");
        }
    }

    public void setLatLng(LatLng latLng) {
        this.geometry = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
    }

    public LatLng getLatLng() {
        return new LatLng(((Point) this.geometry).latitude(), ((Point) this.geometry).longitude());
    }

    public Float getSymbolSortKey() {
        return Float.valueOf(this.jsonObject.get("symbol-sort-key").getAsFloat());
    }

    public void setSymbolSortKey(Float f) {
        this.jsonObject.addProperty("symbol-sort-key", (Number) f);
    }

    public Float getIconSize() {
        return Float.valueOf(this.jsonObject.get("icon-size").getAsFloat());
    }

    public void setIconSize(Float f) {
        this.jsonObject.addProperty("icon-size", (Number) f);
    }

    public String getIconImage() {
        return this.jsonObject.get("icon-image").getAsString();
    }

    public void setIconImage(String str) {
        this.jsonObject.addProperty("icon-image", str);
    }

    public Float getIconRotate() {
        return Float.valueOf(this.jsonObject.get("icon-rotate").getAsFloat());
    }

    public void setIconRotate(Float f) {
        this.jsonObject.addProperty("icon-rotate", (Number) f);
    }

    public PointF getIconOffset() {
        JsonArray asJsonArray = this.jsonObject.getAsJsonArray("icon-offset");
        return new PointF(asJsonArray.get(0).getAsFloat(), asJsonArray.get(1).getAsFloat());
    }

    public void setIconOffset(PointF pointF) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add((Number) Float.valueOf(pointF.x));
        jsonArray.add((Number) Float.valueOf(pointF.y));
        this.jsonObject.add("icon-offset", jsonArray);
    }

    public String getIconAnchor() {
        return this.jsonObject.get("icon-anchor").getAsString();
    }

    public void setIconAnchor(String str) {
        this.jsonObject.addProperty("icon-anchor", str);
    }

    public String getTextField() {
        return this.jsonObject.get("text-field").getAsString();
    }

    public void setTextField(String str) {
        this.jsonObject.addProperty("text-field", str);
    }

    public String[] getTextFont() {
        JsonArray asJsonArray = this.jsonObject.getAsJsonArray("text-font");
        String[] strArr = new String[asJsonArray.size()];
        for (int i = 0; i < asJsonArray.size(); i++) {
            strArr[i] = asJsonArray.get(i).getAsString();
        }
        return strArr;
    }

    public void setTextFont(String[] strArr) {
        JsonArray jsonArray = new JsonArray();
        for (String add : strArr) {
            jsonArray.add(add);
        }
        this.jsonObject.add("text-font", jsonArray);
    }

    public Float getTextSize() {
        return Float.valueOf(this.jsonObject.get("text-size").getAsFloat());
    }

    public void setTextSize(Float f) {
        this.jsonObject.addProperty("text-size", (Number) f);
    }

    public Float getTextMaxWidth() {
        return Float.valueOf(this.jsonObject.get("text-max-width").getAsFloat());
    }

    public void setTextMaxWidth(Float f) {
        this.jsonObject.addProperty("text-max-width", (Number) f);
    }

    public Float getTextLetterSpacing() {
        return Float.valueOf(this.jsonObject.get("text-letter-spacing").getAsFloat());
    }

    public void setTextLetterSpacing(Float f) {
        this.jsonObject.addProperty("text-letter-spacing", (Number) f);
    }

    public String getTextJustify() {
        return this.jsonObject.get("text-justify").getAsString();
    }

    public void setTextJustify(String str) {
        this.jsonObject.addProperty("text-justify", str);
    }

    public Float getTextRadialOffset() {
        return Float.valueOf(this.jsonObject.get("text-radial-offset").getAsFloat());
    }

    public void setTextRadialOffset(Float f) {
        this.jsonObject.addProperty("text-radial-offset", (Number) f);
    }

    public String getTextAnchor() {
        return this.jsonObject.get("text-anchor").getAsString();
    }

    public void setTextAnchor(String str) {
        this.jsonObject.addProperty("text-anchor", str);
    }

    public Float getTextRotate() {
        return Float.valueOf(this.jsonObject.get("text-rotate").getAsFloat());
    }

    public void setTextRotate(Float f) {
        this.jsonObject.addProperty("text-rotate", (Number) f);
    }

    public String getTextTransform() {
        return this.jsonObject.get("text-transform").getAsString();
    }

    public void setTextTransform(String str) {
        this.jsonObject.addProperty("text-transform", str);
    }

    public PointF getTextOffset() {
        JsonArray asJsonArray = this.jsonObject.getAsJsonArray("text-offset");
        return new PointF(asJsonArray.get(0).getAsFloat(), asJsonArray.get(1).getAsFloat());
    }

    public void setTextOffset(PointF pointF) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add((Number) Float.valueOf(pointF.x));
        jsonArray.add((Number) Float.valueOf(pointF.y));
        this.jsonObject.add("text-offset", jsonArray);
    }

    public Float getIconOpacity() {
        return Float.valueOf(this.jsonObject.get("icon-opacity").getAsFloat());
    }

    public void setIconOpacity(Float f) {
        this.jsonObject.addProperty("icon-opacity", (Number) f);
    }

    public int getIconColorAsInt() {
        return ColorUtils.rgbaToColor(this.jsonObject.get("icon-color").getAsString());
    }

    public String getIconColor() {
        return this.jsonObject.get("icon-color").getAsString();
    }

    public void setIconColor(int i) {
        this.jsonObject.addProperty("icon-color", ColorUtils.colorToRgbaString(i));
    }

    public void setIconColor(String str) {
        this.jsonObject.addProperty("icon-color", str);
    }

    public int getIconHaloColorAsInt() {
        return ColorUtils.rgbaToColor(this.jsonObject.get("icon-halo-color").getAsString());
    }

    public String getIconHaloColor() {
        return this.jsonObject.get("icon-halo-color").getAsString();
    }

    public void setIconHaloColor(int i) {
        this.jsonObject.addProperty("icon-halo-color", ColorUtils.colorToRgbaString(i));
    }

    public void setIconHaloColor(String str) {
        this.jsonObject.addProperty("icon-halo-color", str);
    }

    public Float getIconHaloWidth() {
        return Float.valueOf(this.jsonObject.get("icon-halo-width").getAsFloat());
    }

    public void setIconHaloWidth(Float f) {
        this.jsonObject.addProperty("icon-halo-width", (Number) f);
    }

    public Float getIconHaloBlur() {
        return Float.valueOf(this.jsonObject.get("icon-halo-blur").getAsFloat());
    }

    public void setIconHaloBlur(Float f) {
        this.jsonObject.addProperty("icon-halo-blur", (Number) f);
    }

    public Float getTextOpacity() {
        return Float.valueOf(this.jsonObject.get("text-opacity").getAsFloat());
    }

    public void setTextOpacity(Float f) {
        this.jsonObject.addProperty("text-opacity", (Number) f);
    }

    public int getTextColorAsInt() {
        return ColorUtils.rgbaToColor(this.jsonObject.get("text-color").getAsString());
    }

    public String getTextColor() {
        return this.jsonObject.get("text-color").getAsString();
    }

    public void setTextColor(int i) {
        this.jsonObject.addProperty("text-color", ColorUtils.colorToRgbaString(i));
    }

    public void setTextColor(String str) {
        this.jsonObject.addProperty("text-color", str);
    }

    public int getTextHaloColorAsInt() {
        return ColorUtils.rgbaToColor(this.jsonObject.get("text-halo-color").getAsString());
    }

    public String getTextHaloColor() {
        return this.jsonObject.get("text-halo-color").getAsString();
    }

    public void setTextHaloColor(int i) {
        this.jsonObject.addProperty("text-halo-color", ColorUtils.colorToRgbaString(i));
    }

    public void setTextHaloColor(String str) {
        this.jsonObject.addProperty("text-halo-color", str);
    }

    public Float getTextHaloWidth() {
        return Float.valueOf(this.jsonObject.get("text-halo-width").getAsFloat());
    }

    public void setTextHaloWidth(Float f) {
        this.jsonObject.addProperty("text-halo-width", (Number) f);
    }

    public Float getTextHaloBlur() {
        return Float.valueOf(this.jsonObject.get("text-halo-blur").getAsFloat());
    }

    public void setTextHaloBlur(Float f) {
        this.jsonObject.addProperty("text-halo-blur", (Number) f);
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
