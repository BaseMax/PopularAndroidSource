package cab.snapp.passenger.units.charge_select_type;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class ChargeSelectTypeView_ViewBinding implements Unbinder {
    private ChargeSelectTypeView target;
    private View view7f0a01ba;

    public ChargeSelectTypeView_ViewBinding(ChargeSelectTypeView chargeSelectTypeView) {
        this(chargeSelectTypeView, chargeSelectTypeView);
    }

    public ChargeSelectTypeView_ViewBinding(final ChargeSelectTypeView chargeSelectTypeView, View view) {
        this.target = chargeSelectTypeView;
        chargeSelectTypeView.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView, "field 'recyclerView'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.iv_close, "method 'onCloseClicked'");
        this.view7f0a01ba = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeSelectTypeView.onCloseClicked();
            }
        });
    }

    public void unbind() {
        ChargeSelectTypeView chargeSelectTypeView = this.target;
        if (chargeSelectTypeView != null) {
            this.target = null;
            chargeSelectTypeView.recyclerView = null;
            this.view7f0a01ba.setOnClickListener(null);
            this.view7f0a01ba = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
