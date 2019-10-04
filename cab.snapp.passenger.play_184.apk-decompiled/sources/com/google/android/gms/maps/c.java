package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.a.bp;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PointOfInterest;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;

public final class c {
    public static final int MAP_TYPE_HYBRID = 4;
    public static final int MAP_TYPE_NONE = 0;
    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    public static final int MAP_TYPE_TERRAIN = 3;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.gms.maps.a.b f3703a;

    /* renamed from: b  reason: collision with root package name */
    private j f3704b;

    public interface a {
        void onCancel();

        void onFinish();
    }

    public interface b {
        View getInfoContents(com.google.android.gms.maps.model.g gVar);

        View getInfoWindow(com.google.android.gms.maps.model.g gVar);
    }

    @Deprecated
    /* renamed from: com.google.android.gms.maps.c$c  reason: collision with other inner class name */
    public interface C0067c {
        void onCameraChange(CameraPosition cameraPosition);
    }

    public interface d {
        void onCameraIdle();
    }

    public interface e {
        void onCameraMoveCanceled();
    }

    public interface f {
        void onCameraMove();
    }

    public interface g {
        public static final int REASON_API_ANIMATION = 2;
        public static final int REASON_DEVELOPER_ANIMATION = 3;
        public static final int REASON_GESTURE = 1;

        void onCameraMoveStarted(int i);
    }

    public interface h {
        void onCircleClick(com.google.android.gms.maps.model.c cVar);
    }

    public interface i {
        void onGroundOverlayClick(com.google.android.gms.maps.model.d dVar);
    }

    public interface j {
        void onIndoorBuildingFocused();

        void onIndoorLevelActivated(com.google.android.gms.maps.model.e eVar);
    }

    public interface k {
        void onInfoWindowClick(com.google.android.gms.maps.model.g gVar);
    }

    public interface l {
        void onInfoWindowClose(com.google.android.gms.maps.model.g gVar);
    }

    public interface m {
        void onInfoWindowLongClick(com.google.android.gms.maps.model.g gVar);
    }

    public interface n {
        void onMapClick(LatLng latLng);
    }

    public interface o {
        void onMapLoaded();
    }

    public interface p {
        void onMapLongClick(LatLng latLng);
    }

    public interface q {
        boolean onMarkerClick(com.google.android.gms.maps.model.g gVar);
    }

    public interface r {
        void onMarkerDrag(com.google.android.gms.maps.model.g gVar);

        void onMarkerDragEnd(com.google.android.gms.maps.model.g gVar);

        void onMarkerDragStart(com.google.android.gms.maps.model.g gVar);
    }

    public interface s {
        boolean onMyLocationButtonClick();
    }

    @Deprecated
    public interface t {
        void onMyLocationChange(Location location);
    }

    public interface u {
        void onMyLocationClick(Location location);
    }

    public interface v {
        void onPoiClick(PointOfInterest pointOfInterest);
    }

    public interface w {
        void onPolygonClick(com.google.android.gms.maps.model.h hVar);
    }

    public interface x {
        void onPolylineClick(com.google.android.gms.maps.model.i iVar);
    }

    public interface y {
        void onSnapshotReady(Bitmap bitmap);
    }

    static final class z extends bp {

        /* renamed from: a  reason: collision with root package name */
        private final a f3705a;

        z(a aVar) {
            this.f3705a = aVar;
        }

        public final void onCancel() {
            this.f3705a.onCancel();
        }

        public final void onFinish() {
            this.f3705a.onFinish();
        }
    }

    public c(com.google.android.gms.maps.a.b bVar) {
        this.f3703a = (com.google.android.gms.maps.a.b) ap.checkNotNull(bVar);
    }

    public final com.google.android.gms.maps.model.c addCircle(CircleOptions circleOptions) {
        try {
            return new com.google.android.gms.maps.model.c(this.f3703a.addCircle(circleOptions));
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final com.google.android.gms.maps.model.d addGroundOverlay(GroundOverlayOptions groundOverlayOptions) {
        try {
            com.google.android.gms.maps.model.a.j addGroundOverlay = this.f3703a.addGroundOverlay(groundOverlayOptions);
            if (addGroundOverlay != null) {
                return new com.google.android.gms.maps.model.d(addGroundOverlay);
            }
            return null;
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final com.google.android.gms.maps.model.g addMarker(MarkerOptions markerOptions) {
        try {
            com.google.android.gms.maps.model.a.s addMarker = this.f3703a.addMarker(markerOptions);
            if (addMarker != null) {
                return new com.google.android.gms.maps.model.g(addMarker);
            }
            return null;
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final com.google.android.gms.maps.model.h addPolygon(PolygonOptions polygonOptions) {
        try {
            return new com.google.android.gms.maps.model.h(this.f3703a.addPolygon(polygonOptions));
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final com.google.android.gms.maps.model.i addPolyline(PolylineOptions polylineOptions) {
        try {
            return new com.google.android.gms.maps.model.i(this.f3703a.addPolyline(polylineOptions));
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final com.google.android.gms.maps.model.k addTileOverlay(TileOverlayOptions tileOverlayOptions) {
        try {
            com.google.android.gms.maps.model.a.z addTileOverlay = this.f3703a.addTileOverlay(tileOverlayOptions);
            if (addTileOverlay != null) {
                return new com.google.android.gms.maps.model.k(addTileOverlay);
            }
            return null;
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void animateCamera(a aVar) {
        try {
            this.f3703a.animateCamera(aVar.zzavz());
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void animateCamera(a aVar, int i2, a aVar2) {
        try {
            this.f3703a.animateCameraWithDurationAndCallback(aVar.zzavz(), i2, aVar2 == null ? null : new z(aVar2));
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void animateCamera(a aVar, a aVar2) {
        try {
            this.f3703a.animateCameraWithCallback(aVar.zzavz(), aVar2 == null ? null : new z(aVar2));
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void clear() {
        try {
            this.f3703a.clear();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final CameraPosition getCameraPosition() {
        try {
            return this.f3703a.getCameraPosition();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final com.google.android.gms.maps.model.e getFocusedBuilding() {
        try {
            com.google.android.gms.maps.model.a.m focusedBuilding = this.f3703a.getFocusedBuilding();
            if (focusedBuilding != null) {
                return new com.google.android.gms.maps.model.e(focusedBuilding);
            }
            return null;
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final int getMapType() {
        try {
            return this.f3703a.getMapType();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final float getMaxZoomLevel() {
        try {
            return this.f3703a.getMaxZoomLevel();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final float getMinZoomLevel() {
        try {
            return this.f3703a.getMinZoomLevel();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    @Deprecated
    public final Location getMyLocation() {
        try {
            return this.f3703a.getMyLocation();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final h getProjection() {
        try {
            return new h(this.f3703a.getProjection());
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final j getUiSettings() {
        try {
            if (this.f3704b == null) {
                this.f3704b = new j(this.f3703a.getUiSettings());
            }
            return this.f3704b;
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final boolean isBuildingsEnabled() {
        try {
            return this.f3703a.isBuildingsEnabled();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final boolean isIndoorEnabled() {
        try {
            return this.f3703a.isIndoorEnabled();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final boolean isMyLocationEnabled() {
        try {
            return this.f3703a.isMyLocationEnabled();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final boolean isTrafficEnabled() {
        try {
            return this.f3703a.isTrafficEnabled();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void moveCamera(a aVar) {
        try {
            this.f3703a.moveCamera(aVar.zzavz());
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void resetMinMaxZoomPreference() {
        try {
            this.f3703a.resetMinMaxZoomPreference();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void setBuildingsEnabled(boolean z2) {
        try {
            this.f3703a.setBuildingsEnabled(z2);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void setContentDescription(String str) {
        try {
            this.f3703a.setContentDescription(str);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final boolean setIndoorEnabled(boolean z2) {
        try {
            return this.f3703a.setIndoorEnabled(z2);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void setInfoWindowAdapter(b bVar) {
        if (bVar == null) {
            try {
                this.f3703a.setInfoWindowAdapter(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setInfoWindowAdapter(new aa(bVar));
        }
    }

    public final void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
        try {
            this.f3703a.setLatLngBoundsForCameraTarget(latLngBounds);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void setLocationSource(d dVar) {
        if (dVar == null) {
            try {
                this.f3703a.setLocationSource(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setLocationSource(new af(dVar));
        }
    }

    public final boolean setMapStyle(MapStyleOptions mapStyleOptions) {
        try {
            return this.f3703a.setMapStyle(mapStyleOptions);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void setMapType(int i2) {
        try {
            this.f3703a.setMapType(i2);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void setMaxZoomPreference(float f2) {
        try {
            this.f3703a.setMaxZoomPreference(f2);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void setMinZoomPreference(float f2) {
        try {
            this.f3703a.setMinZoomPreference(f2);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void setMyLocationEnabled(boolean z2) {
        try {
            this.f3703a.setMyLocationEnabled(z2);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    @Deprecated
    public final void setOnCameraChangeListener(C0067c cVar) {
        if (cVar == null) {
            try {
                this.f3703a.setOnCameraChangeListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnCameraChangeListener(new an(cVar));
        }
    }

    public final void setOnCameraIdleListener(d dVar) {
        if (dVar == null) {
            try {
                this.f3703a.setOnCameraIdleListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnCameraIdleListener(new ar(dVar));
        }
    }

    public final void setOnCameraMoveCanceledListener(e eVar) {
        if (eVar == null) {
            try {
                this.f3703a.setOnCameraMoveCanceledListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnCameraMoveCanceledListener(new aq(eVar));
        }
    }

    public final void setOnCameraMoveListener(f fVar) {
        if (fVar == null) {
            try {
                this.f3703a.setOnCameraMoveListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnCameraMoveListener(new ap(fVar));
        }
    }

    public final void setOnCameraMoveStartedListener(g gVar) {
        if (gVar == null) {
            try {
                this.f3703a.setOnCameraMoveStartedListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnCameraMoveStartedListener(new ao(gVar));
        }
    }

    public final void setOnCircleClickListener(h hVar) {
        if (hVar == null) {
            try {
                this.f3703a.setOnCircleClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnCircleClickListener(new ai(hVar));
        }
    }

    public final void setOnGroundOverlayClickListener(i iVar) {
        if (iVar == null) {
            try {
                this.f3703a.setOnGroundOverlayClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnGroundOverlayClickListener(new ah(iVar));
        }
    }

    public final void setOnIndoorStateChangeListener(j jVar) {
        if (jVar == null) {
            try {
                this.f3703a.setOnIndoorStateChangeListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnIndoorStateChangeListener(new k(jVar));
        }
    }

    public final void setOnInfoWindowClickListener(k kVar) {
        if (kVar == null) {
            try {
                this.f3703a.setOnInfoWindowClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnInfoWindowClickListener(new x(kVar));
        }
    }

    public final void setOnInfoWindowCloseListener(l lVar) {
        if (lVar == null) {
            try {
                this.f3703a.setOnInfoWindowCloseListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnInfoWindowCloseListener(new z(lVar));
        }
    }

    public final void setOnInfoWindowLongClickListener(m mVar) {
        if (mVar == null) {
            try {
                this.f3703a.setOnInfoWindowLongClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnInfoWindowLongClickListener(new y(mVar));
        }
    }

    public final void setOnMapClickListener(n nVar) {
        if (nVar == null) {
            try {
                this.f3703a.setOnMapClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnMapClickListener(new as(nVar));
        }
    }

    public final void setOnMapLoadedCallback(o oVar) {
        if (oVar == null) {
            try {
                this.f3703a.setOnMapLoadedCallback(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnMapLoadedCallback(new ae(oVar));
        }
    }

    public final void setOnMapLongClickListener(p pVar) {
        if (pVar == null) {
            try {
                this.f3703a.setOnMapLongClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnMapLongClickListener(new at(pVar));
        }
    }

    public final void setOnMarkerClickListener(q qVar) {
        if (qVar == null) {
            try {
                this.f3703a.setOnMarkerClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnMarkerClickListener(new v(qVar));
        }
    }

    public final void setOnMarkerDragListener(r rVar) {
        if (rVar == null) {
            try {
                this.f3703a.setOnMarkerDragListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnMarkerDragListener(new w(rVar));
        }
    }

    public final void setOnMyLocationButtonClickListener(s sVar) {
        if (sVar == null) {
            try {
                this.f3703a.setOnMyLocationButtonClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnMyLocationButtonClickListener(new ac(sVar));
        }
    }

    @Deprecated
    public final void setOnMyLocationChangeListener(t tVar) {
        if (tVar == null) {
            try {
                this.f3703a.setOnMyLocationChangeListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnMyLocationChangeListener(new ab(tVar));
        }
    }

    public final void setOnMyLocationClickListener(u uVar) {
        if (uVar == null) {
            try {
                this.f3703a.setOnMyLocationClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnMyLocationClickListener(new ad(uVar));
        }
    }

    public final void setOnPoiClickListener(v vVar) {
        if (vVar == null) {
            try {
                this.f3703a.setOnPoiClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnPoiClickListener(new am(vVar));
        }
    }

    public final void setOnPolygonClickListener(w wVar) {
        if (wVar == null) {
            try {
                this.f3703a.setOnPolygonClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnPolygonClickListener(new aj(wVar));
        }
    }

    public final void setOnPolylineClickListener(x xVar) {
        if (xVar == null) {
            try {
                this.f3703a.setOnPolylineClickListener(null);
            } catch (RemoteException e2) {
                throw new com.google.android.gms.maps.model.j(e2);
            }
        } else {
            this.f3703a.setOnPolylineClickListener(new ak(xVar));
        }
    }

    public final void setPadding(int i2, int i3, int i4, int i5) {
        try {
            this.f3703a.setPadding(i2, i3, i4, i5);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void setTrafficEnabled(boolean z2) {
        try {
            this.f3703a.setTrafficEnabled(z2);
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void snapshot(y yVar) {
        snapshot(yVar, null);
    }

    public final void snapshot(y yVar, Bitmap bitmap) {
        try {
            this.f3703a.snapshot(new al(yVar), (com.google.android.gms.a.m) (bitmap != null ? com.google.android.gms.a.m.zzz(bitmap) : null));
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }

    public final void stopAnimation() {
        try {
            this.f3703a.stopAnimation();
        } catch (RemoteException e2) {
            throw new com.google.android.gms.maps.model.j(e2);
        }
    }
}
