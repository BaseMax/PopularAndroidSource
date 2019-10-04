package com.mapbox.mapboxsdk.maps;

import com.mapbox.mapboxsdk.annotations.Polygon;
import com.mapbox.mapboxsdk.annotations.PolygonOptions;
import java.util.List;

interface Polygons {
    Polygon addBy(PolygonOptions polygonOptions, MapboxMap mapboxMap);

    List<Polygon> addBy(List<PolygonOptions> list, MapboxMap mapboxMap);

    List<Polygon> obtainAll();

    void update(Polygon polygon);
}
