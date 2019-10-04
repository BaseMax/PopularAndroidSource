package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.mapbox.mapboxsdk.maps.MapFragment;
import com.mapbox.mapboxsdk.utils.MapFragmentUtils;
import java.util.ArrayList;
import java.util.List;

public class SupportMapFragment extends Fragment implements OnMapReadyCallback {
    private MapView map;
    private final List<OnMapReadyCallback> mapReadyCallbackList = new ArrayList();
    private MapFragment.OnMapViewReadyCallback mapViewReadyCallback;
    private MapboxMap mapboxMap;

    public static SupportMapFragment newInstance() {
        return new SupportMapFragment();
    }

    public static SupportMapFragment newInstance(MapboxMapOptions mapboxMapOptions) {
        SupportMapFragment supportMapFragment = new SupportMapFragment();
        supportMapFragment.setArguments(MapFragmentUtils.createFragmentArgs(mapboxMapOptions));
        return supportMapFragment;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof MapFragment.OnMapViewReadyCallback) {
            this.mapViewReadyCallback = (MapFragment.OnMapViewReadyCallback) context;
        }
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(context, attributeSet, bundle);
        setArguments(MapFragmentUtils.createFragmentArgs(MapboxMapOptions.createFromAttributes(context, attributeSet)));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        Context context = layoutInflater.getContext();
        this.map = new MapView(context, MapFragmentUtils.resolveArgs(context, getArguments()));
        return this.map;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.map.onCreate(bundle);
        this.map.getMapAsync(this);
        MapFragment.OnMapViewReadyCallback onMapViewReadyCallback = this.mapViewReadyCallback;
        if (onMapViewReadyCallback != null) {
            onMapViewReadyCallback.onMapViewReady(this.map);
        }
    }

    public void onMapReady(MapboxMap mapboxMap2) {
        this.mapboxMap = mapboxMap2;
        for (OnMapReadyCallback onMapReady : this.mapReadyCallbackList) {
            onMapReady.onMapReady(mapboxMap2);
        }
    }

    public void onStart() {
        super.onStart();
        this.map.onStart();
    }

    public void onResume() {
        super.onResume();
        this.map.onResume();
    }

    public void onPause() {
        super.onPause();
        this.map.onPause();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        MapView mapView = this.map;
        if (mapView != null) {
            mapView.onSaveInstanceState(bundle);
        }
    }

    public void onStop() {
        super.onStop();
        this.map.onStop();
    }

    public void onLowMemory() {
        super.onLowMemory();
        MapView mapView = this.map;
        if (mapView != null) {
            mapView.onLowMemory();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.map.onDestroy();
    }

    public void onDestroy() {
        super.onDestroy();
        this.mapReadyCallbackList.clear();
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        MapboxMap mapboxMap2 = this.mapboxMap;
        if (mapboxMap2 == null) {
            this.mapReadyCallbackList.add(onMapReadyCallback);
        } else {
            onMapReadyCallback.onMapReady(mapboxMap2);
        }
    }
}
