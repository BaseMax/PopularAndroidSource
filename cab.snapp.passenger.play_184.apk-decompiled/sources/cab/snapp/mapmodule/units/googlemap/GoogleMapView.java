package cab.snapp.mapmodule.units.googlemap;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.mapmodule.a;
import cab.snapp.mapmodule.b;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.f;
import com.google.android.gms.maps.model.MapStyleOptions;

public class GoogleMapView extends RelativeLayout implements BaseView<b> {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public b f249a;

    /* renamed from: b  reason: collision with root package name */
    private MapView f250b;

    public GoogleMapView(Context context) {
        super(context);
    }

    public GoogleMapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GoogleMapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f250b = (MapView) findViewById(b.a.view_google_map_map_view);
        this.f250b.getMapAsync(new f() {
            public final void onMapReady(c cVar) {
                if (a.getInstance().getGoogleMapStyle() != 0) {
                    cVar.setMapStyle(MapStyleOptions.loadRawResourceStyle(GoogleMapView.this.getContext(), a.getInstance().getGoogleMapStyle()));
                }
                GoogleMapView.this.f249a.initScaleGestureDetector(GoogleMapView.this.getContext());
                GoogleMapView.this.f249a.onMapReady(cVar);
            }
        });
    }

    public MapView getMapView() {
        return this.f250b;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        b bVar = this.f249a;
        if (bVar != null) {
            bVar.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setPresenter(b bVar) {
        this.f249a = bVar;
    }
}
