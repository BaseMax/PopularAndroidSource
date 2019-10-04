package com.mapbox.mapboxsdk.plugins.annotation;

import com.mapbox.mapboxsdk.plugins.annotation.Annotation;

public abstract class Options<T extends Annotation> {
    /* access modifiers changed from: package-private */
    public abstract T build(long j, AnnotationManager<?, T, ?, ?, ?, ?> annotationManager);
}
