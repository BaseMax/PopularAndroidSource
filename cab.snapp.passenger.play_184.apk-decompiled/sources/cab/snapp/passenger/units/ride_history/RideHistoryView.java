package cab.snapp.passenger.units.ride_history;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.a.h;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;
import cab.snapp.snappuikit.b;
import cab.snapp.snappuikit.c;

public class RideHistoryView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1074a;

    /* renamed from: b  reason: collision with root package name */
    private r f1075b;
    @BindView(2131362415)
    SnappLoading loading;
    @BindView(2131362412)
    ViewGroup rideHistoryEmptyLayout;
    @BindView(2131362419)
    RecyclerView rideHistoryRecyclerView;

    public RideHistoryView(Context context) {
        super(context);
    }

    public RideHistoryView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RideHistoryView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void showLoading() {
        r rVar = this.f1075b;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public void hideLoading() {
        r rVar = this.f1075b;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void setAdapter(h hVar) {
        this.rideHistoryRecyclerView.setAdapter(hVar);
    }

    public void showEmptyList() {
        this.rideHistoryEmptyLayout.setVisibility(0);
        this.rideHistoryRecyclerView.setVisibility(8);
    }

    public void hideEmptyList() {
        this.rideHistoryEmptyLayout.setVisibility(8);
        this.rideHistoryRecyclerView.setVisibility(0);
    }

    public void showRequestError(int i) {
        if (getContext() != null) {
            b.makeText(getContext(), getContext().getString(i)).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void smoothScrollList(int i) {
        this.rideHistoryRecyclerView.smoothScrollToPosition(i);
    }

    public void fullScrollUp() {
        this.rideHistoryRecyclerView.smoothScrollToPosition(0);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.f1075b = new r(getContext());
        c cVar = new c(this);
        cVar.setTitle((int) R.string.ride_history);
        cVar.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                RideHistoryView.this.a(view);
            }
        });
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 1, false);
        this.rideHistoryRecyclerView.setLayoutManager(linearLayoutManager);
        this.rideHistoryRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() {
            public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (linearLayoutManager.findLastVisibleItemPosition() == recyclerView.getAdapter().getItemCount() - 1) {
                    RideHistoryView.this.f1074a.onReachedToTheEndOfList();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f1074a.onBackButtonClicked();
    }

    public void setPresenter(c cVar) {
        this.f1074a = cVar;
    }
}
