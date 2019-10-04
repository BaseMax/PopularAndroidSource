package cab.snapp.passenger.units.second_destination;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappFloatingActionButton;

public class SecondDestinationView_ViewBinding implements Unbinder {
    private SecondDestinationView target;
    private View view7f0a045b;
    private View view7f0a045c;

    public SecondDestinationView_ViewBinding(SecondDestinationView secondDestinationView) {
        this(secondDestinationView, secondDestinationView);
    }

    public SecondDestinationView_ViewBinding(final SecondDestinationView secondDestinationView, View view) {
        this.target = secondDestinationView;
        secondDestinationView.vMapParent = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_second_destination_map_parent, "field 'vMapParent'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_second_destination_pin_marker, "field 'vPinMarker' and method 'onPinClick'");
        secondDestinationView.vPinMarker = (AppCompatImageButton) Utils.castView(findRequiredView, R.id.view_second_destination_pin_marker, "field 'vPinMarker'", AppCompatImageButton.class);
        this.view7f0a045c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                secondDestinationView.onPinClick();
            }
        });
        secondDestinationView.pinMarkerShadowIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_second_destination_center_shadow_iv, "field 'pinMarkerShadowIv'", ImageView.class);
        secondDestinationView.pinMarkerDotIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_second_destination_center_dot_iv, "field 'pinMarkerDotIv'", ImageView.class);
        secondDestinationView.tvDescriptionAddress = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_second_destination_tv, "field 'tvDescriptionAddress'", AppCompatTextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_second_destination_my_location_fab, "field 'btnMyLocationFab' and method 'onMyLocationClick'");
        secondDestinationView.btnMyLocationFab = (SnappFloatingActionButton) Utils.castView(findRequiredView2, R.id.view_second_destination_my_location_fab, "field 'btnMyLocationFab'", SnappFloatingActionButton.class);
        this.view7f0a045b = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                secondDestinationView.onMyLocationClick();
            }
        });
        secondDestinationView.tvMapBoxCopyright = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_second_destination_mapbox_copyright_tv, "field 'tvMapBoxCopyright'", AppCompatTextView.class);
    }

    public void unbind() {
        SecondDestinationView secondDestinationView = this.target;
        if (secondDestinationView != null) {
            this.target = null;
            secondDestinationView.vMapParent = null;
            secondDestinationView.vPinMarker = null;
            secondDestinationView.pinMarkerShadowIv = null;
            secondDestinationView.pinMarkerDotIv = null;
            secondDestinationView.tvDescriptionAddress = null;
            secondDestinationView.btnMyLocationFab = null;
            secondDestinationView.tvMapBoxCopyright = null;
            this.view7f0a045c.setOnClickListener(null);
            this.view7f0a045c = null;
            this.view7f0a045b.setOnClickListener(null);
            this.view7f0a045b = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
