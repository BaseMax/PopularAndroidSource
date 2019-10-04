package cab.snapp.passenger.units.box_options;

import android.view.View;
import android.widget.EditText;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappCheckBox;

public class BoxOptionsView_ViewBinding implements Unbinder {
    private BoxOptionsView target;
    private View view7f0a0326;

    public BoxOptionsView_ViewBinding(BoxOptionsView boxOptionsView) {
        this(boxOptionsView, boxOptionsView);
    }

    public BoxOptionsView_ViewBinding(final BoxOptionsView boxOptionsView, View view) {
        this.target = boxOptionsView;
        boxOptionsView.fullNameEditText = (EditText) Utils.findRequiredViewAsType(view, R.id.view_box_options_fullname_et, "field 'fullNameEditText'", EditText.class);
        boxOptionsView.mobileEditText = (EditText) Utils.findRequiredViewAsType(view, R.id.view_box_options_mobile_et, "field 'mobileEditText'", EditText.class);
        boxOptionsView.addressEditText = (EditText) Utils.findRequiredViewAsType(view, R.id.view_box_options_address_et, "field 'addressEditText'", EditText.class);
        boxOptionsView.descEditText = (EditText) Utils.findRequiredViewAsType(view, R.id.view_box_options_desc_et, "field 'descEditText'", EditText.class);
        boxOptionsView.cashByRecipientCheckBox = (SnappCheckBox) Utils.findRequiredViewAsType(view, R.id.view_box_options_cash_by_recipient_chbox, "field 'cashByRecipientCheckBox'", SnappCheckBox.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_box_option_container, "method 'onContainerClicked'");
        this.view7f0a0326 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                boxOptionsView.onContainerClicked(view);
            }
        });
    }

    public void unbind() {
        BoxOptionsView boxOptionsView = this.target;
        if (boxOptionsView != null) {
            this.target = null;
            boxOptionsView.fullNameEditText = null;
            boxOptionsView.mobileEditText = null;
            boxOptionsView.addressEditText = null;
            boxOptionsView.descEditText = null;
            boxOptionsView.cashByRecipientCheckBox = null;
            this.view7f0a0326.setOnClickListener(null);
            this.view7f0a0326 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
