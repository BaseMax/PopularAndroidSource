package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.a.a;
import com.google.android.gms.maps.model.a.g;
import com.google.android.gms.maps.model.a.j;
import com.google.android.gms.maps.model.a.m;
import com.google.android.gms.maps.model.a.s;
import com.google.android.gms.maps.model.a.v;
import com.google.android.gms.maps.model.a.z;

public interface b extends IInterface {
    g addCircle(CircleOptions circleOptions) throws RemoteException;

    j addGroundOverlay(GroundOverlayOptions groundOverlayOptions) throws RemoteException;

    s addMarker(MarkerOptions markerOptions) throws RemoteException;

    v addPolygon(PolygonOptions polygonOptions) throws RemoteException;

    a addPolyline(PolylineOptions polylineOptions) throws RemoteException;

    z addTileOverlay(TileOverlayOptions tileOverlayOptions) throws RemoteException;

    void animateCamera(com.google.android.gms.a.a aVar) throws RemoteException;

    void animateCameraWithCallback(com.google.android.gms.a.a aVar, bo boVar) throws RemoteException;

    void animateCameraWithDurationAndCallback(com.google.android.gms.a.a aVar, int i, bo boVar) throws RemoteException;

    void clear() throws RemoteException;

    CameraPosition getCameraPosition() throws RemoteException;

    m getFocusedBuilding() throws RemoteException;

    void getMapAsync(ac acVar) throws RemoteException;

    int getMapType() throws RemoteException;

    float getMaxZoomLevel() throws RemoteException;

    float getMinZoomLevel() throws RemoteException;

    Location getMyLocation() throws RemoteException;

    f getProjection() throws RemoteException;

    j getUiSettings() throws RemoteException;

    boolean isBuildingsEnabled() throws RemoteException;

    boolean isIndoorEnabled() throws RemoteException;

    boolean isMyLocationEnabled() throws RemoteException;

    boolean isTrafficEnabled() throws RemoteException;

    void moveCamera(com.google.android.gms.a.a aVar) throws RemoteException;

    void onCreate(Bundle bundle) throws RemoteException;

    void onDestroy() throws RemoteException;

    void onEnterAmbient(Bundle bundle) throws RemoteException;

    void onExitAmbient() throws RemoteException;

    void onLowMemory() throws RemoteException;

    void onPause() throws RemoteException;

    void onResume() throws RemoteException;

    void onSaveInstanceState(Bundle bundle) throws RemoteException;

    void onStart() throws RemoteException;

    void onStop() throws RemoteException;

    void resetMinMaxZoomPreference() throws RemoteException;

    void setBuildingsEnabled(boolean z) throws RemoteException;

    void setContentDescription(String str) throws RemoteException;

    boolean setIndoorEnabled(boolean z) throws RemoteException;

    void setInfoWindowAdapter(bt btVar) throws RemoteException;

    void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) throws RemoteException;

    void setLocationSource(c cVar) throws RemoteException;

    boolean setMapStyle(MapStyleOptions mapStyleOptions) throws RemoteException;

    void setMapType(int i) throws RemoteException;

    void setMaxZoomPreference(float f) throws RemoteException;

    void setMinZoomPreference(float f) throws RemoteException;

    void setMyLocationEnabled(boolean z) throws RemoteException;

    void setOnCameraChangeListener(bx bxVar) throws RemoteException;

    void setOnCameraIdleListener(bz bzVar) throws RemoteException;

    void setOnCameraMoveCanceledListener(cb cbVar) throws RemoteException;

    void setOnCameraMoveListener(cd cdVar) throws RemoteException;

    void setOnCameraMoveStartedListener(cf cfVar) throws RemoteException;

    void setOnCircleClickListener(ch chVar) throws RemoteException;

    void setOnGroundOverlayClickListener(cj cjVar) throws RemoteException;

    void setOnIndoorStateChangeListener(cl clVar) throws RemoteException;

    void setOnInfoWindowClickListener(o oVar) throws RemoteException;

    void setOnInfoWindowCloseListener(q qVar) throws RemoteException;

    void setOnInfoWindowLongClickListener(s sVar) throws RemoteException;

    void setOnMapClickListener(w wVar) throws RemoteException;

    void setOnMapLoadedCallback(y yVar) throws RemoteException;

    void setOnMapLongClickListener(aa aaVar) throws RemoteException;

    void setOnMarkerClickListener(ae aeVar) throws RemoteException;

    void setOnMarkerDragListener(ag agVar) throws RemoteException;

    void setOnMyLocationButtonClickListener(ai aiVar) throws RemoteException;

    void setOnMyLocationChangeListener(ak akVar) throws RemoteException;

    void setOnMyLocationClickListener(am amVar) throws RemoteException;

    void setOnPoiClickListener(ap apVar) throws RemoteException;

    void setOnPolygonClickListener(ar arVar) throws RemoteException;

    void setOnPolylineClickListener(at atVar) throws RemoteException;

    void setPadding(int i, int i2, int i3, int i4) throws RemoteException;

    void setTrafficEnabled(boolean z) throws RemoteException;

    void setWatermarkEnabled(boolean z) throws RemoteException;

    void snapshot(bg bgVar, com.google.android.gms.a.a aVar) throws RemoteException;

    void snapshotForTest(bg bgVar) throws RemoteException;

    void stopAnimation() throws RemoteException;

    boolean useViewLifecycleWhenInFragment() throws RemoteException;
}
