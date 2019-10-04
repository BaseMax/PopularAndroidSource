package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;
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
import com.google.android.gms.maps.model.a.aa;
import com.google.android.gms.maps.model.a.g;
import com.google.android.gms.maps.model.a.h;
import com.google.android.gms.maps.model.a.j;
import com.google.android.gms.maps.model.a.k;
import com.google.android.gms.maps.model.a.m;
import com.google.android.gms.maps.model.a.n;
import com.google.android.gms.maps.model.a.s;
import com.google.android.gms.maps.model.a.t;
import com.google.android.gms.maps.model.a.v;
import com.google.android.gms.maps.model.a.w;
import com.google.android.gms.maps.model.a.z;

public final class bs extends oo implements b {
    bs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IGoogleMapDelegate");
    }

    public final g addCircle(CircleOptions circleOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) circleOptions);
        Parcel a3 = a(35, a2);
        g zzbg = h.zzbg(a3.readStrongBinder());
        a3.recycle();
        return zzbg;
    }

    public final j addGroundOverlay(GroundOverlayOptions groundOverlayOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) groundOverlayOptions);
        Parcel a3 = a(12, a2);
        j zzbh = k.zzbh(a3.readStrongBinder());
        a3.recycle();
        return zzbh;
    }

    public final s addMarker(MarkerOptions markerOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) markerOptions);
        Parcel a3 = a(11, a2);
        s zzbk = t.zzbk(a3.readStrongBinder());
        a3.recycle();
        return zzbk;
    }

    public final v addPolygon(PolygonOptions polygonOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) polygonOptions);
        Parcel a3 = a(10, a2);
        v zzbl = w.zzbl(a3.readStrongBinder());
        a3.recycle();
        return zzbl;
    }

    public final a addPolyline(PolylineOptions polylineOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) polylineOptions);
        Parcel a3 = a(9, a2);
        a zzbm = a.C0068a.zzbm(a3.readStrongBinder());
        a3.recycle();
        return zzbm;
    }

    public final z addTileOverlay(TileOverlayOptions tileOverlayOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) tileOverlayOptions);
        Parcel a3 = a(13, a2);
        z zzbn = aa.zzbn(a3.readStrongBinder());
        a3.recycle();
        return zzbn;
    }

    public final void animateCamera(com.google.android.gms.a.a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        b(5, a2);
    }

    public final void animateCameraWithCallback(com.google.android.gms.a.a aVar, bo boVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        oq.zza(a2, (IInterface) boVar);
        b(6, a2);
    }

    public final void animateCameraWithDurationAndCallback(com.google.android.gms.a.a aVar, int i, bo boVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        a2.writeInt(i);
        oq.zza(a2, (IInterface) boVar);
        b(7, a2);
    }

    public final void clear() throws RemoteException {
        b(14, a());
    }

    public final CameraPosition getCameraPosition() throws RemoteException {
        Parcel a2 = a(1, a());
        CameraPosition cameraPosition = (CameraPosition) oq.zza(a2, CameraPosition.CREATOR);
        a2.recycle();
        return cameraPosition;
    }

    public final m getFocusedBuilding() throws RemoteException {
        Parcel a2 = a(44, a());
        m zzbi = n.zzbi(a2.readStrongBinder());
        a2.recycle();
        return zzbi;
    }

    public final void getMapAsync(ac acVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) acVar);
        b(53, a2);
    }

    public final int getMapType() throws RemoteException {
        Parcel a2 = a(15, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final float getMaxZoomLevel() throws RemoteException {
        Parcel a2 = a(2, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final float getMinZoomLevel() throws RemoteException {
        Parcel a2 = a(3, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final Location getMyLocation() throws RemoteException {
        Parcel a2 = a(23, a());
        Location location = (Location) oq.zza(a2, Location.CREATOR);
        a2.recycle();
        return location;
    }

    /* JADX WARNING: type inference failed for: r2v1, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.maps.a.f getProjection() throws android.os.RemoteException {
        /*
            r4 = this;
            android.os.Parcel r0 = r4.a()
            r1 = 26
            android.os.Parcel r0 = r4.a(r1, r0)
            android.os.IBinder r1 = r0.readStrongBinder()
            if (r1 != 0) goto L_0x0012
            r1 = 0
            goto L_0x0026
        L_0x0012:
            java.lang.String r2 = "com.google.android.gms.maps.internal.IProjectionDelegate"
            android.os.IInterface r2 = r1.queryLocalInterface(r2)
            boolean r3 = r2 instanceof com.google.android.gms.maps.a.f
            if (r3 == 0) goto L_0x0020
            r1 = r2
            com.google.android.gms.maps.a.f r1 = (com.google.android.gms.maps.a.f) r1
            goto L_0x0026
        L_0x0020:
            com.google.android.gms.maps.a.bf r2 = new com.google.android.gms.maps.a.bf
            r2.<init>(r1)
            r1 = r2
        L_0x0026:
            r0.recycle()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.bs.getProjection():com.google.android.gms.maps.a.f");
    }

    /* JADX WARNING: type inference failed for: r2v1, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.maps.a.j getUiSettings() throws android.os.RemoteException {
        /*
            r4 = this;
            android.os.Parcel r0 = r4.a()
            r1 = 25
            android.os.Parcel r0 = r4.a(r1, r0)
            android.os.IBinder r1 = r0.readStrongBinder()
            if (r1 != 0) goto L_0x0012
            r1 = 0
            goto L_0x0026
        L_0x0012:
            java.lang.String r2 = "com.google.android.gms.maps.internal.IUiSettingsDelegate"
            android.os.IInterface r2 = r1.queryLocalInterface(r2)
            boolean r3 = r2 instanceof com.google.android.gms.maps.a.j
            if (r3 == 0) goto L_0x0020
            r1 = r2
            com.google.android.gms.maps.a.j r1 = (com.google.android.gms.maps.a.j) r1
            goto L_0x0026
        L_0x0020:
            com.google.android.gms.maps.a.bl r2 = new com.google.android.gms.maps.a.bl
            r2.<init>(r1)
            r1 = r2
        L_0x0026:
            r0.recycle()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.bs.getUiSettings():com.google.android.gms.maps.a.j");
    }

    public final boolean isBuildingsEnabled() throws RemoteException {
        Parcel a2 = a(40, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isIndoorEnabled() throws RemoteException {
        Parcel a2 = a(19, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isMyLocationEnabled() throws RemoteException {
        Parcel a2 = a(21, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isTrafficEnabled() throws RemoteException {
        Parcel a2 = a(17, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final void moveCamera(com.google.android.gms.a.a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        b(4, a2);
    }

    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) bundle);
        b(54, a2);
    }

    public final void onDestroy() throws RemoteException {
        b(57, a());
    }

    public final void onEnterAmbient(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) bundle);
        b(81, a2);
    }

    public final void onExitAmbient() throws RemoteException {
        b(82, a());
    }

    public final void onLowMemory() throws RemoteException {
        b(58, a());
    }

    public final void onPause() throws RemoteException {
        b(56, a());
    }

    public final void onResume() throws RemoteException {
        b(55, a());
    }

    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) bundle);
        Parcel a3 = a(60, a2);
        if (a3.readInt() != 0) {
            bundle.readFromParcel(a3);
        }
        a3.recycle();
    }

    public final void onStart() throws RemoteException {
        b(101, a());
    }

    public final void onStop() throws RemoteException {
        b(102, a());
    }

    public final void resetMinMaxZoomPreference() throws RemoteException {
        b(94, a());
    }

    public final void setBuildingsEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(41, a2);
    }

    public final void setContentDescription(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        b(61, a2);
    }

    public final boolean setIndoorEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        Parcel a3 = a(20, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }

    public final void setInfoWindowAdapter(bt btVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) btVar);
        b(33, a2);
    }

    public final void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLngBounds);
        b(95, a2);
    }

    public final void setLocationSource(c cVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) cVar);
        b(24, a2);
    }

    public final boolean setMapStyle(MapStyleOptions mapStyleOptions) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) mapStyleOptions);
        Parcel a3 = a(91, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }

    public final void setMapType(int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        b(16, a2);
    }

    public final void setMaxZoomPreference(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(93, a2);
    }

    public final void setMinZoomPreference(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(92, a2);
    }

    public final void setMyLocationEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(22, a2);
    }

    public final void setOnCameraChangeListener(bx bxVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) bxVar);
        b(27, a2);
    }

    public final void setOnCameraIdleListener(bz bzVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) bzVar);
        b(99, a2);
    }

    public final void setOnCameraMoveCanceledListener(cb cbVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) cbVar);
        b(98, a2);
    }

    public final void setOnCameraMoveListener(cd cdVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) cdVar);
        b(97, a2);
    }

    public final void setOnCameraMoveStartedListener(cf cfVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) cfVar);
        b(96, a2);
    }

    public final void setOnCircleClickListener(ch chVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) chVar);
        b(89, a2);
    }

    public final void setOnGroundOverlayClickListener(cj cjVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) cjVar);
        b(83, a2);
    }

    public final void setOnIndoorStateChangeListener(cl clVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) clVar);
        b(45, a2);
    }

    public final void setOnInfoWindowClickListener(o oVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) oVar);
        b(32, a2);
    }

    public final void setOnInfoWindowCloseListener(q qVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) qVar);
        b(86, a2);
    }

    public final void setOnInfoWindowLongClickListener(s sVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) sVar);
        b(84, a2);
    }

    public final void setOnMapClickListener(w wVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) wVar);
        b(28, a2);
    }

    public final void setOnMapLoadedCallback(y yVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) yVar);
        b(42, a2);
    }

    public final void setOnMapLongClickListener(aa aaVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aaVar);
        b(29, a2);
    }

    public final void setOnMarkerClickListener(ae aeVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aeVar);
        b(30, a2);
    }

    public final void setOnMarkerDragListener(ag agVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) agVar);
        b(31, a2);
    }

    public final void setOnMyLocationButtonClickListener(ai aiVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aiVar);
        b(37, a2);
    }

    public final void setOnMyLocationChangeListener(ak akVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) akVar);
        b(36, a2);
    }

    public final void setOnMyLocationClickListener(am amVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) amVar);
        b(107, a2);
    }

    public final void setOnPoiClickListener(ap apVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) apVar);
        b(80, a2);
    }

    public final void setOnPolygonClickListener(ar arVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) arVar);
        b(85, a2);
    }

    public final void setOnPolylineClickListener(at atVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) atVar);
        b(87, a2);
    }

    public final void setPadding(int i, int i2, int i3, int i4) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        a2.writeInt(i2);
        a2.writeInt(i3);
        a2.writeInt(i4);
        b(39, a2);
    }

    public final void setTrafficEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(18, a2);
    }

    public final void setWatermarkEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(51, a2);
    }

    public final void snapshot(bg bgVar, com.google.android.gms.a.a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) bgVar);
        oq.zza(a2, (IInterface) aVar);
        b(38, a2);
    }

    public final void snapshotForTest(bg bgVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) bgVar);
        b(71, a2);
    }

    public final void stopAnimation() throws RemoteException {
        b(8, a());
    }

    public final boolean useViewLifecycleWhenInFragment() throws RemoteException {
        Parcel a2 = a(59, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }
}
