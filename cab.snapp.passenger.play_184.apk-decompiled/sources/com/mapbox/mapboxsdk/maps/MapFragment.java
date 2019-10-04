package com.mapbox.mapboxsdk.maps;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mapbox.mapboxsdk.utils.MapFragmentUtils;
import java.util.ArrayList;
import java.util.List;

public final class MapFragment extends Fragment implements OnMapReadyCallback {
    private MapView map;
    private final List<OnMapReadyCallback> mapReadyCallbackList = new ArrayList();
    private OnMapViewReadyCallback mapViewReadyCallback;
    private MapboxMap mapboxMap;

    public interface OnMapViewReadyCallback {
        void onMapViewReady(MapView mapView);
    }

    public static MapFragment newInstance() {
        return new MapFragment();
    }

    public static MapFragment newInstance(MapboxMapOptions mapboxMapOptions) {
        MapFragment mapFragment = new MapFragment();
        mapFragment.setArguments(MapFragmentUtils.createFragmentArgs(mapboxMapOptions));
        return mapFragment;
    }

    public final void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(context, attributeSet, bundle);
        setArguments(MapFragmentUtils.createFragmentArgs(MapboxMapOptions.createFromAttributes(context, attributeSet)));
    }

    public final void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnMapViewReadyCallback) {
            this.mapViewReadyCallback = (OnMapViewReadyCallback) context;
        }
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        Context context = layoutInflater.getContext();
        this.map = new MapView(context, MapFragmentUtils.resolveArgs(context, getArguments()));
        return this.map;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.map.onCreate(bundle);
        this.map.getMapAsync(this);
        OnMapViewReadyCallback onMapViewReadyCallback = this.mapViewReadyCallback;
        if (onMapViewReadyCallback != null) {
            onMapViewReadyCallback.onMapViewReady(this.map);
        }
    }

    public final void onMapReady(MapboxMap mapboxMap2) {
        this.mapboxMap = mapboxMap2;
        for (OnMapReadyCallback onMapReady : this.mapReadyCallbackList) {
            onMapReady.onMapReady(mapboxMap2);
        }
    }

    public final void onStart() {
        super.onStart();
        this.map.onStart();
    }

    public final void onResume() {
        super.onResume();
        this.map.onResume();
    }

    public final void onPause() {
        super.onPause();
        this.map.onPause();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        MapView mapView = this.map;
        if (mapView != null && !mapView.isDestroyed()) {
            this.map.onSaveInstanceState(bundle);
        }
    }

    public final void onStop() {
        super.onStop();
        this.map.onStop();
    }

    public final void onLowMemory() {
        super.onLowMemory();
        MapView mapView = this.map;
        if (mapView != null && !mapView.isDestroyed()) {
            this.map.onLowMemory();
        }
    }

    public final void onDestroyView() {
        super.onDestroyView();
        this.map.onDestroy();
    }

    public final void onDestroy() {
        super.onDestroy();
        this.mapReadyCallbackList.clear();
    }

    public final void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        MapboxMap mapboxMap2 = this.mapboxMap;
        if (mapboxMap2 == null) {
            this.mapReadyCallbackList.add(onMapReadyCallback);
        } else {
            onMapReadyCallback.onMapReady(mapboxMap2);
        }
    }
}
