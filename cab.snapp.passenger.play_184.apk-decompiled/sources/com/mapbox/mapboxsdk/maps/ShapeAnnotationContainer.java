package com.mapbox.mapboxsdk.maps;

import android.graphics.RectF;
import androidx.collection.LongSparseArray;
import com.mapbox.mapboxsdk.annotations.Annotation;
import java.util.ArrayList;
import java.util.List;

class ShapeAnnotationContainer implements ShapeAnnotations {
    private final LongSparseArray<Annotation> annotations;
    private final NativeMap nativeMapView;

    ShapeAnnotationContainer(NativeMap nativeMap, LongSparseArray<Annotation> longSparseArray) {
        this.nativeMapView = nativeMap;
        this.annotations = longSparseArray;
    }

    public List<Annotation> obtainAllIn(RectF rectF) {
        return getAnnotationsFromIds(this.nativeMapView.queryShapeAnnotations(this.nativeMapView.getDensityDependantRectangle(rectF)));
    }

    private List<Annotation> getAnnotationsFromIds(long[] jArr) {
        ArrayList arrayList = new ArrayList();
        for (long j : jArr) {
            Annotation annotation = this.annotations.get(j);
            if (annotation != null) {
                arrayList.add(annotation);
            }
        }
        return arrayList;
    }
}
