package com.mapbox.mapboxsdk.plugins.annotation;

import com.mapbox.mapboxsdk.plugins.annotation.Annotation;

public interface OnAnnotationClickListener<T extends Annotation> {
    void onAnnotationClick(T t);
}
