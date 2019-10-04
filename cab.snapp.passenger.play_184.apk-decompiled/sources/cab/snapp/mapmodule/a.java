package cab.snapp.mapmodule;

import android.content.Context;
import android.os.Handler;
import androidx.core.view.PointerIconCompat;
import cab.snapp.mapmodule.a.a.d;
import cab.snapp.mapmodule.a.a.e;
import cab.snapp.mapmodule.a.a.f;
import cab.snapp.mapmodule.a.a.g;
import cab.snapp.mapmodule.a.a.h;
import cab.snapp.mapmodule.a.a.i;
import cab.snapp.mapmodule.a.a.j;
import cab.snapp.mapmodule.a.a.k;
import cab.snapp.mapmodule.a.a.l;
import cab.snapp.mapmodule.a.a.m;
import cab.snapp.mapmodule.a.a.n;
import cab.snapp.mapmodule.a.a.o;
import cab.snapp.mapmodule.a.a.p;
import cab.snapp.mapmodule.a.a.q;
import cab.snapp.mapmodule.a.a.r;
import cab.snapp.mapmodule.a.a.s;
import cab.snapp.mapmodule.a.a.t;
import cab.snapp.mapmodule.a.b.c;
import com.mapbox.android.telemetry.TelemetryEnabler;
import com.mapbox.mapboxsdk.LibraryLoader;
import com.mapbox.mapboxsdk.Mapbox;
import io.reactivex.j.b;
import io.reactivex.z;

public final class a {
    public static final String ADD_MARKER = "ADD_MARKER";
    public static final String ADD_MARKER_ON_CENTER = "ADD_MARKER_ON_CENTER";
    public static final String DESTINATION_MARKER_TAG = "DESTINATION_MARKER_TAG";
    public static final String ORIGIN_MARKER_TAG = "ORIGIN_MARKER_TAG";
    public static final String SECOND_DESTINATION_MARKER_TAG = "SECOND_DESTINATION_MARKER_TAG";
    private static a c;

    /* renamed from: a  reason: collision with root package name */
    b<m> f243a = b.create();

    /* renamed from: b  reason: collision with root package name */
    int f244b = 0;
    private b<c> d = b.create();
    private int e = -1;
    private String f;
    private int g;

    private a() {
    }

    public static synchronized a getInstance() {
        a aVar;
        synchronized (a.class) {
            if (c == null) {
                c = new a();
            }
            aVar = c;
        }
        return aVar;
    }

    public final void initMapBox(final Context context, String str, String str2) {
        LibraryLoader.setLibraryLoader(new LibraryLoader() {
            public final void load(String str) {
                com.getkeepsafe.a.c.loadLibrary(context, str);
            }
        });
        Mapbox.getInstance(context, str);
        TelemetryEnabler.updateTelemetryState(TelemetryEnabler.State.DISABLED);
        this.f = str2;
        this.e = 1;
    }

    public final void initGoogleMap(int i) {
        this.g = i;
        this.e = 0;
    }

    public final b<m> getCommandsPublishSubject() {
        return this.f243a;
    }

    public final b<c> getEventsPublishSubject() {
        return this.d;
    }

    public final z<c> getEventsObservable() {
        return this.d;
    }

    public final int getMapType() {
        int i = this.e;
        if (i != -1) {
            return i;
        }
        throw new IllegalStateException("You must call initMapBox or initGoogleMap before using MapModule");
    }

    public final String getMapStyleUrl() {
        return this.f;
    }

    public final int getGoogleMapStyle() {
        return this.g;
    }

    public final void clearMap(int i) {
        this.f243a.onNext(new m(1000, i));
    }

    public final void addMarker(cab.snapp.mapmodule.a.a.a aVar) {
        this.f243a.onNext(aVar);
    }

    public final void addMarkerOnCenter(cab.snapp.mapmodule.a.a.b bVar) {
        this.f243a.onNext(bVar);
    }

    public final void addVehicleMarker(d dVar) {
        this.f243a.onNext(dVar);
    }

    public final void removeMarker(p pVar) {
        this.f243a.onNext(pVar);
    }

    public final void changeMarkerAlpha(h hVar) {
        this.f243a.onNext(hVar);
    }

    public final void changeMarkerRotation(i iVar) {
        this.f243a.onNext(iVar);
    }

    public final void changeZoomAnimated(j jVar) {
        a(jVar);
    }

    public final void moveAnimated(n nVar) {
        a(nVar);
    }

    public final void moveAnimatedWithZoom(o oVar) {
        a(oVar);
    }

    public final void scrollMap(q qVar) {
        a(qVar);
    }

    public final void changeCenter(e eVar) {
        a(eVar);
    }

    public final void changeCenterWithZoom(f fVar) {
        a(fVar);
    }

    public final void setZoom(r rVar) {
        a(rVar);
    }

    public final void lockMap(int i) {
        this.f243a.onNext(new m(1011, i));
    }

    public final void unlockMap(int i) {
        this.f243a.onNext(new m(1012, i));
    }

    public final void zoomToBoundingBox(s sVar) {
        a(sVar);
    }

    public final void hideVehicleMarkers(int i) {
        this.f243a.onNext(new m(1014, i));
    }

    public final void showVehicleMarkers(int i) {
        this.f243a.onNext(new m(1015, i));
    }

    public final void fadeOutMarker(l lVar) {
        this.f243a.onNext(lVar);
    }

    public final void fadeInMarker(k kVar) {
        this.f243a.onNext(kVar);
    }

    public final void showTraffic(int i) {
        this.f243a.onNext(new m(PointerIconCompat.TYPE_ZOOM_IN, i));
    }

    public final void hideTraffic(int i) {
        this.f243a.onNext(new m(PointerIconCompat.TYPE_ZOOM_OUT, i));
    }

    public final void showUserLocationIndicator(int i) {
        this.f243a.onNext(new m(PointerIconCompat.TYPE_GRAB, i));
    }

    public final void hideUserLocationIndicator(int i) {
        this.f243a.onNext(new m(PointerIconCompat.TYPE_GRABBING, i));
    }

    public final void removeAllVehicles(int i) {
        this.f243a.onNext(new m(1024, i));
    }

    public final void changeLogoPadding(g gVar) {
        this.f243a.onNext(gVar);
    }

    public final void zoomToBoundingBoxWithDifferentPaddings(t tVar) {
        this.f243a.onNext(tVar);
    }

    public final void addOriginMarker(cab.snapp.mapmodule.a.a.a aVar) {
        this.f243a.onNext(new cab.snapp.mapmodule.a.a.c(1028, aVar));
    }

    public final void addDestinationMarker(cab.snapp.mapmodule.a.a.a aVar) {
        this.f243a.onNext(new cab.snapp.mapmodule.a.a.c(1029, aVar));
    }

    public final void addSecondDestinationMarker(cab.snapp.mapmodule.a.a.a aVar) {
        this.f243a.onNext(new cab.snapp.mapmodule.a.a.c(1030, aVar));
    }

    private void a(final m mVar) {
        new Handler().postDelayed(new Runnable() {
            public final void run() {
                a.this.f243a.onNext(mVar);
                if (a.this.f244b > 0) {
                    a aVar = a.this;
                    aVar.f244b--;
                }
            }
        }, (long) (this.f244b * 300));
        this.f244b++;
    }
}
