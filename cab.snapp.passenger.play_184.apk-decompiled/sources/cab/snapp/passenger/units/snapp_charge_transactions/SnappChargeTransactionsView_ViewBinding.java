package cab.snapp.passenger.units.snapp_charge_transactions;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;

public class SnappChargeTransactionsView_ViewBinding implements Unbinder {
    private SnappChargeTransactionsView target;
    private View view7f0a01c3;

    public SnappChargeTransactionsView_ViewBinding(SnappChargeTransactionsView snappChargeTransactionsView) {
        this(snappChargeTransactionsView, snappChargeTransactionsView);
    }

    public SnappChargeTransactionsView_ViewBinding(final SnappChargeTransactionsView snappChargeTransactionsView, View view) {
        this.target = snappChargeTransactionsView;
        snappChargeTransactionsView.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.layout_snapp_charge_transactions_top_toolbar, "field 'toolbar'", Toolbar.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.layout_snapp_charge_back_arrow_iv_layout, "field 'backLayout' and method 'onBackLayoutClicked'");
        snappChargeTransactionsView.backLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.layout_snapp_charge_back_arrow_iv_layout, "field 'backLayout'", LinearLayout.class);
        this.view7f0a01c3 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                snappChargeTransactionsView.onBackLayoutClicked();
            }
        });
        snappChargeTransactionsView.snappChargeTransactionsRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.snapp_charge_transactions_history_recycler_view, "field 'snappChargeTransactionsRecyclerView'", RecyclerView.class);
        snappChargeTransactionsView.emptyStatRl = Utils.findRequiredView(view, R.id.snapp_charge_transactions_empty_layout, "field 'emptyStatRl'");
        snappChargeTransactionsView.snappLoading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.snapp_charge_transactions_loading, "field 'snappLoading'", SnappLoading.class);
    }

    public void unbind() {
        SnappChargeTransactionsView snappChargeTransactionsView = this.target;
        if (snappChargeTransactionsView != null) {
            this.target = null;
            snappChargeTransactionsView.toolbar = null;
            snappChargeTransactionsView.backLayout = null;
            snappChargeTransactionsView.snappChargeTransactionsRecyclerView = null;
            snappChargeTransactionsView.emptyStatRl = null;
            snappChargeTransactionsView.snappLoading = null;
            this.view7f0a01c3.setOnClickListener(null);
            this.view7f0a01c3 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
