package cab.snapp.passenger.units.referral;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class ReferralView_ViewBinding implements Unbinder {
    private ReferralView target;
    private View view7f0a03e0;

    public ReferralView_ViewBinding(ReferralView referralView) {
        this(referralView, referralView);
    }

    public ReferralView_ViewBinding(final ReferralView referralView, View view) {
        this.target = referralView;
        referralView.introTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_referral_referral_intro_text_view, "field 'introTextView'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_referral_code_text_view, "field 'codeTextView' and method 'onReferalCodeClicked'");
        referralView.codeTextView = (TextView) Utils.castView(findRequiredView, R.id.view_referral_code_text_view, "field 'codeTextView'", TextView.class);
        this.view7f0a03e0 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                referralView.onReferalCodeClicked();
            }
        });
        referralView.appsRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_referral_referral_apps_recycler_view, "field 'appsRecyclerView'", RecyclerView.class);
        referralView.progressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.view_referral_loading_progress_bar, "field 'progressBar'", ProgressBar.class);
    }

    public void unbind() {
        ReferralView referralView = this.target;
        if (referralView != null) {
            this.target = null;
            referralView.introTextView = null;
            referralView.codeTextView = null;
            referralView.appsRecyclerView = null;
            referralView.progressBar = null;
            this.view7f0a03e0.setOnClickListener(null);
            this.view7f0a03e0 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
