package cab.snapp.passenger.units.charge_recently;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.a.d;

public class ChargeRecentlyMobileNumbersView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f648a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f649b;
    private RecentlyMobileNumbersSheetDialogFragment c;
    @BindView(2131362234)
    AppCompatImageView closeIv;
    @BindView(2131362398)
    AppCompatTextView recentMobileNumberNotFound;
    @BindView(2131362399)
    RecyclerView recyclerView;

    @OnClick({2131362234})
    public void dismiss() {
        c cVar = this.f648a;
        if (!(cVar == null || cVar.getInteractor() == null)) {
            cVar.getInteractor();
            a.a();
        }
        RecentlyMobileNumbersSheetDialogFragment recentlyMobileNumbersSheetDialogFragment = this.c;
        if (recentlyMobileNumbersSheetDialogFragment != null) {
            recentlyMobileNumbersSheetDialogFragment.dismiss();
        }
    }

    public ChargeRecentlyMobileNumbersView(Context context) {
        super(context);
    }

    public ChargeRecentlyMobileNumbersView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ChargeRecentlyMobileNumbersView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f649b = ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f648a = cVar;
    }

    public void setController(RecentlyMobileNumbersSheetDialogFragment recentlyMobileNumbersSheetDialogFragment) {
        this.c = recentlyMobileNumbersSheetDialogFragment;
    }

    public void setAdapter(d dVar) {
        this.recyclerView.setAdapter(dVar);
    }

    public void showNotFoundError() {
        this.recentMobileNumberNotFound.setVisibility(0);
    }

    public void hideNotFoundError() {
        this.recentMobileNumberNotFound.setVisibility(8);
    }
}
