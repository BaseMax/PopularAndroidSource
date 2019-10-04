package com.mapbox.mapboxsdk.maps;

import com.mapbox.mapboxsdk.annotations.Polyline;
import com.mapbox.mapboxsdk.annotations.PolylineOptions;
import java.util.List;

interface Polylines {
    Polyline addBy(PolylineOptions polylineOptions, MapboxMap mapboxMap);

    List<Polyline> addBy(List<PolylineOptions> list, MapboxMap mapboxMap);

    List<Polyline> obtainAll();

    void update(Polyline polyline);
}
