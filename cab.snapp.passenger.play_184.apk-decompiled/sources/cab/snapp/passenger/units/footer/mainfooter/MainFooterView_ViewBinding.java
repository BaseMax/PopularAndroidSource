package cab.snapp.passenger.units.footer.mainfooter;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappCircleProgressBar;

public class MainFooterView_ViewBinding implements Unbinder {
    private MainFooterView target;

    public MainFooterView_ViewBinding(MainFooterView mainFooterView) {
        this(mainFooterView, mainFooterView);
    }

    public MainFooterView_ViewBinding(MainFooterView mainFooterView, View view) {
        this.target = mainFooterView;
        mainFooterView.selectOriginLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_main_footer_select_origin_layout, "field 'selectOriginLayout'", LinearLayout.class);
        mainFooterView.vehiclesProgressBar = (SnappCircleProgressBar) Utils.findRequiredViewAsType(view, R.id.view_main_footer_vehicles_progressbar, "field 'vehiclesProgressBar'", SnappCircleProgressBar.class);
        mainFooterView.vehiclesTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_main_footer_vehicles_textview, "field 'vehiclesTextView'", TextView.class);
        mainFooterView.addressTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_main_footer_address_textview, "field 'addressTextView'", TextView.class);
        mainFooterView.selectDestinationLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_main_footer_select_destination_layout, "field 'selectDestinationLayout'", LinearLayout.class);
        mainFooterView.originAddressTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_main_footer_origin_address_textview, "field 'originAddressTextView'", TextView.class);
        mainFooterView.destAddressTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_main_footer_destination_address_textview, "field 'destAddressTextView'", TextView.class);
    }

    public void unbind() {
        MainFooterView mainFooterView = this.target;
        if (mainFooterView != null) {
            this.target = null;
            mainFooterView.selectOriginLayout = null;
            mainFooterView.vehiclesProgressBar = null;
            mainFooterView.vehiclesTextView = null;
            mainFooterView.addressTextView = null;
            mainFooterView.selectDestinationLayout = null;
            mainFooterView.originAddressTextView = null;
            mainFooterView.destAddressTextView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
