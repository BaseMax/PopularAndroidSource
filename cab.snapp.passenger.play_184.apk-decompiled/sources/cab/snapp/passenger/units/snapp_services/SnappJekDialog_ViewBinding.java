package cab.snapp.passenger.units.snapp_services;

import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import io.github.kshitij_jain.indicatorview.IndicatorView;

public class SnappJekDialog_ViewBinding implements Unbinder {
    private SnappJekDialog target;
    private View view7f0a0123;
    private View view7f0a0125;

    public SnappJekDialog_ViewBinding(final SnappJekDialog snappJekDialog, View view) {
        this.target = snappJekDialog;
        snappJekDialog.contentViewPager = (ViewPagerWithWrapContent) Utils.findRequiredViewAsType(view, R.id.dialog_snapp_jek_content_viewpager, "field 'contentViewPager'", ViewPagerWithWrapContent.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.dialog_snapp_jek_next_action_btn, "field 'nextBtn' and method 'goToNext'");
        snappJekDialog.nextBtn = (AppCompatButton) Utils.castView(findRequiredView, R.id.dialog_snapp_jek_next_action_btn, "field 'nextBtn'", AppCompatButton.class);
        this.view7f0a0125 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                snappJekDialog.goToNext();
            }
        });
        snappJekDialog.indicatorView = (IndicatorView) Utils.findRequiredViewAsType(view, R.id.circle_indicator_view, "field 'indicatorView'", IndicatorView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.dialog_snapp_jek_close_btn, "method 'closeDialog'");
        this.view7f0a0123 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                snappJekDialog.closeDialog();
            }
        });
    }

    public void unbind() {
        SnappJekDialog snappJekDialog = this.target;
        if (snappJekDialog != null) {
            this.target = null;
            snappJekDialog.contentViewPager = null;
            snappJekDialog.nextBtn = null;
            snappJekDialog.indicatorView = null;
            this.view7f0a0125.setOnClickListener(null);
            this.view7f0a0125 = null;
            this.view7f0a0123.setOnClickListener(null);
            this.view7f0a0123 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
