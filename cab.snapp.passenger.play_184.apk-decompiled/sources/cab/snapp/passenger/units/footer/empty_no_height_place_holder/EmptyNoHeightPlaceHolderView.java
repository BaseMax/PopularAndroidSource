package cab.snapp.passenger.units.footer.empty_no_height_place_holder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import butterknife.ButterKnife;
import cab.snapp.arch.protocol.BaseView;

public class EmptyNoHeightPlaceHolderView extends LinearLayout implements BaseView<b> {

    /* renamed from: a  reason: collision with root package name */
    protected b f765a;

    public EmptyNoHeightPlaceHolderView(Context context) {
        super(context);
    }

    public EmptyNoHeightPlaceHolderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EmptyNoHeightPlaceHolderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(b bVar) {
        this.f765a = bVar;
    }
}
