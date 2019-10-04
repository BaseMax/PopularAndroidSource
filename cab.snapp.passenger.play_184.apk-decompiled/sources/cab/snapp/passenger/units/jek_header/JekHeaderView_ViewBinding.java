package cab.snapp.passenger.units.jek_header;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class JekHeaderView_ViewBinding implements Unbinder {
    private JekHeaderView target;
    private View view7f0a034e;

    public JekHeaderView_ViewBinding(JekHeaderView jekHeaderView) {
        this(jekHeaderView, jekHeaderView);
    }

    public JekHeaderView_ViewBinding(final JekHeaderView jekHeaderView, View view) {
        this.target = jekHeaderView;
        jekHeaderView.creditTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_jek_header_credit_textview, "field 'creditTextView'", AppCompatTextView.class);
        jekHeaderView.addCreditTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_jek_header_add_credit_textview, "field 'addCreditTextView'", AppCompatTextView.class);
        jekHeaderView.creditHolder = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_jek_header_credit_holder, "field 'creditHolder'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_jek_header_add_credit_layout, "method 'onAddCreditClicked'");
        this.view7f0a034e = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                jekHeaderView.onAddCreditClicked();
            }
        });
    }

    public void unbind() {
        JekHeaderView jekHeaderView = this.target;
        if (jekHeaderView != null) {
            this.target = null;
            jekHeaderView.creditTextView = null;
            jekHeaderView.addCreditTextView = null;
            jekHeaderView.creditHolder = null;
            this.view7f0a034e.setOnClickListener(null);
            this.view7f0a034e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
