package cab.snapp.mapmodule.views;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import cab.snapp.mapmodule.a;
import cab.snapp.mapmodule.a.a.m;
import cab.snapp.snappuikit.SnappPlateNumberView;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.e;
import com.google.android.gms.maps.f;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.g;
import io.reactivex.b.b;
import java.util.HashMap;
import java.util.Map;

public class GoogleMapView extends MapView {
    public static final int ANIMATION_DURATION = 250;

    /* renamed from: a  reason: collision with root package name */
    private final int f302a = 18;

    /* renamed from: b  reason: collision with root package name */
    private final int f303b = 8;
    private c c;
    private b d = new b();
    private int e;
    private ScaleGestureDetector f;
    /* access modifiers changed from: private */
    public Map<String, g> g = new HashMap();
    /* access modifiers changed from: private */
    public Map<String, g> h = new HashMap();
    private c.d i = new c.d() {
        public final void onCameraIdle() {
            GoogleMapView.this.c();
        }
    };
    private c.g j = new c.g() {
        public final void onCameraMoveStarted(int i) {
            GoogleMapView.this.a(i);
        }
    };
    private c.e k = new c.e() {
        public final void onCameraMoveCanceled() {
            GoogleMapView.this.b();
        }
    };
    private c.n l = new c.n() {
        public final void onMapClick(LatLng latLng) {
            GoogleMapView.this.a(latLng);
        }
    };
    private g m;
    private g n;
    private g o;

    /* access modifiers changed from: private */
    public static /* synthetic */ boolean a(g gVar) {
        return true;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c() {
        a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(getId(), SnappPlateNumberView.ZONE_ANZALI_NEW));
        LatLng latLng = this.c.getCameraPosition().target;
        CameraPosition cameraPosition = this.c.getCameraPosition();
        cab.snapp.mapmodule.a.b.a aVar = new cab.snapp.mapmodule.a.b.a(getId(), latLng.latitude, latLng.longitude, (int) cameraPosition.zoom, (int) cameraPosition.tilt);
        a.getInstance().getEventsPublishSubject().onNext(aVar);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i2) {
        a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(getId(), SnappPlateNumberView.ZONE_ARVAND_NEW));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b() {
        a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(getId(), SnappPlateNumberView.ZONE_CHABAHAR_NEW));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(LatLng latLng) {
        cab.snapp.mapmodule.a.b.b bVar = new cab.snapp.mapmodule.a.b.b(getId(), latLng.latitude, latLng.longitude);
        a.getInstance().getEventsPublishSubject().onNext(bVar);
    }

    public GoogleMapView(Context context) {
        super(context);
        a();
    }

    public GoogleMapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public GoogleMapView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }

    private void a() {
        this.d.add(a.getInstance().getCommandsPublishSubject().subscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                GoogleMapView.this.a((m) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:166:0x0497, code lost:
        if (r0.equals(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG) == false) goto L_0x04aa;
     */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x04ad  */
    /* JADX WARNING: Removed duplicated region for block: B:184:0x04c6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ void a(cab.snapp.mapmodule.a.a.m r17) throws java.lang.Exception {
        /*
            r16 = this;
            r1 = r16
            r0 = r17
            int r2 = r0.id
            int r3 = r16.getId()
            if (r2 != r3) goto L_0x0545
            com.google.android.gms.maps.c r2 = r1.c
            if (r2 == 0) goto L_0x0545
            int r2 = r0.commandType
            java.lang.String r3 = "SECOND_DESTINATION_MARKER_TAG"
            java.lang.String r4 = "DESTINATION_MARKER_TAG"
            java.lang.String r5 = "ORIGIN_MARKER_TAG"
            r6 = 1090519040(0x41000000, float:8.0)
            r7 = 250(0xfa, double:1.235E-321)
            r10 = 0
            r11 = 1065353216(0x3f800000, float:1.0)
            r12 = 0
            r13 = 2
            r14 = 250(0xfa, float:3.5E-43)
            r15 = 0
            r9 = 1
            switch(r2) {
                case 1000: goto L_0x0540;
                case 1001: goto L_0x050b;
                case 1002: goto L_0x04d0;
                case 1003: goto L_0x044c;
                case 1004: goto L_0x0426;
                case 1005: goto L_0x0400;
                case 1006: goto L_0x03d6;
                case 1007: goto L_0x03bc;
                case 1008: goto L_0x03a7;
                case 1009: goto L_0x0392;
                case 1010: goto L_0x0366;
                case 1011: goto L_0x0353;
                case 1012: goto L_0x0340;
                case 1013: goto L_0x02e3;
                case 1014: goto L_0x02c8;
                case 1015: goto L_0x02ad;
                case 1016: goto L_0x0255;
                case 1017: goto L_0x020d;
                case 1018: goto L_0x0207;
                case 1019: goto L_0x0201;
                case 1020: goto L_0x01dd;
                case 1021: goto L_0x01d2;
                case 1022: goto L_0x01bb;
                case 1023: goto L_0x019f;
                case 1024: goto L_0x017f;
                case 1025: goto L_0x014b;
                case 1026: goto L_0x013a;
                case 1027: goto L_0x00d2;
                case 1028: goto L_0x009a;
                case 1029: goto L_0x0062;
                case 1030: goto L_0x002a;
                default: goto L_0x0028;
            }
        L_0x0028:
            goto L_0x0545
        L_0x002a:
            com.google.android.gms.maps.model.g r2 = r1.o
            if (r2 == 0) goto L_0x0031
            r2.remove()
        L_0x0031:
            cab.snapp.mapmodule.a.a.c r0 = (cab.snapp.mapmodule.a.a.c) r0
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r4 = new com.google.android.gms.maps.model.LatLng
            double r5 = r0.latitude
            double r7 = r0.longitude
            r4.<init>(r5, r7)
            r2.position(r4)
            int r4 = r0.icon
            com.google.android.gms.maps.model.a r4 = com.google.android.gms.maps.model.b.fromResource(r4)
            r2.icon(r4)
            float r4 = r0.anchorX
            float r0 = r0.anchorY
            r2.anchor(r4, r0)
            com.google.android.gms.maps.c r0 = r1.c
            com.google.android.gms.maps.model.g r0 = r0.addMarker(r2)
            r1.o = r0
            com.google.android.gms.maps.model.g r0 = r1.o
            r0.setTag(r3)
            return
        L_0x0062:
            com.google.android.gms.maps.model.g r2 = r1.n
            if (r2 == 0) goto L_0x0069
            r2.remove()
        L_0x0069:
            cab.snapp.mapmodule.a.a.c r0 = (cab.snapp.mapmodule.a.a.c) r0
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng
            double r5 = r0.latitude
            double r7 = r0.longitude
            r3.<init>(r5, r7)
            r2.position(r3)
            int r3 = r0.icon
            com.google.android.gms.maps.model.a r3 = com.google.android.gms.maps.model.b.fromResource(r3)
            r2.icon(r3)
            float r3 = r0.anchorX
            float r0 = r0.anchorY
            r2.anchor(r3, r0)
            com.google.android.gms.maps.c r0 = r1.c
            com.google.android.gms.maps.model.g r0 = r0.addMarker(r2)
            r1.n = r0
            com.google.android.gms.maps.model.g r0 = r1.n
            r0.setTag(r4)
            return
        L_0x009a:
            com.google.android.gms.maps.model.g r2 = r1.m
            if (r2 == 0) goto L_0x00a1
            r2.remove()
        L_0x00a1:
            cab.snapp.mapmodule.a.a.c r0 = (cab.snapp.mapmodule.a.a.c) r0
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng
            double r6 = r0.latitude
            double r8 = r0.longitude
            r3.<init>(r6, r8)
            r2.position(r3)
            int r3 = r0.icon
            com.google.android.gms.maps.model.a r3 = com.google.android.gms.maps.model.b.fromResource(r3)
            r2.icon(r3)
            float r3 = r0.anchorX
            float r0 = r0.anchorY
            r2.anchor(r3, r0)
            com.google.android.gms.maps.c r0 = r1.c
            com.google.android.gms.maps.model.g r0 = r0.addMarker(r2)
            r1.m = r0
            com.google.android.gms.maps.model.g r0 = r1.m
            r0.setTag(r5)
            return
        L_0x00d2:
            cab.snapp.mapmodule.a.a.t r0 = (cab.snapp.mapmodule.a.a.t) r0
            java.util.List<java.lang.Double> r2 = r0.latitudes
            int r2 = r2.size()
            java.util.List<java.lang.Double> r3 = r0.longitudes
            int r3 = r3.size()
            if (r2 == r3) goto L_0x00ea
            java.util.List<java.lang.Double> r2 = r0.latitudes
            int r2 = r2.size()
            if (r2 < r13) goto L_0x0545
        L_0x00ea:
            com.google.android.gms.maps.model.LatLngBounds$a r2 = new com.google.android.gms.maps.model.LatLngBounds$a     // Catch:{ IllegalStateException -> 0x0135 }
            r2.<init>()     // Catch:{ IllegalStateException -> 0x0135 }
        L_0x00ef:
            java.util.List<java.lang.Double> r3 = r0.latitudes     // Catch:{ IllegalStateException -> 0x0135 }
            int r3 = r3.size()     // Catch:{ IllegalStateException -> 0x0135 }
            if (r15 >= r3) goto L_0x011a
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng     // Catch:{ IllegalStateException -> 0x0135 }
            java.util.List<java.lang.Double> r4 = r0.latitudes     // Catch:{ IllegalStateException -> 0x0135 }
            java.lang.Object r4 = r4.get(r15)     // Catch:{ IllegalStateException -> 0x0135 }
            java.lang.Double r4 = (java.lang.Double) r4     // Catch:{ IllegalStateException -> 0x0135 }
            double r4 = r4.doubleValue()     // Catch:{ IllegalStateException -> 0x0135 }
            java.util.List<java.lang.Double> r6 = r0.longitudes     // Catch:{ IllegalStateException -> 0x0135 }
            java.lang.Object r6 = r6.get(r15)     // Catch:{ IllegalStateException -> 0x0135 }
            java.lang.Double r6 = (java.lang.Double) r6     // Catch:{ IllegalStateException -> 0x0135 }
            double r6 = r6.doubleValue()     // Catch:{ IllegalStateException -> 0x0135 }
            r3.<init>(r4, r6)     // Catch:{ IllegalStateException -> 0x0135 }
            r2.include(r3)     // Catch:{ IllegalStateException -> 0x0135 }
            int r15 = r15 + 1
            goto L_0x00ef
        L_0x011a:
            com.google.android.gms.maps.model.LatLngBounds r2 = r2.build()     // Catch:{ IllegalStateException -> 0x0135 }
            int r3 = r0.paddingLeft     // Catch:{ IllegalStateException -> 0x0135 }
            int r4 = r0.paddingTop     // Catch:{ IllegalStateException -> 0x0135 }
            int r3 = r3 + r4
            int r4 = r0.paddingRight     // Catch:{ IllegalStateException -> 0x0135 }
            int r3 = r3 + r4
            int r0 = r0.paddingBottom     // Catch:{ IllegalStateException -> 0x0135 }
            int r3 = r3 + r0
            int r3 = r3 / 4
            com.google.android.gms.maps.a r0 = com.google.android.gms.maps.b.newLatLngBounds(r2, r3)     // Catch:{ IllegalStateException -> 0x0135 }
            com.google.android.gms.maps.c r2 = r1.c     // Catch:{ IllegalStateException -> 0x0135 }
            r2.animateCamera(r0, r14, r12)     // Catch:{ IllegalStateException -> 0x0135 }
            return
        L_0x0135:
            r0 = move-exception
            r0.printStackTrace()
            return
        L_0x013a:
            cab.snapp.mapmodule.a.a.g r0 = (cab.snapp.mapmodule.a.a.g) r0
            com.google.android.gms.maps.c r2 = r1.c
            int r3 = r0.startPadding
            int r4 = r0.topPadding
            int r5 = r0.endPadding
            int r0 = r0.bottomPadding
            r2.setPadding(r3, r4, r5, r0)
            goto L_0x0545
        L_0x014b:
            cab.snapp.mapmodule.a.a.b r0 = (cab.snapp.mapmodule.a.a.b) r0
            com.google.android.gms.maps.c r2 = r1.c
            com.google.android.gms.maps.model.CameraPosition r2 = r2.getCameraPosition()
            com.google.android.gms.maps.model.LatLng r2 = r2.target
            com.google.android.gms.maps.model.MarkerOptions r3 = new com.google.android.gms.maps.model.MarkerOptions
            r3.<init>()
            r3.position(r2)
            int r2 = r0.icon
            com.google.android.gms.maps.model.a r2 = com.google.android.gms.maps.model.b.fromResource(r2)
            r3.icon(r2)
            float r2 = r0.anchorX
            float r4 = r0.anchorY
            r3.anchor(r2, r4)
            java.lang.String r2 = r0.markerTag
            if (r2 == 0) goto L_0x0545
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r1.g
            java.lang.String r0 = r0.markerTag
            com.google.android.gms.maps.c r4 = r1.c
            com.google.android.gms.maps.model.g r3 = r4.addMarker(r3)
            r2.put(r0, r3)
            return
        L_0x017f:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r1.h
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L_0x0189:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x0199
            java.lang.Object r2 = r0.next()
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            r2.remove()
            goto L_0x0189
        L_0x0199:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r1.h
            r0.clear()
            return
        L_0x019f:
            cab.snapp.mapmodule.a.a.o r0 = (cab.snapp.mapmodule.a.a.o) r0
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r0.latitude
            double r5 = r0.longitude
            r2.<init>(r3, r5)
            float r0 = r0.zoom
            com.google.android.gms.maps.a r0 = com.google.android.gms.maps.b.newLatLngZoom(r2, r0)
            com.google.android.gms.maps.c r2 = r1.c
            cab.snapp.mapmodule.views.GoogleMapView$6 r3 = new cab.snapp.mapmodule.views.GoogleMapView$6
            r3.<init>()
            r2.animateCamera(r0, r14, r3)
            return
        L_0x01bb:
            cab.snapp.mapmodule.a.a.f r0 = (cab.snapp.mapmodule.a.a.f) r0
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r0.latitude
            double r5 = r0.longitude
            r2.<init>(r3, r5)
            float r0 = r0.zoom
            com.google.android.gms.maps.a r0 = com.google.android.gms.maps.b.newLatLngZoom(r2, r0)
            com.google.android.gms.maps.c r2 = r1.c
            r2.moveCamera(r0)
            return
        L_0x01d2:
            com.google.android.gms.maps.c r0 = r1.c     // Catch:{ Exception -> 0x01d8 }
            r0.setMyLocationEnabled(r15)     // Catch:{ Exception -> 0x01d8 }
            return
        L_0x01d8:
            r0 = move-exception
            r0.printStackTrace()
            return
        L_0x01dd:
            android.content.Context r0 = r16.getContext()     // Catch:{ Exception -> 0x01fc }
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            int r0 = androidx.core.content.ContextCompat.checkSelfPermission(r0, r2)     // Catch:{ Exception -> 0x01fc }
            if (r0 == 0) goto L_0x01f6
            android.content.Context r0 = r16.getContext()     // Catch:{ Exception -> 0x01fc }
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            int r0 = androidx.core.content.ContextCompat.checkSelfPermission(r0, r2)     // Catch:{ Exception -> 0x01fc }
            if (r0 == 0) goto L_0x01f6
            return
        L_0x01f6:
            com.google.android.gms.maps.c r0 = r1.c     // Catch:{ Exception -> 0x01fc }
            r0.setMyLocationEnabled(r9)     // Catch:{ Exception -> 0x01fc }
            return
        L_0x01fc:
            r0 = move-exception
            r0.printStackTrace()
            return
        L_0x0201:
            com.google.android.gms.maps.c r0 = r1.c
            r0.setTrafficEnabled(r15)
            return
        L_0x0207:
            com.google.android.gms.maps.c r0 = r1.c
            r0.setTrafficEnabled(r9)
            return
        L_0x020d:
            cab.snapp.mapmodule.a.a.k r0 = (cab.snapp.mapmodule.a.a.k) r0
            android.animation.ValueAnimator r2 = new android.animation.ValueAnimator
            r2.<init>()
            java.lang.Object[] r3 = new java.lang.Object[r13]
            java.lang.Float r4 = java.lang.Float.valueOf(r10)
            r3[r15] = r4
            java.lang.Float r4 = java.lang.Float.valueOf(r11)
            r3[r9] = r4
            r2.setObjectValues(r3)
            r2.setDuration(r7)
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r1.g
            java.lang.String r4 = r0.markerTag
            java.lang.Object r3 = r3.get(r4)
            com.google.android.gms.maps.model.g r3 = (com.google.android.gms.maps.model.g) r3
            if (r3 == 0) goto L_0x023d
            cab.snapp.mapmodule.views.GoogleMapView$2 r0 = new cab.snapp.mapmodule.views.GoogleMapView$2
            r0.<init>(r3)
            r2.addUpdateListener(r0)
            goto L_0x0251
        L_0x023d:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r1.h
            java.lang.String r0 = r0.markerTag
            java.lang.Object r0 = r3.get(r0)
            com.google.android.gms.maps.model.g r0 = (com.google.android.gms.maps.model.g) r0
            if (r0 == 0) goto L_0x0251
            cab.snapp.mapmodule.views.GoogleMapView$3 r3 = new cab.snapp.mapmodule.views.GoogleMapView$3
            r3.<init>(r0)
            r2.addUpdateListener(r3)
        L_0x0251:
            r2.start()
            return
        L_0x0255:
            cab.snapp.mapmodule.a.a.l r0 = (cab.snapp.mapmodule.a.a.l) r0
            android.animation.ValueAnimator r2 = new android.animation.ValueAnimator
            r2.<init>()
            java.lang.Object[] r3 = new java.lang.Object[r13]
            java.lang.Float r4 = java.lang.Float.valueOf(r11)
            r3[r15] = r4
            java.lang.Float r4 = java.lang.Float.valueOf(r10)
            r3[r9] = r4
            r2.setObjectValues(r3)
            r2.setDuration(r7)
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r1.g
            java.lang.String r4 = r0.markerTag
            java.lang.Object r3 = r3.get(r4)
            com.google.android.gms.maps.model.g r3 = (com.google.android.gms.maps.model.g) r3
            if (r3 == 0) goto L_0x028d
            cab.snapp.mapmodule.views.GoogleMapView$8 r4 = new cab.snapp.mapmodule.views.GoogleMapView$8
            r4.<init>(r3)
            r2.addUpdateListener(r4)
            cab.snapp.mapmodule.views.GoogleMapView$9 r4 = new cab.snapp.mapmodule.views.GoogleMapView$9
            r4.<init>(r3, r0)
            r2.addListener(r4)
            goto L_0x02a9
        L_0x028d:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r1.h
            java.lang.String r4 = r0.markerTag
            java.lang.Object r3 = r3.get(r4)
            com.google.android.gms.maps.model.g r3 = (com.google.android.gms.maps.model.g) r3
            if (r3 == 0) goto L_0x02a9
            cab.snapp.mapmodule.views.GoogleMapView$10 r4 = new cab.snapp.mapmodule.views.GoogleMapView$10
            r4.<init>(r3)
            r2.addUpdateListener(r4)
            cab.snapp.mapmodule.views.GoogleMapView$11 r4 = new cab.snapp.mapmodule.views.GoogleMapView$11
            r4.<init>(r3, r0)
            r2.addListener(r4)
        L_0x02a9:
            r2.start()
            return
        L_0x02ad:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r1.h
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L_0x02b7:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x02c7
            java.lang.Object r2 = r0.next()
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            r2.setAlpha(r11)
            goto L_0x02b7
        L_0x02c7:
            return
        L_0x02c8:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r1.h
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L_0x02d2:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x02e2
            java.lang.Object r2 = r0.next()
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            r2.setAlpha(r10)
            goto L_0x02d2
        L_0x02e2:
            return
        L_0x02e3:
            cab.snapp.mapmodule.a.a.s r0 = (cab.snapp.mapmodule.a.a.s) r0
            java.util.List<java.lang.Double> r2 = r0.longitudes
            int r2 = r2.size()
            java.util.List<java.lang.Double> r3 = r0.latitudes
            int r3 = r3.size()
            if (r2 == r3) goto L_0x02fb
            java.util.List<java.lang.Double> r2 = r0.latitudes
            int r2 = r2.size()
            if (r2 < r13) goto L_0x0545
        L_0x02fb:
            com.google.android.gms.maps.model.LatLngBounds$a r2 = new com.google.android.gms.maps.model.LatLngBounds$a     // Catch:{ IllegalStateException -> 0x033b }
            r2.<init>()     // Catch:{ IllegalStateException -> 0x033b }
        L_0x0300:
            java.util.List<java.lang.Double> r3 = r0.latitudes     // Catch:{ IllegalStateException -> 0x033b }
            int r3 = r3.size()     // Catch:{ IllegalStateException -> 0x033b }
            if (r15 >= r3) goto L_0x032b
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng     // Catch:{ IllegalStateException -> 0x033b }
            java.util.List<java.lang.Double> r4 = r0.latitudes     // Catch:{ IllegalStateException -> 0x033b }
            java.lang.Object r4 = r4.get(r15)     // Catch:{ IllegalStateException -> 0x033b }
            java.lang.Double r4 = (java.lang.Double) r4     // Catch:{ IllegalStateException -> 0x033b }
            double r4 = r4.doubleValue()     // Catch:{ IllegalStateException -> 0x033b }
            java.util.List<java.lang.Double> r6 = r0.longitudes     // Catch:{ IllegalStateException -> 0x033b }
            java.lang.Object r6 = r6.get(r15)     // Catch:{ IllegalStateException -> 0x033b }
            java.lang.Double r6 = (java.lang.Double) r6     // Catch:{ IllegalStateException -> 0x033b }
            double r6 = r6.doubleValue()     // Catch:{ IllegalStateException -> 0x033b }
            r3.<init>(r4, r6)     // Catch:{ IllegalStateException -> 0x033b }
            r2.include(r3)     // Catch:{ IllegalStateException -> 0x033b }
            int r15 = r15 + 1
            goto L_0x0300
        L_0x032b:
            com.google.android.gms.maps.model.LatLngBounds r2 = r2.build()     // Catch:{ IllegalStateException -> 0x033b }
            int r0 = r0.padding     // Catch:{ IllegalStateException -> 0x033b }
            com.google.android.gms.maps.a r0 = com.google.android.gms.maps.b.newLatLngBounds(r2, r0)     // Catch:{ IllegalStateException -> 0x033b }
            com.google.android.gms.maps.c r2 = r1.c     // Catch:{ IllegalStateException -> 0x033b }
            r2.animateCamera(r0, r14, r12)     // Catch:{ IllegalStateException -> 0x033b }
            return
        L_0x033b:
            r0 = move-exception
            r0.printStackTrace()
            return
        L_0x0340:
            com.google.android.gms.maps.c r0 = r1.c
            com.google.android.gms.maps.j r0 = r0.getUiSettings()
            r0.setScrollGesturesEnabled(r9)
            com.google.android.gms.maps.c r0 = r1.c
            com.google.android.gms.maps.j r0 = r0.getUiSettings()
            r0.setZoomGesturesEnabled(r9)
            return
        L_0x0353:
            com.google.android.gms.maps.c r0 = r1.c
            com.google.android.gms.maps.j r0 = r0.getUiSettings()
            r0.setScrollGesturesEnabled(r15)
            com.google.android.gms.maps.c r0 = r1.c
            com.google.android.gms.maps.j r0 = r0.getUiSettings()
            r0.setZoomGesturesEnabled(r15)
            return
        L_0x0366:
            cab.snapp.mapmodule.a.a.r r0 = (cab.snapp.mapmodule.a.a.r) r0
            com.google.android.gms.maps.c r2 = r1.c
            com.google.android.gms.maps.model.CameraPosition r2 = r2.getCameraPosition()
            if (r2 == 0) goto L_0x0545
            float r2 = r0.zoomLevel
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 < 0) goto L_0x0545
            float r2 = r0.zoomLevel
            r3 = 1099956224(0x41900000, float:18.0)
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 > 0) goto L_0x0545
            com.google.android.gms.maps.c r2 = r1.c
            com.google.android.gms.maps.model.CameraPosition r2 = r2.getCameraPosition()
            com.google.android.gms.maps.model.LatLng r2 = r2.target
            float r0 = r0.zoomLevel
            com.google.android.gms.maps.a r0 = com.google.android.gms.maps.b.newLatLngZoom(r2, r0)
            com.google.android.gms.maps.c r2 = r1.c
            r2.moveCamera(r0)
            return
        L_0x0392:
            cab.snapp.mapmodule.a.a.e r0 = (cab.snapp.mapmodule.a.a.e) r0
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r0.latitude
            double r5 = r0.longitude
            r2.<init>(r3, r5)
            com.google.android.gms.maps.a r0 = com.google.android.gms.maps.b.newLatLng(r2)
            com.google.android.gms.maps.c r2 = r1.c
            r2.moveCamera(r0)
            return
        L_0x03a7:
            cab.snapp.mapmodule.a.a.q r0 = (cab.snapp.mapmodule.a.a.q) r0
            float r2 = r0.x
            float r0 = r0.y
            com.google.android.gms.maps.a r0 = com.google.android.gms.maps.b.scrollBy(r2, r0)
            com.google.android.gms.maps.c r2 = r1.c
            cab.snapp.mapmodule.views.GoogleMapView$7 r3 = new cab.snapp.mapmodule.views.GoogleMapView$7
            r3.<init>()
            r2.animateCamera(r0, r14, r3)
            return
        L_0x03bc:
            cab.snapp.mapmodule.a.a.n r0 = (cab.snapp.mapmodule.a.a.n) r0
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r0.latitude
            double r5 = r0.longitude
            r2.<init>(r3, r5)
            com.google.android.gms.maps.a r0 = com.google.android.gms.maps.b.newLatLng(r2)
            com.google.android.gms.maps.c r2 = r1.c
            cab.snapp.mapmodule.views.GoogleMapView$5 r3 = new cab.snapp.mapmodule.views.GoogleMapView$5
            r3.<init>()
            r2.animateCamera(r0, r14, r3)
            return
        L_0x03d6:
            cab.snapp.mapmodule.a.a.j r0 = (cab.snapp.mapmodule.a.a.j) r0
            float r2 = r0.zoomLevel
            r3 = 1099956224(0x41900000, float:18.0)
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 > 0) goto L_0x0545
            float r2 = r0.zoomLevel
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 < 0) goto L_0x0545
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r0.latitude
            double r5 = r0.longitude
            r2.<init>(r3, r5)
            float r0 = r0.zoomLevel
            com.google.android.gms.maps.a r0 = com.google.android.gms.maps.b.newLatLngZoom(r2, r0)
            com.google.android.gms.maps.c r2 = r1.c
            cab.snapp.mapmodule.views.GoogleMapView$4 r3 = new cab.snapp.mapmodule.views.GoogleMapView$4
            r3.<init>()
            r2.animateCamera(r0, r14, r3)
            return
        L_0x0400:
            cab.snapp.mapmodule.a.a.i r0 = (cab.snapp.mapmodule.a.a.i) r0
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r1.g
            java.lang.String r3 = r0.markerTag
            java.lang.Object r2 = r2.get(r3)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x0414
            float r0 = r0.rotation
            r2.setRotation(r0)
            return
        L_0x0414:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r1.h
            java.lang.String r3 = r0.markerTag
            java.lang.Object r2 = r2.get(r3)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x0545
            float r0 = r0.rotation
            r2.setRotation(r0)
            return
        L_0x0426:
            cab.snapp.mapmodule.a.a.h r0 = (cab.snapp.mapmodule.a.a.h) r0
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r1.g
            java.lang.String r3 = r0.markerTag
            java.lang.Object r2 = r2.get(r3)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x043a
            float r0 = r0.alpha
            r2.setAlpha(r0)
            return
        L_0x043a:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r1.h
            java.lang.String r3 = r0.markerTag
            java.lang.Object r2 = r2.get(r3)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x0545
            float r0 = r0.alpha
            r2.setAlpha(r0)
            return
        L_0x044c:
            cab.snapp.mapmodule.a.a.p r0 = (cab.snapp.mapmodule.a.a.p) r0
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r1.g
            java.lang.String r6 = r0.markerTag
            java.lang.Object r2 = r2.get(r6)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x0465
            r2.remove()
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r1.g
            java.lang.String r0 = r0.markerTag
            r2.remove(r0)
            return
        L_0x0465:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r1.h
            java.lang.String r6 = r0.markerTag
            java.lang.Object r2 = r2.get(r6)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x047c
            r2.remove()
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r1.h
            java.lang.String r0 = r0.markerTag
            r2.remove(r0)
            return
        L_0x047c:
            java.lang.String r0 = r0.markerTag
            r2 = -1
            int r6 = r0.hashCode()
            r7 = -1279750383(0xffffffffb3b88f11, float:-8.594191E-8)
            if (r6 == r7) goto L_0x04a2
            r3 = 346630886(0x14a92ae6, float:1.708156E-26)
            if (r6 == r3) goto L_0x049a
            r3 = 1695394990(0x650dacae, float:4.181494E22)
            if (r6 == r3) goto L_0x0493
            goto L_0x04aa
        L_0x0493:
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L_0x04aa
            goto L_0x04ab
        L_0x049a:
            boolean r0 = r0.equals(r4)
            if (r0 == 0) goto L_0x04aa
            r15 = 1
            goto L_0x04ab
        L_0x04a2:
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x04aa
            r15 = 2
            goto L_0x04ab
        L_0x04aa:
            r15 = -1
        L_0x04ab:
            if (r15 == 0) goto L_0x04c6
            if (r15 == r9) goto L_0x04bc
            if (r15 == r13) goto L_0x04b2
            goto L_0x04cf
        L_0x04b2:
            com.google.android.gms.maps.model.g r0 = r1.o
            if (r0 == 0) goto L_0x04cf
            r0.remove()
            r1.o = r12
            goto L_0x04cf
        L_0x04bc:
            com.google.android.gms.maps.model.g r0 = r1.n
            if (r0 == 0) goto L_0x04cf
            r0.remove()
            r1.n = r12
            return
        L_0x04c6:
            com.google.android.gms.maps.model.g r0 = r1.m
            if (r0 == 0) goto L_0x04cf
            r0.remove()
            r1.m = r12
        L_0x04cf:
            return
        L_0x04d0:
            cab.snapp.mapmodule.a.a.d r0 = (cab.snapp.mapmodule.a.a.d) r0
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng
            double r4 = r0.latitude
            double r6 = r0.longitude
            r3.<init>(r4, r6)
            r2.position(r3)
            int r3 = r0.icon
            com.google.android.gms.maps.model.a r3 = com.google.android.gms.maps.model.b.fromResource(r3)
            r2.icon(r3)
            float r3 = r0.anchorX
            float r4 = r0.anchorY
            r2.anchor(r3, r4)
            float r3 = r0.alpha
            r2.alpha(r3)
            float r3 = r0.rotation
            r2.rotation(r3)
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r1.h
            java.lang.String r0 = r0.markerTag
            com.google.android.gms.maps.c r4 = r1.c
            com.google.android.gms.maps.model.g r2 = r4.addMarker(r2)
            r3.put(r0, r2)
            return
        L_0x050b:
            cab.snapp.mapmodule.a.a.a r0 = (cab.snapp.mapmodule.a.a.a) r0
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng
            double r4 = r0.latitude
            double r6 = r0.longitude
            r3.<init>(r4, r6)
            r2.position(r3)
            int r3 = r0.icon
            com.google.android.gms.maps.model.a r3 = com.google.android.gms.maps.model.b.fromResource(r3)
            r2.icon(r3)
            float r3 = r0.anchorX
            float r4 = r0.anchorY
            r2.anchor(r3, r4)
            java.lang.String r3 = r0.markerTag
            if (r3 == 0) goto L_0x0545
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r1.g
            java.lang.String r0 = r0.markerTag
            com.google.android.gms.maps.c r4 = r1.c
            com.google.android.gms.maps.model.g r2 = r4.addMarker(r2)
            r3.put(r0, r2)
            return
        L_0x0540:
            com.google.android.gms.maps.c r0 = r1.c
            r0.clear()
        L_0x0545:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.mapmodule.views.GoogleMapView.a(cab.snapp.mapmodule.a.a.m):void");
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        getMapAsync(new f() {
            public final void onMapReady(c cVar) {
                GoogleMapView.this.a(cVar);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(c cVar) {
        this.c = cVar;
        if (a.getInstance().getGoogleMapStyle() != 0) {
            cVar.setMapStyle(MapStyleOptions.loadRawResourceStyle(getContext(), a.getInstance().getGoogleMapStyle()));
        }
        initScaleGestureDetector();
        setupMap();
    }

    public void onAttach(Bundle bundle) {
        onCreate(bundle);
        onStart();
        onResume();
    }

    public void onDetach() {
        onPause();
        onStop();
        onDestroy();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f != null) {
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.e = 1;
            } else if (action == 1) {
                this.e = 0;
            } else if (action == 5) {
                this.e++;
            } else if (action == 6) {
                this.e--;
            }
            if (this.e > 1) {
                disableScrolling();
                this.f.onTouchEvent(motionEvent);
            } else {
                enableScrolling();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void initScaleGestureDetector() {
        this.f = new ScaleGestureDetector(getContext(), new ScaleGestureDetector.OnScaleGestureListener() {

            /* renamed from: b  reason: collision with root package name */
            private float f305b = -1.0f;

            public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                float f = this.f305b;
                if (f == -1.0f) {
                    this.f305b = scaleGestureDetector.getCurrentSpan();
                } else {
                    GoogleMapView.this.zoom(GoogleMapView.a(f, scaleGestureDetector.getCurrentSpan()));
                    this.f305b = scaleGestureDetector.getCurrentSpan();
                }
                return false;
            }

            public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                this.f305b = -1.0f;
                return true;
            }

            public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                this.f305b = -1.0f;
            }
        });
    }

    public void setupMap() {
        this.c.setMapType(1);
        this.c.getUiSettings().setRotateGesturesEnabled(false);
        this.c.getUiSettings().setTiltGesturesEnabled(false);
        this.c.getUiSettings().setMyLocationButtonEnabled(false);
        this.c.setPadding(0, 0, 0, 0);
        this.c.setMaxZoomPreference(18.0f);
        this.c.setMinZoomPreference(8.0f);
        e.initialize(getContext());
        this.c.setOnMarkerClickListener($$Lambda$GoogleMapView$syuPrJ96QH_z9ck1siLlnUsD7QU.INSTANCE);
        this.c.setPadding(0, 0, 0, 0);
        this.c.setOnCameraIdleListener(this.i);
        this.c.setOnCameraMoveStartedListener(this.j);
        this.c.setOnCameraMoveCanceledListener(this.k);
        this.c.setOnMapClickListener(this.l);
        a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(getId(), 2012));
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.d;
        if (bVar != null && !bVar.isDisposed()) {
            this.d.dispose();
        }
    }

    public void zoom(float f2) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.moveCamera(com.google.android.gms.maps.b.zoomBy(f2));
        }
    }

    public void disableScrolling() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.getUiSettings().setScrollGesturesEnabled(false);
        }
    }

    public void enableScrolling() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.getUiSettings().setScrollGesturesEnabled(true);
        }
    }

    static /* synthetic */ float a(float f2, float f3) {
        return (float) (Math.log((double) (f3 / f2)) / Math.log(1.55d));
    }
}
