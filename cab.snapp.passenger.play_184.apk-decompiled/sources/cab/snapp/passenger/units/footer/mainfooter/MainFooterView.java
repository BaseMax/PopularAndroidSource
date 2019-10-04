package cab.snapp.passenger.units.footer.mainfooter;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.snappuikit.SnappCircleProgressBar;

public class MainFooterView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f766a;
    @BindView(2131362666)
    TextView addressTextView;
    @BindView(2131362667)
    TextView destAddressTextView;
    @BindView(2131362669)
    TextView originAddressTextView;
    @BindView(2131362671)
    LinearLayout selectDestinationLayout;
    @BindView(2131362672)
    LinearLayout selectOriginLayout;
    @BindView(2131362673)
    SnappCircleProgressBar vehiclesProgressBar;
    @BindView(2131362674)
    TextView vehiclesTextView;

    public MainFooterView(Context context) {
        super(context);
    }

    public MainFooterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MainFooterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f766a = cVar;
    }
}
