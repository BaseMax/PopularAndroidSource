package cab.snapp.passenger.units.credit;

import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappFloatingActionButton;

public class CreditView_ViewBinding implements Unbinder {
    private CreditView target;
    private View view7f0a0332;

    public CreditView_ViewBinding(CreditView creditView) {
        this(creditView, creditView);
    }

    public CreditView_ViewBinding(final CreditView creditView, View view) {
        this.target = creditView;
        creditView.viewCreditRv = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_credit_rv, "field 'viewCreditRv'", RecyclerView.class);
        creditView.viewCreditEmpty = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_credit_empty, "field 'viewCreditEmpty'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_credit_add_btn, "field 'viewCreditAddBtn' and method 'onAddCreditButton'");
        creditView.viewCreditAddBtn = (SnappFloatingActionButton) Utils.castView(findRequiredView, R.id.view_credit_add_btn, "field 'viewCreditAddBtn'", SnappFloatingActionButton.class);
        this.view7f0a0332 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                creditView.onAddCreditButton((SnappFloatingActionButton) Utils.castParam(view, "doClick", 0, "onAddCreditButton", 0, SnappFloatingActionButton.class));
            }
        });
    }

    public void unbind() {
        CreditView creditView = this.target;
        if (creditView != null) {
            this.target = null;
            creditView.viewCreditRv = null;
            creditView.viewCreditEmpty = null;
            creditView.viewCreditAddBtn = null;
            this.view7f0a0332.setOnClickListener(null);
            this.view7f0a0332 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
