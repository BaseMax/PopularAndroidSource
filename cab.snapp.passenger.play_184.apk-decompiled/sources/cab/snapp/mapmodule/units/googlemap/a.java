package cab.snapp.mapmodule.units.googlemap;

import android.view.View;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.mapmodule.a.a.m;
import cab.snapp.mapmodule.a.b.b;
import cab.snapp.snappuikit.SnappPlateNumberView;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.e;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.g;
import java.util.HashMap;
import java.util.Map;

public class a extends BaseInteractor<c, b> {

    /* renamed from: a  reason: collision with root package name */
    private final int f252a = 18;

    /* renamed from: b  reason: collision with root package name */
    private final int f253b = 8;
    /* access modifiers changed from: private */
    public c c;
    private io.reactivex.b.c d;
    /* access modifiers changed from: private */
    public Map<String, g> e;
    /* access modifiers changed from: private */
    public Map<String, g> f;
    private g g;
    private g h;
    private g i;
    /* access modifiers changed from: private */
    public int j = 0;

    public a() {
        if (this.e == null) {
            this.e = new HashMap();
        }
        if (this.f == null) {
            this.f = new HashMap();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (this.d == null) {
            this.d = cab.snapp.mapmodule.a.getInstance().getCommandsPublishSubject().subscribe(new io.reactivex.e.g<m>() {
                public final void accept(m mVar) throws Exception {
                    if (mVar.id == a.this.j) {
                        a.a(a.this, mVar);
                    }
                }
            });
            addDisposable(this.d);
        }
    }

    public void init() {
        if (getController() != null && getController().getView() != null && getController().getView().getParent() != null && getController().getView().getParent().getParent() != null && getController().getView().getParent().getParent().getParent() != null && (getController().getView().getParent().getParent().getParent() instanceof View)) {
            this.j = ((View) getController().getView().getParent().getParent().getParent()).getId();
        }
    }

    public void setMap(c cVar) {
        init();
        this.c = cVar;
        this.c.setMapType(1);
        this.c.getUiSettings().setRotateGesturesEnabled(false);
        this.c.getUiSettings().setTiltGesturesEnabled(false);
        this.c.getUiSettings().setMyLocationButtonEnabled(false);
        this.c.setPadding(0, 0, 0, 0);
        this.c.setMaxZoomPreference(18.0f);
        this.c.setMinZoomPreference(8.0f);
        if (!(getController() == null || getController().getContext() == null)) {
            e.initialize(getController().getContext());
        }
        this.c.setOnMarkerClickListener(new c.q() {
            public final boolean onMarkerClick(g gVar) {
                return true;
            }
        });
        this.c.setPadding(0, 0, 0, 0);
        this.c.setOnCameraIdleListener(new c.d() {
            public final void onCameraIdle() {
                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.j, SnappPlateNumberView.ZONE_ANZALI_NEW));
                LatLng latLng = a.this.c.getCameraPosition().target;
                CameraPosition cameraPosition = a.this.c.getCameraPosition();
                cab.snapp.mapmodule.a.b.a aVar = new cab.snapp.mapmodule.a.b.a(a.this.j, latLng.latitude, latLng.longitude, (int) cameraPosition.zoom, (int) cameraPosition.tilt);
                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(aVar);
            }
        });
        this.c.setOnCameraMoveStartedListener(new c.g() {
            public final void onCameraMoveStarted(int i) {
                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.j, SnappPlateNumberView.ZONE_ARVAND_NEW));
            }
        });
        this.c.setOnCameraMoveCanceledListener(new c.e() {
            public final void onCameraMoveCanceled() {
                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.j, SnappPlateNumberView.ZONE_CHABAHAR_NEW));
            }
        });
        this.c.setOnMapClickListener(new c.n() {
            public final void onMapClick(LatLng latLng) {
                b bVar = new b(a.this.j, latLng.latitude, latLng.longitude);
                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(bVar);
            }
        });
        cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(this.j, 2012));
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

    /* JADX WARNING: Code restructure failed: missing block: B:168:0x04a5, code lost:
        if (r1.equals(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG) == false) goto L_0x04b8;
     */
    /* JADX WARNING: Removed duplicated region for block: B:177:0x04bb  */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x04d4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(cab.snapp.mapmodule.units.googlemap.a r16, cab.snapp.mapmodule.a.a.m r17) {
        /*
            r0 = r16
            r1 = r17
            com.google.android.gms.maps.c r2 = r0.c
            if (r2 == 0) goto L_0x054f
            cab.snapp.arch.protocol.BaseController r2 = r16.getController()
            if (r2 == 0) goto L_0x054f
            cab.snapp.arch.protocol.BaseController r2 = r16.getController()
            android.content.Context r2 = r2.getContext()
            if (r2 == 0) goto L_0x054f
            int r2 = r1.commandType
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
                case 1000: goto L_0x054a;
                case 1001: goto L_0x0519;
                case 1002: goto L_0x04de;
                case 1003: goto L_0x045a;
                case 1004: goto L_0x0434;
                case 1005: goto L_0x040e;
                case 1006: goto L_0x03e4;
                case 1007: goto L_0x03ca;
                case 1008: goto L_0x03b5;
                case 1009: goto L_0x03a0;
                case 1010: goto L_0x0374;
                case 1011: goto L_0x0361;
                case 1012: goto L_0x034e;
                case 1013: goto L_0x02f1;
                case 1014: goto L_0x02d6;
                case 1015: goto L_0x02bb;
                case 1016: goto L_0x0263;
                case 1017: goto L_0x021b;
                case 1018: goto L_0x0215;
                case 1019: goto L_0x020f;
                case 1020: goto L_0x01e3;
                case 1021: goto L_0x01d8;
                case 1022: goto L_0x01c1;
                case 1023: goto L_0x01a5;
                case 1024: goto L_0x0185;
                case 1025: goto L_0x0155;
                case 1026: goto L_0x0142;
                case 1027: goto L_0x00da;
                case 1028: goto L_0x00a2;
                case 1029: goto L_0x006a;
                case 1030: goto L_0x0032;
                default: goto L_0x0030;
            }
        L_0x0030:
            goto L_0x054f
        L_0x0032:
            com.google.android.gms.maps.model.g r2 = r0.i
            if (r2 == 0) goto L_0x0039
            r2.remove()
        L_0x0039:
            cab.snapp.mapmodule.a.a.c r1 = (cab.snapp.mapmodule.a.a.c) r1
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r4 = new com.google.android.gms.maps.model.LatLng
            double r5 = r1.latitude
            double r7 = r1.longitude
            r4.<init>(r5, r7)
            r2.position(r4)
            int r4 = r1.icon
            com.google.android.gms.maps.model.a r4 = com.google.android.gms.maps.model.b.fromResource(r4)
            r2.icon(r4)
            float r4 = r1.anchorX
            float r1 = r1.anchorY
            r2.anchor(r4, r1)
            com.google.android.gms.maps.c r1 = r0.c
            com.google.android.gms.maps.model.g r1 = r1.addMarker(r2)
            r0.i = r1
            com.google.android.gms.maps.model.g r0 = r0.i
            r0.setTag(r3)
            return
        L_0x006a:
            com.google.android.gms.maps.model.g r2 = r0.h
            if (r2 == 0) goto L_0x0071
            r2.remove()
        L_0x0071:
            cab.snapp.mapmodule.a.a.c r1 = (cab.snapp.mapmodule.a.a.c) r1
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng
            double r5 = r1.latitude
            double r7 = r1.longitude
            r3.<init>(r5, r7)
            r2.position(r3)
            int r3 = r1.icon
            com.google.android.gms.maps.model.a r3 = com.google.android.gms.maps.model.b.fromResource(r3)
            r2.icon(r3)
            float r3 = r1.anchorX
            float r1 = r1.anchorY
            r2.anchor(r3, r1)
            com.google.android.gms.maps.c r1 = r0.c
            com.google.android.gms.maps.model.g r1 = r1.addMarker(r2)
            r0.h = r1
            com.google.android.gms.maps.model.g r0 = r0.h
            r0.setTag(r4)
            return
        L_0x00a2:
            com.google.android.gms.maps.model.g r2 = r0.g
            if (r2 == 0) goto L_0x00a9
            r2.remove()
        L_0x00a9:
            cab.snapp.mapmodule.a.a.c r1 = (cab.snapp.mapmodule.a.a.c) r1
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng
            double r6 = r1.latitude
            double r8 = r1.longitude
            r3.<init>(r6, r8)
            r2.position(r3)
            int r3 = r1.icon
            com.google.android.gms.maps.model.a r3 = com.google.android.gms.maps.model.b.fromResource(r3)
            r2.icon(r3)
            float r3 = r1.anchorX
            float r1 = r1.anchorY
            r2.anchor(r3, r1)
            com.google.android.gms.maps.c r1 = r0.c
            com.google.android.gms.maps.model.g r1 = r1.addMarker(r2)
            r0.g = r1
            com.google.android.gms.maps.model.g r0 = r0.g
            r0.setTag(r5)
            return
        L_0x00da:
            cab.snapp.mapmodule.a.a.t r1 = (cab.snapp.mapmodule.a.a.t) r1
            java.util.List<java.lang.Double> r2 = r1.latitudes
            int r2 = r2.size()
            java.util.List<java.lang.Double> r3 = r1.longitudes
            int r3 = r3.size()
            if (r2 == r3) goto L_0x00f2
            java.util.List<java.lang.Double> r2 = r1.latitudes
            int r2 = r2.size()
            if (r2 < r13) goto L_0x054f
        L_0x00f2:
            com.google.android.gms.maps.model.LatLngBounds$a r2 = new com.google.android.gms.maps.model.LatLngBounds$a     // Catch:{ IllegalStateException -> 0x013d }
            r2.<init>()     // Catch:{ IllegalStateException -> 0x013d }
        L_0x00f7:
            java.util.List<java.lang.Double> r3 = r1.latitudes     // Catch:{ IllegalStateException -> 0x013d }
            int r3 = r3.size()     // Catch:{ IllegalStateException -> 0x013d }
            if (r15 >= r3) goto L_0x0122
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng     // Catch:{ IllegalStateException -> 0x013d }
            java.util.List<java.lang.Double> r4 = r1.latitudes     // Catch:{ IllegalStateException -> 0x013d }
            java.lang.Object r4 = r4.get(r15)     // Catch:{ IllegalStateException -> 0x013d }
            java.lang.Double r4 = (java.lang.Double) r4     // Catch:{ IllegalStateException -> 0x013d }
            double r4 = r4.doubleValue()     // Catch:{ IllegalStateException -> 0x013d }
            java.util.List<java.lang.Double> r6 = r1.longitudes     // Catch:{ IllegalStateException -> 0x013d }
            java.lang.Object r6 = r6.get(r15)     // Catch:{ IllegalStateException -> 0x013d }
            java.lang.Double r6 = (java.lang.Double) r6     // Catch:{ IllegalStateException -> 0x013d }
            double r6 = r6.doubleValue()     // Catch:{ IllegalStateException -> 0x013d }
            r3.<init>(r4, r6)     // Catch:{ IllegalStateException -> 0x013d }
            r2.include(r3)     // Catch:{ IllegalStateException -> 0x013d }
            int r15 = r15 + 1
            goto L_0x00f7
        L_0x0122:
            com.google.android.gms.maps.model.LatLngBounds r2 = r2.build()     // Catch:{ IllegalStateException -> 0x013d }
            int r3 = r1.paddingLeft     // Catch:{ IllegalStateException -> 0x013d }
            int r4 = r1.paddingTop     // Catch:{ IllegalStateException -> 0x013d }
            int r3 = r3 + r4
            int r4 = r1.paddingRight     // Catch:{ IllegalStateException -> 0x013d }
            int r3 = r3 + r4
            int r1 = r1.paddingBottom     // Catch:{ IllegalStateException -> 0x013d }
            int r3 = r3 + r1
            int r3 = r3 / 4
            com.google.android.gms.maps.a r1 = com.google.android.gms.maps.b.newLatLngBounds(r2, r3)     // Catch:{ IllegalStateException -> 0x013d }
            com.google.android.gms.maps.c r0 = r0.c     // Catch:{ IllegalStateException -> 0x013d }
            r0.animateCamera(r1, r14, r12)     // Catch:{ IllegalStateException -> 0x013d }
            return
        L_0x013d:
            r0 = move-exception
            r0.printStackTrace()
            return
        L_0x0142:
            cab.snapp.mapmodule.a.a.g r1 = (cab.snapp.mapmodule.a.a.g) r1
            com.google.android.gms.maps.c r0 = r0.c
            if (r0 == 0) goto L_0x054f
            int r2 = r1.startPadding
            int r3 = r1.topPadding
            int r4 = r1.endPadding
            int r1 = r1.bottomPadding
            r0.setPadding(r2, r3, r4, r1)
            goto L_0x054f
        L_0x0155:
            cab.snapp.mapmodule.a.a.b r1 = (cab.snapp.mapmodule.a.a.b) r1
            com.google.android.gms.maps.c r2 = r0.c
            com.google.android.gms.maps.model.CameraPosition r2 = r2.getCameraPosition()
            com.google.android.gms.maps.model.LatLng r2 = r2.target
            com.google.android.gms.maps.model.MarkerOptions r3 = new com.google.android.gms.maps.model.MarkerOptions
            r3.<init>()
            r3.position(r2)
            int r2 = r1.icon
            com.google.android.gms.maps.model.a r2 = com.google.android.gms.maps.model.b.fromResource(r2)
            r3.icon(r2)
            float r2 = r1.anchorX
            float r4 = r1.anchorY
            r3.anchor(r2, r4)
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r0.e
            java.lang.String r1 = r1.markerTag
            com.google.android.gms.maps.c r0 = r0.c
            com.google.android.gms.maps.model.g r0 = r0.addMarker(r3)
            r2.put(r1, r0)
            return
        L_0x0185:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r1 = r0.f
            java.util.Collection r1 = r1.values()
            java.util.Iterator r1 = r1.iterator()
        L_0x018f:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x019f
            java.lang.Object r2 = r1.next()
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            r2.remove()
            goto L_0x018f
        L_0x019f:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r0.f
            r0.clear()
            return
        L_0x01a5:
            cab.snapp.mapmodule.a.a.o r1 = (cab.snapp.mapmodule.a.a.o) r1
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r1.latitude
            double r5 = r1.longitude
            r2.<init>(r3, r5)
            float r1 = r1.zoom
            com.google.android.gms.maps.a r1 = com.google.android.gms.maps.b.newLatLngZoom(r2, r1)
            com.google.android.gms.maps.c r2 = r0.c
            cab.snapp.mapmodule.units.googlemap.a$16 r3 = new cab.snapp.mapmodule.units.googlemap.a$16
            r3.<init>()
            r2.animateCamera(r1, r14, r3)
            return
        L_0x01c1:
            cab.snapp.mapmodule.a.a.f r1 = (cab.snapp.mapmodule.a.a.f) r1
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r1.latitude
            double r5 = r1.longitude
            r2.<init>(r3, r5)
            float r1 = r1.zoom
            com.google.android.gms.maps.a r1 = com.google.android.gms.maps.b.newLatLngZoom(r2, r1)
            com.google.android.gms.maps.c r0 = r0.c
            r0.moveCamera(r1)
            return
        L_0x01d8:
            com.google.android.gms.maps.c r0 = r0.c     // Catch:{ Exception -> 0x01de }
            r0.setMyLocationEnabled(r15)     // Catch:{ Exception -> 0x01de }
            return
        L_0x01de:
            r0 = move-exception
            r0.printStackTrace()
            return
        L_0x01e3:
            cab.snapp.arch.protocol.BaseController r1 = r16.getController()     // Catch:{ Exception -> 0x020a }
            android.content.Context r1 = r1.getContext()     // Catch:{ Exception -> 0x020a }
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            int r1 = androidx.core.content.ContextCompat.checkSelfPermission(r1, r2)     // Catch:{ Exception -> 0x020a }
            if (r1 == 0) goto L_0x0204
            cab.snapp.arch.protocol.BaseController r1 = r16.getController()     // Catch:{ Exception -> 0x020a }
            android.content.Context r1 = r1.getContext()     // Catch:{ Exception -> 0x020a }
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            int r1 = androidx.core.content.ContextCompat.checkSelfPermission(r1, r2)     // Catch:{ Exception -> 0x020a }
            if (r1 == 0) goto L_0x0204
            return
        L_0x0204:
            com.google.android.gms.maps.c r0 = r0.c     // Catch:{ Exception -> 0x020a }
            r0.setMyLocationEnabled(r9)     // Catch:{ Exception -> 0x020a }
            return
        L_0x020a:
            r0 = move-exception
            r0.printStackTrace()
            return
        L_0x020f:
            com.google.android.gms.maps.c r0 = r0.c
            r0.setTrafficEnabled(r15)
            return
        L_0x0215:
            com.google.android.gms.maps.c r0 = r0.c
            r0.setTrafficEnabled(r9)
            return
        L_0x021b:
            cab.snapp.mapmodule.a.a.k r1 = (cab.snapp.mapmodule.a.a.k) r1
            android.animation.ValueAnimator r2 = new android.animation.ValueAnimator
            r2.<init>()
            java.lang.Object[] r3 = new java.lang.Object[r13]
            java.lang.Float r4 = java.lang.Float.valueOf(r10)
            r3[r15] = r4
            java.lang.Float r4 = java.lang.Float.valueOf(r11)
            r3[r9] = r4
            r2.setObjectValues(r3)
            r2.setDuration(r7)
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r0.e
            java.lang.String r4 = r1.markerTag
            java.lang.Object r3 = r3.get(r4)
            com.google.android.gms.maps.model.g r3 = (com.google.android.gms.maps.model.g) r3
            if (r3 == 0) goto L_0x024b
            cab.snapp.mapmodule.units.googlemap.a$7 r1 = new cab.snapp.mapmodule.units.googlemap.a$7
            r1.<init>(r3)
            r2.addUpdateListener(r1)
            goto L_0x025f
        L_0x024b:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r0.f
            java.lang.String r1 = r1.markerTag
            java.lang.Object r1 = r3.get(r1)
            com.google.android.gms.maps.model.g r1 = (com.google.android.gms.maps.model.g) r1
            if (r1 == 0) goto L_0x025f
            cab.snapp.mapmodule.units.googlemap.a$8 r3 = new cab.snapp.mapmodule.units.googlemap.a$8
            r3.<init>(r1)
            r2.addUpdateListener(r3)
        L_0x025f:
            r2.start()
            return
        L_0x0263:
            cab.snapp.mapmodule.a.a.l r1 = (cab.snapp.mapmodule.a.a.l) r1
            android.animation.ValueAnimator r2 = new android.animation.ValueAnimator
            r2.<init>()
            java.lang.Object[] r3 = new java.lang.Object[r13]
            java.lang.Float r4 = java.lang.Float.valueOf(r11)
            r3[r15] = r4
            java.lang.Float r4 = java.lang.Float.valueOf(r10)
            r3[r9] = r4
            r2.setObjectValues(r3)
            r2.setDuration(r7)
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r0.e
            java.lang.String r4 = r1.markerTag
            java.lang.Object r3 = r3.get(r4)
            com.google.android.gms.maps.model.g r3 = (com.google.android.gms.maps.model.g) r3
            if (r3 == 0) goto L_0x029b
            cab.snapp.mapmodule.units.googlemap.a$3 r4 = new cab.snapp.mapmodule.units.googlemap.a$3
            r4.<init>(r3)
            r2.addUpdateListener(r4)
            cab.snapp.mapmodule.units.googlemap.a$4 r4 = new cab.snapp.mapmodule.units.googlemap.a$4
            r4.<init>(r3, r1)
            r2.addListener(r4)
            goto L_0x02b7
        L_0x029b:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r0.f
            java.lang.String r4 = r1.markerTag
            java.lang.Object r3 = r3.get(r4)
            com.google.android.gms.maps.model.g r3 = (com.google.android.gms.maps.model.g) r3
            if (r3 == 0) goto L_0x02b7
            cab.snapp.mapmodule.units.googlemap.a$5 r4 = new cab.snapp.mapmodule.units.googlemap.a$5
            r4.<init>(r3)
            r2.addUpdateListener(r4)
            cab.snapp.mapmodule.units.googlemap.a$6 r4 = new cab.snapp.mapmodule.units.googlemap.a$6
            r4.<init>(r3, r1)
            r2.addListener(r4)
        L_0x02b7:
            r2.start()
            return
        L_0x02bb:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r0.f
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L_0x02c5:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x02d5
            java.lang.Object r1 = r0.next()
            com.google.android.gms.maps.model.g r1 = (com.google.android.gms.maps.model.g) r1
            r1.setAlpha(r11)
            goto L_0x02c5
        L_0x02d5:
            return
        L_0x02d6:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r0.f
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L_0x02e0:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x02f0
            java.lang.Object r1 = r0.next()
            com.google.android.gms.maps.model.g r1 = (com.google.android.gms.maps.model.g) r1
            r1.setAlpha(r10)
            goto L_0x02e0
        L_0x02f0:
            return
        L_0x02f1:
            cab.snapp.mapmodule.a.a.s r1 = (cab.snapp.mapmodule.a.a.s) r1
            java.util.List<java.lang.Double> r2 = r1.longitudes
            int r2 = r2.size()
            java.util.List<java.lang.Double> r3 = r1.latitudes
            int r3 = r3.size()
            if (r2 == r3) goto L_0x0309
            java.util.List<java.lang.Double> r2 = r1.latitudes
            int r2 = r2.size()
            if (r2 < r13) goto L_0x054f
        L_0x0309:
            com.google.android.gms.maps.model.LatLngBounds$a r2 = new com.google.android.gms.maps.model.LatLngBounds$a     // Catch:{ IllegalStateException -> 0x0349 }
            r2.<init>()     // Catch:{ IllegalStateException -> 0x0349 }
        L_0x030e:
            java.util.List<java.lang.Double> r3 = r1.latitudes     // Catch:{ IllegalStateException -> 0x0349 }
            int r3 = r3.size()     // Catch:{ IllegalStateException -> 0x0349 }
            if (r15 >= r3) goto L_0x0339
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng     // Catch:{ IllegalStateException -> 0x0349 }
            java.util.List<java.lang.Double> r4 = r1.latitudes     // Catch:{ IllegalStateException -> 0x0349 }
            java.lang.Object r4 = r4.get(r15)     // Catch:{ IllegalStateException -> 0x0349 }
            java.lang.Double r4 = (java.lang.Double) r4     // Catch:{ IllegalStateException -> 0x0349 }
            double r4 = r4.doubleValue()     // Catch:{ IllegalStateException -> 0x0349 }
            java.util.List<java.lang.Double> r6 = r1.longitudes     // Catch:{ IllegalStateException -> 0x0349 }
            java.lang.Object r6 = r6.get(r15)     // Catch:{ IllegalStateException -> 0x0349 }
            java.lang.Double r6 = (java.lang.Double) r6     // Catch:{ IllegalStateException -> 0x0349 }
            double r6 = r6.doubleValue()     // Catch:{ IllegalStateException -> 0x0349 }
            r3.<init>(r4, r6)     // Catch:{ IllegalStateException -> 0x0349 }
            r2.include(r3)     // Catch:{ IllegalStateException -> 0x0349 }
            int r15 = r15 + 1
            goto L_0x030e
        L_0x0339:
            com.google.android.gms.maps.model.LatLngBounds r2 = r2.build()     // Catch:{ IllegalStateException -> 0x0349 }
            int r1 = r1.padding     // Catch:{ IllegalStateException -> 0x0349 }
            com.google.android.gms.maps.a r1 = com.google.android.gms.maps.b.newLatLngBounds(r2, r1)     // Catch:{ IllegalStateException -> 0x0349 }
            com.google.android.gms.maps.c r0 = r0.c     // Catch:{ IllegalStateException -> 0x0349 }
            r0.animateCamera(r1, r14, r12)     // Catch:{ IllegalStateException -> 0x0349 }
            return
        L_0x0349:
            r0 = move-exception
            r0.printStackTrace()
            return
        L_0x034e:
            com.google.android.gms.maps.c r1 = r0.c
            com.google.android.gms.maps.j r1 = r1.getUiSettings()
            r1.setScrollGesturesEnabled(r9)
            com.google.android.gms.maps.c r0 = r0.c
            com.google.android.gms.maps.j r0 = r0.getUiSettings()
            r0.setZoomGesturesEnabled(r9)
            return
        L_0x0361:
            com.google.android.gms.maps.c r1 = r0.c
            com.google.android.gms.maps.j r1 = r1.getUiSettings()
            r1.setScrollGesturesEnabled(r15)
            com.google.android.gms.maps.c r0 = r0.c
            com.google.android.gms.maps.j r0 = r0.getUiSettings()
            r0.setZoomGesturesEnabled(r15)
            return
        L_0x0374:
            cab.snapp.mapmodule.a.a.r r1 = (cab.snapp.mapmodule.a.a.r) r1
            com.google.android.gms.maps.c r2 = r0.c
            com.google.android.gms.maps.model.CameraPosition r2 = r2.getCameraPosition()
            if (r2 == 0) goto L_0x054f
            float r2 = r1.zoomLevel
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 < 0) goto L_0x054f
            float r2 = r1.zoomLevel
            r3 = 1099956224(0x41900000, float:18.0)
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 > 0) goto L_0x054f
            com.google.android.gms.maps.c r2 = r0.c
            com.google.android.gms.maps.model.CameraPosition r2 = r2.getCameraPosition()
            com.google.android.gms.maps.model.LatLng r2 = r2.target
            float r1 = r1.zoomLevel
            com.google.android.gms.maps.a r1 = com.google.android.gms.maps.b.newLatLngZoom(r2, r1)
            com.google.android.gms.maps.c r0 = r0.c
            r0.moveCamera(r1)
            return
        L_0x03a0:
            cab.snapp.mapmodule.a.a.e r1 = (cab.snapp.mapmodule.a.a.e) r1
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r1.latitude
            double r5 = r1.longitude
            r2.<init>(r3, r5)
            com.google.android.gms.maps.a r1 = com.google.android.gms.maps.b.newLatLng(r2)
            com.google.android.gms.maps.c r0 = r0.c
            r0.moveCamera(r1)
            return
        L_0x03b5:
            cab.snapp.mapmodule.a.a.q r1 = (cab.snapp.mapmodule.a.a.q) r1
            float r2 = r1.x
            float r1 = r1.y
            com.google.android.gms.maps.a r1 = com.google.android.gms.maps.b.scrollBy(r2, r1)
            com.google.android.gms.maps.c r2 = r0.c
            cab.snapp.mapmodule.units.googlemap.a$2 r3 = new cab.snapp.mapmodule.units.googlemap.a$2
            r3.<init>()
            r2.animateCamera(r1, r14, r3)
            return
        L_0x03ca:
            cab.snapp.mapmodule.a.a.n r1 = (cab.snapp.mapmodule.a.a.n) r1
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r1.latitude
            double r5 = r1.longitude
            r2.<init>(r3, r5)
            com.google.android.gms.maps.a r1 = com.google.android.gms.maps.b.newLatLng(r2)
            com.google.android.gms.maps.c r2 = r0.c
            cab.snapp.mapmodule.units.googlemap.a$15 r3 = new cab.snapp.mapmodule.units.googlemap.a$15
            r3.<init>()
            r2.animateCamera(r1, r14, r3)
            return
        L_0x03e4:
            cab.snapp.mapmodule.a.a.j r1 = (cab.snapp.mapmodule.a.a.j) r1
            float r2 = r1.zoomLevel
            r3 = 1099956224(0x41900000, float:18.0)
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 > 0) goto L_0x054f
            float r2 = r1.zoomLevel
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 < 0) goto L_0x054f
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            double r3 = r1.latitude
            double r5 = r1.longitude
            r2.<init>(r3, r5)
            float r1 = r1.zoomLevel
            com.google.android.gms.maps.a r1 = com.google.android.gms.maps.b.newLatLngZoom(r2, r1)
            com.google.android.gms.maps.c r2 = r0.c
            cab.snapp.mapmodule.units.googlemap.a$14 r3 = new cab.snapp.mapmodule.units.googlemap.a$14
            r3.<init>()
            r2.animateCamera(r1, r14, r3)
            return
        L_0x040e:
            cab.snapp.mapmodule.a.a.i r1 = (cab.snapp.mapmodule.a.a.i) r1
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r0.e
            java.lang.String r3 = r1.markerTag
            java.lang.Object r2 = r2.get(r3)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x0422
            float r0 = r1.rotation
            r2.setRotation(r0)
            return
        L_0x0422:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r0.f
            java.lang.String r2 = r1.markerTag
            java.lang.Object r0 = r0.get(r2)
            com.google.android.gms.maps.model.g r0 = (com.google.android.gms.maps.model.g) r0
            if (r0 == 0) goto L_0x054f
            float r1 = r1.rotation
            r0.setRotation(r1)
            return
        L_0x0434:
            cab.snapp.mapmodule.a.a.h r1 = (cab.snapp.mapmodule.a.a.h) r1
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r0.e
            java.lang.String r3 = r1.markerTag
            java.lang.Object r2 = r2.get(r3)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x0448
            float r0 = r1.alpha
            r2.setAlpha(r0)
            return
        L_0x0448:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r0.f
            java.lang.String r2 = r1.markerTag
            java.lang.Object r0 = r0.get(r2)
            com.google.android.gms.maps.model.g r0 = (com.google.android.gms.maps.model.g) r0
            if (r0 == 0) goto L_0x054f
            float r1 = r1.alpha
            r0.setAlpha(r1)
            return
        L_0x045a:
            cab.snapp.mapmodule.a.a.p r1 = (cab.snapp.mapmodule.a.a.p) r1
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r0.e
            java.lang.String r6 = r1.markerTag
            java.lang.Object r2 = r2.get(r6)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x0473
            r2.remove()
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r0.e
            java.lang.String r1 = r1.markerTag
            r0.remove(r1)
            return
        L_0x0473:
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r2 = r0.f
            java.lang.String r6 = r1.markerTag
            java.lang.Object r2 = r2.get(r6)
            com.google.android.gms.maps.model.g r2 = (com.google.android.gms.maps.model.g) r2
            if (r2 == 0) goto L_0x048a
            r2.remove()
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r0 = r0.f
            java.lang.String r1 = r1.markerTag
            r0.remove(r1)
            return
        L_0x048a:
            java.lang.String r1 = r1.markerTag
            r2 = -1
            int r6 = r1.hashCode()
            r7 = -1279750383(0xffffffffb3b88f11, float:-8.594191E-8)
            if (r6 == r7) goto L_0x04b0
            r3 = 346630886(0x14a92ae6, float:1.708156E-26)
            if (r6 == r3) goto L_0x04a8
            r3 = 1695394990(0x650dacae, float:4.181494E22)
            if (r6 == r3) goto L_0x04a1
            goto L_0x04b8
        L_0x04a1:
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x04b8
            goto L_0x04b9
        L_0x04a8:
            boolean r1 = r1.equals(r4)
            if (r1 == 0) goto L_0x04b8
            r15 = 1
            goto L_0x04b9
        L_0x04b0:
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x04b8
            r15 = 2
            goto L_0x04b9
        L_0x04b8:
            r15 = -1
        L_0x04b9:
            if (r15 == 0) goto L_0x04d4
            if (r15 == r9) goto L_0x04ca
            if (r15 == r13) goto L_0x04c0
            goto L_0x04dd
        L_0x04c0:
            com.google.android.gms.maps.model.g r1 = r0.i
            if (r1 == 0) goto L_0x04dd
            r1.remove()
            r0.i = r12
            goto L_0x04dd
        L_0x04ca:
            com.google.android.gms.maps.model.g r1 = r0.h
            if (r1 == 0) goto L_0x04dd
            r1.remove()
            r0.h = r12
            return
        L_0x04d4:
            com.google.android.gms.maps.model.g r1 = r0.g
            if (r1 == 0) goto L_0x04dd
            r1.remove()
            r0.g = r12
        L_0x04dd:
            return
        L_0x04de:
            cab.snapp.mapmodule.a.a.d r1 = (cab.snapp.mapmodule.a.a.d) r1
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng
            double r4 = r1.latitude
            double r6 = r1.longitude
            r3.<init>(r4, r6)
            r2.position(r3)
            int r3 = r1.icon
            com.google.android.gms.maps.model.a r3 = com.google.android.gms.maps.model.b.fromResource(r3)
            r2.icon(r3)
            float r3 = r1.anchorX
            float r4 = r1.anchorY
            r2.anchor(r3, r4)
            float r3 = r1.alpha
            r2.alpha(r3)
            float r3 = r1.rotation
            r2.rotation(r3)
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r0.f
            java.lang.String r1 = r1.markerTag
            com.google.android.gms.maps.c r0 = r0.c
            com.google.android.gms.maps.model.g r0 = r0.addMarker(r2)
            r3.put(r1, r0)
            return
        L_0x0519:
            cab.snapp.mapmodule.a.a.a r1 = (cab.snapp.mapmodule.a.a.a) r1
            com.google.android.gms.maps.model.MarkerOptions r2 = new com.google.android.gms.maps.model.MarkerOptions
            r2.<init>()
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng
            double r4 = r1.latitude
            double r6 = r1.longitude
            r3.<init>(r4, r6)
            r2.position(r3)
            int r3 = r1.icon
            com.google.android.gms.maps.model.a r3 = com.google.android.gms.maps.model.b.fromResource(r3)
            r2.icon(r3)
            float r3 = r1.anchorX
            float r4 = r1.anchorY
            r2.anchor(r3, r4)
            java.util.Map<java.lang.String, com.google.android.gms.maps.model.g> r3 = r0.e
            java.lang.String r1 = r1.markerTag
            com.google.android.gms.maps.c r0 = r0.c
            com.google.android.gms.maps.model.g r0 = r0.addMarker(r2)
            r3.put(r1, r0)
            return
        L_0x054a:
            com.google.android.gms.maps.c r0 = r0.c
            r0.clear()
        L_0x054f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.mapmodule.units.googlemap.a.a(cab.snapp.mapmodule.units.googlemap.a, cab.snapp.mapmodule.a.a.m):void");
    }
}
