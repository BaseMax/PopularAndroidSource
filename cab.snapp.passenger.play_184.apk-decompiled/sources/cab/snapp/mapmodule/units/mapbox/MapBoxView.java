package cab.snapp.mapmodule.units.mapbox;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.mapmodule.a;
import cab.snapp.mapmodule.b;
import com.mapbox.mapboxsdk.location.LocationComponent;
import com.mapbox.mapboxsdk.location.LocationComponentActivationOptions;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.OnMapReadyCallback;
import com.mapbox.mapboxsdk.maps.Style;

public class MapBoxView extends RelativeLayout implements BaseView<b> {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public b f282a;

    /* renamed from: b  reason: collision with root package name */
    private LocationComponent f283b;
    private MapView c;

    public MapBoxView(Context context) {
        super(context);
    }

    public MapBoxView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MapBoxView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.c = (MapView) findViewById(b.a.view_map_box_map_view);
        try {
            this.c.getMapAsync(new OnMapReadyCallback() {
                public final void onMapReady(MapboxMap mapboxMap) {
                    MapBoxView.this.b(mapboxMap);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(final MapboxMap mapboxMap) {
        if (a.getInstance().getMapStyleUrl() != null) {
            mapboxMap.setStyle(new Style.Builder().fromUrl(a.getInstance().getMapStyleUrl()), (Style.OnStyleLoaded) new Style.OnStyleLoaded() {
                public final void onStyleLoaded(Style style) {
                    MapBoxView.this.f282a.initScaleGestureDetector(MapBoxView.this.getContext());
                    MapBoxView.this.f282a.onMapReady(mapboxMap);
                    MapBoxView.this.a(mapboxMap);
                }
            });
            return;
        }
        this.f282a.initScaleGestureDetector(getContext());
        this.f282a.onMapReady(mapboxMap);
        a(mapboxMap);
    }

    /* access modifiers changed from: private */
    public void a(MapboxMap mapboxMap) {
        if (com.mapbox.android.a.c.b.areLocationPermissionsGranted(getContext()) && mapboxMap.getStyle() != null) {
            this.f283b = mapboxMap.getLocationComponent();
            this.f283b.activateLocationComponent(new LocationComponentActivationOptions.Builder(getContext(), mapboxMap.getStyle()).build());
            this.f283b.setLocationComponentEnabled(true);
            this.f283b.setRenderMode(4);
        }
    }

    public MapView getMapView() {
        return this.c;
    }

    public LocationComponent getLocationComponent() {
        return this.f283b;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        b bVar = this.f282a;
        if (bVar == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (bVar.dispatchTouchEvent(motionEvent)) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    public void setPresenter(b bVar) {
        this.f282a = bVar;
    }
}
