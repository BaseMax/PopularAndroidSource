package com.mapbox.mapboxsdk.maps;

import android.graphics.RectF;
import com.mapbox.mapboxsdk.annotations.BaseMarkerOptions;
import com.mapbox.mapboxsdk.annotations.Marker;
import java.util.List;

interface Markers {
    Marker addBy(BaseMarkerOptions baseMarkerOptions, MapboxMap mapboxMap);

    List<Marker> addBy(List<? extends BaseMarkerOptions> list, MapboxMap mapboxMap);

    List<Marker> obtainAll();

    List<Marker> obtainAllIn(RectF rectF);

    void reload();

    void update(Marker marker, MapboxMap mapboxMap);
}
