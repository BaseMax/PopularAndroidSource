package cab.snapp.passenger.units.mainheader;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.footer.ride_request_footer.SnappCountingTextView;
import cab.snapp.snappuikit.SnappLoading;

public class MainHeaderView_ViewBinding implements Unbinder {
    private MainHeaderView target;
    private View view7f0a0373;
    private View view7f0a0374;
    private View view7f0a0375;
    private View view7f0a037b;
    private View view7f0a0384;
    private View view7f0a0387;
    private View view7f0a0389;
    private View view7f0a038a;
    private View view7f0a038c;
    private View view7f0a038d;
    private View view7f0a0392;

    public MainHeaderView_ViewBinding(MainHeaderView mainHeaderView) {
        this(mainHeaderView, mainHeaderView);
    }

    public MainHeaderView_ViewBinding(final MainHeaderView mainHeaderView, View view) {
        this.target = mainHeaderView;
        mainHeaderView.startButtonsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_main_header_start_buttons_layout, "field 'startButtonsLayout'", LinearLayout.class);
        mainHeaderView.endButtonsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_main_header_end_buttons_layout, "field 'endButtonsLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_main_header_title_tv, "field 'titleTextView' and method 'onMainHeaderTitleClicked'");
        mainHeaderView.titleTextView = (TextView) Utils.castView(findRequiredView, R.id.view_main_header_title_tv, "field 'titleTextView'", TextView.class);
        this.view7f0a0392 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onMainHeaderTitleClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_main_header_drawer_ib, "field 'drawerImageButton' and method 'onDrawerIbClicked'");
        mainHeaderView.drawerImageButton = (ImageButton) Utils.castView(findRequiredView2, R.id.view_main_header_drawer_ib, "field 'drawerImageButton'", ImageButton.class);
        this.view7f0a0375 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onDrawerIbClicked();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_main_header_search_ib, "field 'searchImageButton' and method 'onSearchIbClicked'");
        mainHeaderView.searchImageButton = (ImageButton) Utils.castView(findRequiredView3, R.id.view_main_header_search_ib, "field 'searchImageButton'", ImageButton.class);
        this.view7f0a0389 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onSearchIbClicked();
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_main_header_back_ib, "field 'backImageButton' and method 'onBackIbClicked'");
        mainHeaderView.backImageButton = (ImageButton) Utils.castView(findRequiredView4, R.id.view_main_header_back_ib, "field 'backImageButton'", ImageButton.class);
        this.view7f0a0373 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onBackIbClicked();
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_main_header_cancel_ib, "field 'cancelImageButton' and method 'onCancelIbClicked'");
        mainHeaderView.cancelImageButton = (ImageButton) Utils.castView(findRequiredView5, R.id.view_main_header_cancel_ib, "field 'cancelImageButton'", ImageButton.class);
        this.view7f0a0374 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onCancelIbClicked();
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.view_main_header_share_ride_tv, "field 'shareRideButton' and method 'onShareRideClicked'");
        mainHeaderView.shareRideButton = (AppCompatTextView) Utils.castView(findRequiredView6, R.id.view_main_header_share_ride_tv, "field 'shareRideButton'", AppCompatTextView.class);
        this.view7f0a038a = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onShareRideClicked();
            }
        });
        mainHeaderView.favoritesContainer = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_main_header_favorites_container_relative_layout, "field 'favoritesContainer'", RelativeLayout.class);
        mainHeaderView.snappToLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_main_header_snapp_to_layout, "field 'snappToLayout'", LinearLayout.class);
        mainHeaderView.snappToTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_main_header_snapp_to_tv, "field 'snappToTextView'", TextView.class);
        mainHeaderView.priceLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_main_header_price_layout, "field 'priceLayout'", LinearLayout.class);
        View findRequiredView7 = Utils.findRequiredView(view, R.id.view_main_header_promo_btn, "field 'promoButton' and method 'onPromoBtnClicked'");
        mainHeaderView.promoButton = (AppCompatButton) Utils.castView(findRequiredView7, R.id.view_main_header_promo_btn, "field 'promoButton'", AppCompatButton.class);
        this.view7f0a0384 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onPromoBtnClicked();
            }
        });
        mainHeaderView.priceTv = (SnappCountingTextView) Utils.findRequiredViewAsType(view, R.id.view_main_header_price_counting_tv, "field 'priceTv'", SnappCountingTextView.class);
        mainHeaderView.priceRialsTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_main_header_price_rials_tv, "field 'priceRialsTv'", AppCompatTextView.class);
        mainHeaderView.freeRideTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_main_header_free_ride_tv, "field 'freeRideTv'", AppCompatTextView.class);
        mainHeaderView.sufficientCreditIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_main_header_price_sufficient_credit_iv, "field 'sufficientCreditIv'", ImageView.class);
        mainHeaderView.sufficientCreditTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_main_header_price_sufficient_credit_tv, "field 'sufficientCreditTv'", AppCompatTextView.class);
        mainHeaderView.paymentStatusLayout = Utils.findRequiredView(view, R.id.view_main_header_payment_status, "field 'paymentStatusLayout'");
        View findRequiredView8 = Utils.findRequiredView(view, R.id.view_main_header_options_btn, "field 'optionsBtn' and method 'onOptionsBtnClicked'");
        mainHeaderView.optionsBtn = (AppCompatButton) Utils.castView(findRequiredView8, R.id.view_main_header_options_btn, "field 'optionsBtn'", AppCompatButton.class);
        this.view7f0a037b = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onOptionsBtnClicked();
            }
        });
        mainHeaderView.promoLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_main_header_promo_layout, "field 'promoLayout'", RelativeLayout.class);
        mainHeaderView.promoEditText = (AppCompatEditText) Utils.findRequiredViewAsType(view, R.id.view_main_header_promo_et, "field 'promoEditText'", AppCompatEditText.class);
        View findRequiredView9 = Utils.findRequiredView(view, R.id.view_main_header_promo_save_btn, "field 'submitPromoButton' and method 'onSubmitPromoBtnClicked'");
        mainHeaderView.submitPromoButton = (AppCompatButton) Utils.castView(findRequiredView9, R.id.view_main_header_promo_save_btn, "field 'submitPromoButton'", AppCompatButton.class);
        this.view7f0a0387 = findRequiredView9;
        findRequiredView9.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onSubmitPromoBtnClicked();
            }
        });
        mainHeaderView.snappLoading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_main_header_promo_snapp_loading, "field 'snappLoading'", SnappLoading.class);
        mainHeaderView.optionsContainerLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_main_header_options_container_relative_layout, "field 'optionsContainerLayout'", LinearLayout.class);
        mainHeaderView.optionsContainerView = Utils.findRequiredView(view, R.id.view_main_header_options_container, "field 'optionsContainerView'");
        mainHeaderView.snappArrivedLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_main_header_snapp_arrived_layout, "field 'snappArrivedLayout'", RelativeLayout.class);
        View findRequiredView10 = Utils.findRequiredView(view, R.id.view_main_header_snapp_arrived_message_to_driver_tv, "field 'messageToDriverTextView' and method 'onMessageToDriverTvClicked'");
        mainHeaderView.messageToDriverTextView = (AppCompatTextView) Utils.castView(findRequiredView10, R.id.view_main_header_snapp_arrived_message_to_driver_tv, "field 'messageToDriverTextView'", AppCompatTextView.class);
        this.view7f0a038d = findRequiredView10;
        findRequiredView10.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onMessageToDriverTvClicked();
            }
        });
        View findRequiredView11 = Utils.findRequiredView(view, R.id.view_main_header_snapp_arrived_message_to_driver_iv, "field 'messageToDriverImageView' and method 'onMessageToDriverIvClicked'");
        mainHeaderView.messageToDriverImageView = (ImageView) Utils.castView(findRequiredView11, R.id.view_main_header_snapp_arrived_message_to_driver_iv, "field 'messageToDriverImageView'", ImageView.class);
        this.view7f0a038c = findRequiredView11;
        findRequiredView11.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                mainHeaderView.onMessageToDriverIvClicked();
            }
        });
        mainHeaderView.snappToLayoutDummy = Utils.findRequiredView(view, R.id.view_main_header_snapp_to_layout_dummy, "field 'snappToLayoutDummy'");
    }

    public void unbind() {
        MainHeaderView mainHeaderView = this.target;
        if (mainHeaderView != null) {
            this.target = null;
            mainHeaderView.startButtonsLayout = null;
            mainHeaderView.endButtonsLayout = null;
            mainHeaderView.titleTextView = null;
            mainHeaderView.drawerImageButton = null;
            mainHeaderView.searchImageButton = null;
            mainHeaderView.backImageButton = null;
            mainHeaderView.cancelImageButton = null;
            mainHeaderView.shareRideButton = null;
            mainHeaderView.favoritesContainer = null;
            mainHeaderView.snappToLayout = null;
            mainHeaderView.snappToTextView = null;
            mainHeaderView.priceLayout = null;
            mainHeaderView.promoButton = null;
            mainHeaderView.priceTv = null;
            mainHeaderView.priceRialsTv = null;
            mainHeaderView.freeRideTv = null;
            mainHeaderView.sufficientCreditIv = null;
            mainHeaderView.sufficientCreditTv = null;
            mainHeaderView.paymentStatusLayout = null;
            mainHeaderView.optionsBtn = null;
            mainHeaderView.promoLayout = null;
            mainHeaderView.promoEditText = null;
            mainHeaderView.submitPromoButton = null;
            mainHeaderView.snappLoading = null;
            mainHeaderView.optionsContainerLayout = null;
            mainHeaderView.optionsContainerView = null;
            mainHeaderView.snappArrivedLayout = null;
            mainHeaderView.messageToDriverTextView = null;
            mainHeaderView.messageToDriverImageView = null;
            mainHeaderView.snappToLayoutDummy = null;
            this.view7f0a0392.setOnClickListener(null);
            this.view7f0a0392 = null;
            this.view7f0a0375.setOnClickListener(null);
            this.view7f0a0375 = null;
            this.view7f0a0389.setOnClickListener(null);
            this.view7f0a0389 = null;
            this.view7f0a0373.setOnClickListener(null);
            this.view7f0a0373 = null;
            this.view7f0a0374.setOnClickListener(null);
            this.view7f0a0374 = null;
            this.view7f0a038a.setOnClickListener(null);
            this.view7f0a038a = null;
            this.view7f0a0384.setOnClickListener(null);
            this.view7f0a0384 = null;
            this.view7f0a037b.setOnClickListener(null);
            this.view7f0a037b = null;
            this.view7f0a0387.setOnClickListener(null);
            this.view7f0a0387 = null;
            this.view7f0a038d.setOnClickListener(null);
            this.view7f0a038d = null;
            this.view7f0a038c.setOnClickListener(null);
            this.view7f0a038c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
