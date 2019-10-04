package com.mapbox.mapboxsdk.plugins.annotation;

import com.mapbox.mapboxsdk.plugins.annotation.Annotation;

public interface OnAnnotationLongClickListener<T extends Annotation> {
    void onAnnotationLongClick(T t);
}
