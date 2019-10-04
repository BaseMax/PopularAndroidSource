package com.mapbox.mapboxsdk.maps;

import androidx.collection.LongSparseArray;
import com.mapbox.mapboxsdk.annotations.Annotation;
import com.mapbox.mapboxsdk.annotations.Polyline;
import com.mapbox.mapboxsdk.annotations.PolylineOptions;
import java.util.ArrayList;
import java.util.List;

class PolylineContainer implements Polylines {
    private final LongSparseArray<Annotation> annotations;
    private final NativeMap nativeMap;

    PolylineContainer(NativeMap nativeMap2, LongSparseArray<Annotation> longSparseArray) {
        this.nativeMap = nativeMap2;
        this.annotations = longSparseArray;
    }

    public Polyline addBy(PolylineOptions polylineOptions, MapboxMap mapboxMap) {
        Polyline polyline = polylineOptions.getPolyline();
        if (!polyline.getPoints().isEmpty()) {
            NativeMap nativeMap2 = this.nativeMap;
            long addPolyline = nativeMap2 != null ? nativeMap2.addPolyline(polyline) : 0;
            polyline.setMapboxMap(mapboxMap);
            polyline.setId(addPolyline);
            this.annotations.put(addPolyline, polyline);
        }
        return polyline;
    }

    public List<Polyline> addBy(List<PolylineOptions> list, MapboxMap mapboxMap) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        if (this.nativeMap != null && size > 0) {
            for (PolylineOptions polyline : list) {
                Polyline polyline2 = polyline.getPolyline();
                if (!polyline2.getPoints().isEmpty()) {
                    arrayList.add(polyline2);
                }
            }
            long[] addPolylines = this.nativeMap.addPolylines(arrayList);
            for (int i = 0; i < addPolylines.length; i++) {
                Polyline polyline3 = (Polyline) arrayList.get(i);
                polyline3.setMapboxMap(mapboxMap);
                polyline3.setId(addPolylines[i]);
                this.annotations.put(addPolylines[i], polyline3);
            }
        }
        return arrayList;
    }

    public void update(Polyline polyline) {
        this.nativeMap.updatePolyline(polyline);
        LongSparseArray<Annotation> longSparseArray = this.annotations;
        longSparseArray.setValueAt(longSparseArray.indexOfKey(polyline.getId()), polyline);
    }

    public List<Polyline> obtainAll() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.annotations.size(); i++) {
            LongSparseArray<Annotation> longSparseArray = this.annotations;
            Annotation annotation = longSparseArray.get(longSparseArray.keyAt(i));
            if (annotation instanceof Polyline) {
                arrayList.add((Polyline) annotation);
            }
        }
        return arrayList;
    }
}
