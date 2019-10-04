package com.mapbox.mapboxsdk.plugins.annotation;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mapbox.android.b.c;
import com.mapbox.geojson.Geometry;
import com.mapbox.mapboxsdk.maps.Projection;

public abstract class Annotation<T extends Geometry> {
    static final String ID_DATA = "custom_data";
    static final String ID_KEY = "id";
    protected T geometry;
    private boolean isDraggable;
    protected JsonObject jsonObject;

    /* access modifiers changed from: package-private */
    public abstract String getName();

    /* access modifiers changed from: package-private */
    public abstract Geometry getOffsetGeometry(Projection projection, c cVar, float f, float f2);

    /* access modifiers changed from: package-private */
    public abstract void setUsedDataDrivenProperties();

    Annotation(long j, JsonObject jsonObject2, T t) {
        this.jsonObject = jsonObject2;
        this.jsonObject.addProperty(ID_KEY, (Number) Long.valueOf(j));
        this.geometry = t;
    }

    public void setGeometry(T t) {
        this.geometry = t;
    }

    public T getGeometry() {
        T t = this.geometry;
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    public long getId() {
        return this.jsonObject.get(ID_KEY).getAsLong();
    }

    /* access modifiers changed from: package-private */
    public JsonObject getFeature() {
        return this.jsonObject;
    }

    public boolean isDraggable() {
        return this.isDraggable;
    }

    public void setDraggable(boolean z) {
        this.isDraggable = z;
    }

    public void setData(JsonElement jsonElement) {
        this.jsonObject.add(ID_DATA, jsonElement);
    }

    public JsonElement getData() {
        return this.jsonObject.get(ID_DATA);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Annotation annotation = (Annotation) obj;
        if (this.isDraggable == annotation.isDraggable && this.jsonObject.equals(annotation.jsonObject)) {
            return this.geometry.equals(annotation.geometry);
        }
        return false;
    }

    public int hashCode() {
        return (((this.jsonObject.hashCode() * 31) + this.geometry.hashCode()) * 31) + (this.isDraggable ? 1 : 0);
    }

    public String toString() {
        return getName() + "{geometry=" + this.geometry + ", properties=" + this.jsonObject + ", isDraggable=" + this.isDraggable + '}';
    }
}
