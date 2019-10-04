package cab.snapp.passenger.units.main;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappFloatingActionButton;

public class MainView_ViewBinding implements Unbinder {
    private MainView target;
    private View view7f0a0396;
    private View view7f0a039b;
    private View view7f0a03a2;
    private View view7f0a049c;
    private View view7f0a04a0;
    private View view7f0a04a3;

    public MainView_ViewBinding(MainView mainView) {
        this(mainView, mainView);
    }

    public MainView_ViewBinding(final MainView mainView, View view) {
        this.target = mainView;
        mainView.locationSelectorDotIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_main_center_dot_iv, "field 'locationSelectorDotIv'", ImageView.class);
        mainView.locationSelectorShadowIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_main_center_shadow_iv, "field 'locationSelectorShadowIv'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_main_location_selector_ib, "field 'locationSelectorImageButton' and method 'onLocationSelectorClick'");
        mainView.locationSelectorImageButton = (ImageButton) Utils.castView(findRequiredView, R.id.view_main_location_selector_ib, "field 'locationSelectorImageButton'", ImageButton.class);
        this.view7f0a0396 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainView.onLocationSelectorClick();
            }
        });
        mainView.footerContainerView = Utils.findRequiredView(view, R.id.view_main_footer_fragment, "field 'footerContainerView'");
        mainView.headerContainerView = Utils.findRequiredView(view, R.id.view_main_header_fragment, "field 'headerContainerView'");
        mainView.mapLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_main_map, "field 'mapLayout'", RelativeLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_main_my_location_fab, "field 'myLocationFab' and method 'onMyLocationClicked'");
        mainView.myLocationFab = (SnappFloatingActionButton) Utils.castView(findRequiredView2, R.id.view_main_my_location_fab, "field 'myLocationFab'", SnappFloatingActionButton.class);
        this.view7f0a039b = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainView.onMyLocationClicked();
            }
        });
        mainView.mapBoxCopyrightTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_main_mapbox_copyright_tv, "field 'mapBoxCopyrightTv'", AppCompatTextView.class);
        mainView.updateBannerLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_main_update_banner_layout, "field 'updateBannerLayout'", RelativeLayout.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_main_update_banner_new_features_btn, "field 'updateBannerNewFeaturesBtn' and method 'onNewFeaturesBtnClicked'");
        mainView.updateBannerNewFeaturesBtn = (AppCompatButton) Utils.castView(findRequiredView3, R.id.view_main_update_banner_new_features_btn, "field 'updateBannerNewFeaturesBtn'", AppCompatButton.class);
        this.view7f0a03a2 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainView.onNewFeaturesBtnClicked();
            }
        });
        mainView.updateBannerTitleTb = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_main_update_banner_title_tv, "field 'updateBannerTitleTb'", AppCompatTextView.class);
        mainView.updateBannerDescriptionTb = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_main_update_banner_description_tv, "field 'updateBannerDescriptionTb'", AppCompatTextView.class);
        mainView.contentGradientView = Utils.findRequiredView(view, R.id.view_main_content_gradient_view, "field 'contentGradientView'");
        mainView.headerGradientView = Utils.findRequiredView(view, R.id.view_main_header_gradient_view, "field 'headerGradientView'");
        mainView.snappJekRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_main_snapp_jek_recycler_view, "field 'snappJekRecyclerView'", RecyclerView.class);
        mainView.snappJekBottomSheet = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_main_snapp_jek_bottom_sheet, "field 'snappJekBottomSheet'", LinearLayout.class);
        mainView.snappJekFrame = Utils.findRequiredView(view, R.id.view_main_snapp_jek_frame, "field 'snappJekFrame'");
        mainView.snappJekServiceTypesControl = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_main_snapp_jek_service_types_control, "field 'snappJekServiceTypesControl'", RelativeLayout.class);
        mainView.snappJekServiceTypesCardView = (CardView) Utils.findRequiredViewAsType(view, R.id.view_snapp_jek_service_types_card, "field 'snappJekServiceTypesCardView'", CardView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_snapp_jek_service_types_first_item, "field 'firstServiceTypeItem' and method 'onRideItemOneClicked'");
        mainView.firstServiceTypeItem = (LinearLayout) Utils.castView(findRequiredView4, R.id.view_snapp_jek_service_types_first_item, "field 'firstServiceTypeItem'", LinearLayout.class);
        this.view7f0a049c = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainView.onRideItemOneClicked();
            }
        });
        mainView.firstServiceTypeItemImageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_snapp_jek_service_types_first_item_imageview, "field 'firstServiceTypeItemImageView'", ImageView.class);
        mainView.firstServiceTypeItemTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_snapp_jek_service_types_first_item_textview, "field 'firstServiceTypeItemTextView'", AppCompatTextView.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_snapp_jek_service_types_sec_item, "field 'secondServiceTypeItem' and method 'onRideItemTwoClicked'");
        mainView.secondServiceTypeItem = (LinearLayout) Utils.castView(findRequiredView5, R.id.view_snapp_jek_service_types_sec_item, "field 'secondServiceTypeItem'", LinearLayout.class);
        this.view7f0a04a0 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainView.onRideItemTwoClicked();
            }
        });
        mainView.secondServiceTypeItemImageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_snapp_jek_service_types_sec_item_imageview, "field 'secondServiceTypeItemImageView'", ImageView.class);
        mainView.secondServiceTypeItemTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_snapp_jek_service_types_sec_item_textview, "field 'secondServiceTypeItemTextView'", AppCompatTextView.class);
        View findRequiredView6 = Utils.findRequiredView(view, R.id.view_snapp_jek_service_types_third_item, "field 'thirdServiceTypeItem' and method 'onRideItemThreeClicked'");
        mainView.thirdServiceTypeItem = (LinearLayout) Utils.castView(findRequiredView6, R.id.view_snapp_jek_service_types_third_item, "field 'thirdServiceTypeItem'", LinearLayout.class);
        this.view7f0a04a3 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainView.onRideItemThreeClicked();
            }
        });
        mainView.thirdServiceTypeItemImageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_snapp_jek_service_types_third_item_imageview, "field 'thirdServiceTypeItemImageView'", ImageView.class);
        mainView.thirdServiceTypeItemTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_snapp_jek_service_types_third_item_textview, "field 'thirdServiceTypeItemTextView'", AppCompatTextView.class);
    }

    public void unbind() {
        MainView mainView = this.target;
        if (mainView != null) {
            this.target = null;
            mainView.locationSelectorDotIv = null;
            mainView.locationSelectorShadowIv = null;
            mainView.locationSelectorImageButton = null;
            mainView.footerContainerView = null;
            mainView.headerContainerView = null;
            mainView.mapLayout = null;
            mainView.myLocationFab = null;
            mainView.mapBoxCopyrightTv = null;
            mainView.updateBannerLayout = null;
            mainView.updateBannerNewFeaturesBtn = null;
            mainView.updateBannerTitleTb = null;
            mainView.updateBannerDescriptionTb = null;
            mainView.contentGradientView = null;
            mainView.headerGradientView = null;
            mainView.snappJekRecyclerView = null;
            mainView.snappJekBottomSheet = null;
            mainView.snappJekFrame = null;
            mainView.snappJekServiceTypesControl = null;
            mainView.snappJekServiceTypesCardView = null;
            mainView.firstServiceTypeItem = null;
            mainView.firstServiceTypeItemImageView = null;
            mainView.firstServiceTypeItemTextView = null;
            mainView.secondServiceTypeItem = null;
            mainView.secondServiceTypeItemImageView = null;
            mainView.secondServiceTypeItemTextView = null;
            mainView.thirdServiceTypeItem = null;
            mainView.thirdServiceTypeItemImageView = null;
            mainView.thirdServiceTypeItemTextView = null;
            this.view7f0a0396.setOnClickListener(null);
            this.view7f0a0396 = null;
            this.view7f0a039b.setOnClickListener(null);
            this.view7f0a039b = null;
            this.view7f0a03a2.setOnClickListener(null);
            this.view7f0a03a2 = null;
            this.view7f0a049c.setOnClickListener(null);
            this.view7f0a049c = null;
            this.view7f0a04a0.setOnClickListener(null);
            this.view7f0a04a0 = null;
            this.view7f0a04a3.setOnClickListener(null);
            this.view7f0a04a3 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
