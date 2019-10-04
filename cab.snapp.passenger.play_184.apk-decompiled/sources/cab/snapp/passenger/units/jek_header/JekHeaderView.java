package cab.snapp.passenger.units.jek_header;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;

public class JekHeaderView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f818a;
    @BindView(2131362639)
    AppCompatTextView addCreditTextView;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f819b;
    @BindView(2131362640)
    LinearLayout creditHolder;
    @BindView(2131362641)
    AppCompatTextView creditTextView;

    /* access modifiers changed from: package-private */
    @OnClick({2131362638})
    public void onAddCreditClicked() {
        c cVar = this.f818a;
        if (cVar != null) {
            cVar.addCreditClicked();
        }
    }

    public JekHeaderView(Context context) {
        super(context);
    }

    public JekHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public JekHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f819b = ButterKnife.bind((Object) this, (View) this);
    }

    public void showAddCreditLayout() {
        this.creditHolder.setVisibility(8);
        this.addCreditTextView.setVisibility(0);
    }

    public void hideAddCreditLayout() {
        this.creditHolder.setVisibility(0);
        this.addCreditTextView.setVisibility(8);
    }

    public void setPresenter(c cVar) {
        this.f818a = cVar;
    }
}
