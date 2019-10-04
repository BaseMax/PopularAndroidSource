package cab.snapp.passenger.units.favorite_add_address;

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

public class FavoriteAddAddressView_ViewBinding implements Unbinder {
    private FavoriteAddAddressView target;
    private View view7f0a0345;
    private View view7f0a0346;

    public FavoriteAddAddressView_ViewBinding(FavoriteAddAddressView favoriteAddAddressView) {
        this(favoriteAddAddressView, favoriteAddAddressView);
    }

    public FavoriteAddAddressView_ViewBinding(final FavoriteAddAddressView favoriteAddAddressView, View view) {
        this.target = favoriteAddAddressView;
        favoriteAddAddressView.viewFavoriteAddAddressMapParent = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_favorite_add_address_map_parent, "field 'viewFavoriteAddAddressMapParent'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_favorite_address_pin_marker, "field 'viewFavoriteAddressPinMarker' and method 'onPinClick'");
        favoriteAddAddressView.viewFavoriteAddressPinMarker = (AppCompatImageButton) Utils.castView(findRequiredView, R.id.view_favorite_address_pin_marker, "field 'viewFavoriteAddressPinMarker'", AppCompatImageButton.class);
        this.view7f0a0346 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                favoriteAddAddressView.onPinClick();
            }
        });
        favoriteAddAddressView.pinMarkerShadowIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_favorite_add_address_center_shadow_iv, "field 'pinMarkerShadowIv'", ImageView.class);
        favoriteAddAddressView.pinMarkerDotIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_favorite_add_address_center_dot_iv, "field 'pinMarkerDotIv'", ImageView.class);
        favoriteAddAddressView.viewFavoriteAddAddressTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_favorite_add_address_tv, "field 'viewFavoriteAddAddressTv'", AppCompatTextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_favorite_address_my_location_fab, "field 'viewFavoriteAddAddressMyLocationFab' and method 'onMyLocationClick'");
        favoriteAddAddressView.viewFavoriteAddAddressMyLocationFab = (SnappFloatingActionButton) Utils.castView(findRequiredView2, R.id.view_favorite_address_my_location_fab, "field 'viewFavoriteAddAddressMyLocationFab'", SnappFloatingActionButton.class);
        this.view7f0a0345 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                favoriteAddAddressView.onMyLocationClick();
            }
        });
        favoriteAddAddressView.viewFavoriteAddAddressMapBoxCopyrightTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_favorite_address_mapbox_copyright_tv, "field 'viewFavoriteAddAddressMapBoxCopyrightTv'", AppCompatTextView.class);
    }

    public void unbind() {
        FavoriteAddAddressView favoriteAddAddressView = this.target;
        if (favoriteAddAddressView != null) {
            this.target = null;
            favoriteAddAddressView.viewFavoriteAddAddressMapParent = null;
            favoriteAddAddressView.viewFavoriteAddressPinMarker = null;
            favoriteAddAddressView.pinMarkerShadowIv = null;
            favoriteAddAddressView.pinMarkerDotIv = null;
            favoriteAddAddressView.viewFavoriteAddAddressTv = null;
            favoriteAddAddressView.viewFavoriteAddAddressMyLocationFab = null;
            favoriteAddAddressView.viewFavoriteAddAddressMapBoxCopyrightTv = null;
            this.view7f0a0346.setOnClickListener(null);
            this.view7f0a0346 = null;
            this.view7f0a0345.setOnClickListener(null);
            this.view7f0a0345 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
