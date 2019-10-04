package com.mapbox.mapboxsdk.maps;

import androidx.collection.LongSparseArray;
import com.mapbox.mapboxsdk.annotations.Annotation;
import java.util.ArrayList;
import java.util.List;

class AnnotationContainer implements Annotations {
    private final LongSparseArray<Annotation> annotations;
    private final NativeMap nativeMap;

    AnnotationContainer(NativeMap nativeMap2, LongSparseArray<Annotation> longSparseArray) {
        this.nativeMap = nativeMap2;
        this.annotations = longSparseArray;
    }

    public Annotation obtainBy(long j) {
        return this.annotations.get(j);
    }

    public List<Annotation> obtainAll() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.annotations.size(); i++) {
            LongSparseArray<Annotation> longSparseArray = this.annotations;
            arrayList.add(longSparseArray.get(longSparseArray.keyAt(i)));
        }
        return arrayList;
    }

    public void removeBy(long j) {
        NativeMap nativeMap2 = this.nativeMap;
        if (nativeMap2 != null) {
            nativeMap2.removeAnnotation(j);
        }
        this.annotations.remove(j);
    }

    public void removeBy(Annotation annotation) {
        removeBy(annotation.getId());
    }

    public void removeBy(List<? extends Annotation> list) {
        int size = list.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = ((Annotation) list.get(i)).getId();
        }
        removeNativeAnnotations(jArr);
        for (int i2 = 0; i2 < size; i2++) {
            this.annotations.remove(jArr[i2]);
        }
    }

    public void removeAll() {
        int size = this.annotations.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = this.annotations.keyAt(i);
        }
        removeNativeAnnotations(jArr);
        this.annotations.clear();
    }

    private void removeNativeAnnotations(long[] jArr) {
        NativeMap nativeMap2 = this.nativeMap;
        if (nativeMap2 != null) {
            nativeMap2.removeAnnotations(jArr);
        }
    }
}
