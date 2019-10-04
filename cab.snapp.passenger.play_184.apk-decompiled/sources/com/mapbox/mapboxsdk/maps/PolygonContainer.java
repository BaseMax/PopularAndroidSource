package com.mapbox.mapboxsdk.maps;

import androidx.collection.LongSparseArray;
import com.mapbox.mapboxsdk.annotations.Annotation;
import com.mapbox.mapboxsdk.annotations.Polygon;
import com.mapbox.mapboxsdk.annotations.PolygonOptions;
import java.util.ArrayList;
import java.util.List;

class PolygonContainer implements Polygons {
    private final LongSparseArray<Annotation> annotations;
    private final NativeMap nativeMap;

    PolygonContainer(NativeMap nativeMap2, LongSparseArray<Annotation> longSparseArray) {
        this.nativeMap = nativeMap2;
        this.annotations = longSparseArray;
    }

    public Polygon addBy(PolygonOptions polygonOptions, MapboxMap mapboxMap) {
        Polygon polygon = polygonOptions.getPolygon();
        if (!polygon.getPoints().isEmpty()) {
            NativeMap nativeMap2 = this.nativeMap;
            long addPolygon = nativeMap2 != null ? nativeMap2.addPolygon(polygon) : 0;
            polygon.setId(addPolygon);
            polygon.setMapboxMap(mapboxMap);
            this.annotations.put(addPolygon, polygon);
        }
        return polygon;
    }

    public List<Polygon> addBy(List<PolygonOptions> list, MapboxMap mapboxMap) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        if (this.nativeMap != null && size > 0) {
            for (PolygonOptions polygon : list) {
                Polygon polygon2 = polygon.getPolygon();
                if (!polygon2.getPoints().isEmpty()) {
                    arrayList.add(polygon2);
                }
            }
            long[] addPolygons = this.nativeMap.addPolygons(arrayList);
            for (int i = 0; i < addPolygons.length; i++) {
                Polygon polygon3 = (Polygon) arrayList.get(i);
                polygon3.setMapboxMap(mapboxMap);
                polygon3.setId(addPolygons[i]);
                this.annotations.put(addPolygons[i], polygon3);
            }
        }
        return arrayList;
    }

    public void update(Polygon polygon) {
        this.nativeMap.updatePolygon(polygon);
        LongSparseArray<Annotation> longSparseArray = this.annotations;
        longSparseArray.setValueAt(longSparseArray.indexOfKey(polygon.getId()), polygon);
    }

    public List<Polygon> obtainAll() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.annotations.size(); i++) {
            LongSparseArray<Annotation> longSparseArray = this.annotations;
            Annotation annotation = longSparseArray.get(longSparseArray.keyAt(i));
            if (annotation instanceof Polygon) {
                arrayList.add((Polygon) annotation);
            }
        }
        return arrayList;
    }
}
