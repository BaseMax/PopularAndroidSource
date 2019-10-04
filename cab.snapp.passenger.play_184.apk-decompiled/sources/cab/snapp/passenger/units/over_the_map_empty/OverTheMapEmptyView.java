package cab.snapp.passenger.units.over_the_map_empty;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import cab.snapp.arch.protocol.BaseView;

public class OverTheMapEmptyView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f977a;

    public OverTheMapEmptyView(Context context) {
        super(context);
    }

    public OverTheMapEmptyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public OverTheMapEmptyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setPresenter(c cVar) {
        this.f977a = cVar;
    }
}
