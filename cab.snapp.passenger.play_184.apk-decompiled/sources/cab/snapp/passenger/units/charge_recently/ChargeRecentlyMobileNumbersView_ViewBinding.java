package cab.snapp.passenger.units.charge_recently;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class ChargeRecentlyMobileNumbersView_ViewBinding implements Unbinder {
    private ChargeRecentlyMobileNumbersView target;
    private View view7f0a01ba;

    public ChargeRecentlyMobileNumbersView_ViewBinding(ChargeRecentlyMobileNumbersView chargeRecentlyMobileNumbersView) {
        this(chargeRecentlyMobileNumbersView, chargeRecentlyMobileNumbersView);
    }

    public ChargeRecentlyMobileNumbersView_ViewBinding(final ChargeRecentlyMobileNumbersView chargeRecentlyMobileNumbersView, View view) {
        this.target = chargeRecentlyMobileNumbersView;
        View findRequiredView = Utils.findRequiredView(view, R.id.iv_close, "field 'closeIv' and method 'dismiss'");
        chargeRecentlyMobileNumbersView.closeIv = (AppCompatImageView) Utils.castView(findRequiredView, R.id.iv_close, "field 'closeIv'", AppCompatImageView.class);
        this.view7f0a01ba = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeRecentlyMobileNumbersView.dismiss();
            }
        });
        chargeRecentlyMobileNumbersView.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView, "field 'recyclerView'", RecyclerView.class);
        chargeRecentlyMobileNumbersView.recentMobileNumberNotFound = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.recent_mobile_numbers_not_found, "field 'recentMobileNumberNotFound'", AppCompatTextView.class);
    }

    public void unbind() {
        ChargeRecentlyMobileNumbersView chargeRecentlyMobileNumbersView = this.target;
        if (chargeRecentlyMobileNumbersView != null) {
            this.target = null;
            chargeRecentlyMobileNumbersView.closeIv = null;
            chargeRecentlyMobileNumbersView.recyclerView = null;
            chargeRecentlyMobileNumbersView.recentMobileNumberNotFound = null;
            this.view7f0a01ba.setOnClickListener(null);
            this.view7f0a01ba = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
