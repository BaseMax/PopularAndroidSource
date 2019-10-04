package cab.snapp.mapmodule.units.map;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.mapmodule.b;

public class MapView extends RelativeLayout implements BaseView<b> {

    /* renamed from: a  reason: collision with root package name */
    FrameLayout f280a;

    /* renamed from: b  reason: collision with root package name */
    private b f281b;

    public MapView(Context context) {
        super(context);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f280a = (FrameLayout) findViewById(b.a.view_map_container_frame);
    }

    /* access modifiers changed from: protected */
    public ViewGroup getChildFrameContainer() {
        return this.f280a;
    }

    public void setPresenter(b bVar) {
        this.f281b = bVar;
    }
}
