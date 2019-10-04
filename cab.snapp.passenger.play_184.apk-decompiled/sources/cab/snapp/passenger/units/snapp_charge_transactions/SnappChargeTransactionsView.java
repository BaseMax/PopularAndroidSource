package cab.snapp.passenger.units.snapp_charge_transactions;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;
import cab.snapp.snappuikit.b;
import cab.snapp.snappuikit.c.a;

public class SnappChargeTransactionsView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1286a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f1287b;
    @BindView(2131362243)
    LinearLayout backLayout;
    @BindView(2131362496)
    View emptyStatRl;
    @BindView(2131362497)
    RecyclerView snappChargeTransactionsRecyclerView;
    @BindView(2131362498)
    SnappLoading snappLoading;
    @BindView(2131362265)
    Toolbar toolbar;

    @OnClick({2131362243})
    public void onBackLayoutClicked() {
        c cVar = this.f1286a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    public SnappChargeTransactionsView(Context context) {
        super(context);
    }

    public SnappChargeTransactionsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappChargeTransactionsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void smoothScrollList(int i) {
        this.snappChargeTransactionsRecyclerView.smoothScrollToPosition(i);
    }

    public void fullScrollUp() {
        this.snappChargeTransactionsRecyclerView.smoothScrollToPosition(0);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1287b = ButterKnife.bind((Object) this, (View) this);
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 1, false);
        this.snappChargeTransactionsRecyclerView.setLayoutManager(linearLayoutManager);
        this.snappChargeTransactionsRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() {
            public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (linearLayoutManager.findLastVisibleItemPosition() == recyclerView.getAdapter().getItemCount() - 1) {
                    SnappChargeTransactionsView.this.f1286a.onReachedToTheEndOfList();
                }
            }
        });
    }

    public void showLoading() {
        this.snappLoading.setVisibility(0);
    }

    public void hideLoading() {
        this.snappLoading.setVisibility(8);
    }

    public void showRequestError(int i) {
        if (getContext() != null) {
            b.makeText(getContext(), getContext().getString(i)).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void showEmptyList() {
        this.emptyStatRl.setVisibility(0);
        this.snappChargeTransactionsRecyclerView.setVisibility(8);
    }

    public void hideEmptyList() {
        this.emptyStatRl.setVisibility(8);
        this.snappChargeTransactionsRecyclerView.setVisibility(0);
    }

    public void setAdapter(cab.snapp.passenger.a.b bVar) {
        this.snappChargeTransactionsRecyclerView.setAdapter(bVar);
    }

    public void setPresenter(c cVar) {
        this.f1286a = cVar;
    }

    public void setStatusBarColor(int i) {
        if (getContext() != null && (getContext() instanceof Activity) && ((Activity) getContext()).getWindow() != null) {
            a.setStatusBarColorRes((Activity) getContext(), i);
        }
    }
}
