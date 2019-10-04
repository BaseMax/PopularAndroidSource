package cab.snapp.passenger.units.ride_rating;

import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.ratingbar.ScaleRatingBar;
import com.google.android.material.tabs.TabLayout;

public class RideRatingView_ViewBinding implements Unbinder {
    private RideRatingView target;
    private View view7f0a0279;
    private View view7f0a041c;
    private View view7f0a0420;
    private View view7f0a0422;
    private View view7f0a0427;

    public RideRatingView_ViewBinding(RideRatingView rideRatingView) {
        this(rideRatingView, rideRatingView);
    }

    public RideRatingView_ViewBinding(final RideRatingView rideRatingView, View view) {
        this.target = rideRatingView;
        rideRatingView.sceneContainerFl = (FrameLayout) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_scene_container_fl, "field 'sceneContainerFl'", FrameLayout.class);
        rideRatingView.toolbarTitleTextView = (AppCompatTextView) Utils.findOptionalViewAsType(view, R.id.ride_rating_toolbar_text_view, "field 'toolbarTitleTextView'", AppCompatTextView.class);
        View findViewById = view.findViewById(R.id.ride_rating_toolbar_image_view);
        rideRatingView.toolbarCancelButton = (ImageView) Utils.castView(findViewById, R.id.ride_rating_toolbar_image_view, "field 'toolbarCancelButton'", ImageView.class);
        if (findViewById != null) {
            this.view7f0a0279 = findViewById;
            findViewById.setOnClickListener(new DebouncingOnClickListener() {
                public final void doClick(View view) {
                    rideRatingView.onToolbarCancelButtonClicked();
                }
            });
        }
        rideRatingView.starBar = (ScaleRatingBar) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_star_bar, "field 'starBar'", ScaleRatingBar.class);
        rideRatingView.rideTitleTextView = (AppCompatTextView) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_ride_title_text_view, "field 'rideTitleTextView'", AppCompatTextView.class);
        rideRatingView.driverInfoTextView = (AppCompatTextView) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_star_driver_info_text_view, "field 'driverInfoTextView'", AppCompatTextView.class);
        rideRatingView.rideAddressTextView = (AppCompatTextView) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_ride_address_text_view, "field 'rideAddressTextView'", AppCompatTextView.class);
        rideRatingView.rateDescriptionTextView = (AppCompatTextView) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_feedback_ride_rate_description_text_view, "field 'rateDescriptionTextView'", AppCompatTextView.class);
        rideRatingView.driverImageView = (ImageView) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_star_driver_image_view, "field 'driverImageView'", ImageView.class);
        rideRatingView.fakeCommentLayout = (ViewGroup) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_feedback_fake_comment_layout, "field 'fakeCommentLayout'", ViewGroup.class);
        View findViewById2 = view.findViewById(R.id.view_ride_rating_feedback_fake_comment_submit_text_view_btn);
        rideRatingView.fakeCommentSubmitButton = (SnappButton) Utils.castView(findViewById2, R.id.view_ride_rating_feedback_fake_comment_submit_text_view_btn, "field 'fakeCommentSubmitButton'", SnappButton.class);
        if (findViewById2 != null) {
            this.view7f0a0420 = findViewById2;
            findViewById2.setOnClickListener(new DebouncingOnClickListener() {
                public final void doClick(View view) {
                    rideRatingView.onFakeCommentSubmitButtonClicked();
                }
            });
        }
        rideRatingView.fakeCommentEditText = (EditText) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_feedback_fake_comment_edit_text, "field 'fakeCommentEditText'", EditText.class);
        rideRatingView.commentEditText = (EditText) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_comment_edit_text, "field 'commentEditText'", EditText.class);
        rideRatingView.viewPager = (ViewPager) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_feedback_view_pager, "field 'viewPager'", ViewPager.class);
        rideRatingView.tabLayout = (TabLayout) Utils.findOptionalViewAsType(view, R.id.view_ride_rating_feedback_tab_layout, "field 'tabLayout'", TabLayout.class);
        rideRatingView.feedbackTabDividerRed = view.findViewById(R.id.view_ride_rating_feedback_tab_layout_red_divider);
        View findViewById3 = view.findViewById(R.id.view_ride_rating_comment_submit_btn);
        rideRatingView.commentSubmitBtn = (SnappButton) Utils.castView(findViewById3, R.id.view_ride_rating_comment_submit_btn, "field 'commentSubmitBtn'", SnappButton.class);
        if (findViewById3 != null) {
            this.view7f0a041c = findViewById3;
            findViewById3.setOnClickListener(new DebouncingOnClickListener() {
                public final void doClick(View view) {
                    rideRatingView.onCommentSubmitButtonClicked();
                }
            });
        }
        View findViewById4 = view.findViewById(R.id.view_ride_rating_feedback_write_comment_btn);
        rideRatingView.writeCommentBtn = (AppCompatTextView) Utils.castView(findViewById4, R.id.view_ride_rating_feedback_write_comment_btn, "field 'writeCommentBtn'", AppCompatTextView.class);
        if (findViewById4 != null) {
            this.view7f0a0427 = findViewById4;
            findViewById4.setOnClickListener(new DebouncingOnClickListener() {
                public final void doClick(View view) {
                    rideRatingView.onCommentClicked();
                }
            });
        }
        View findViewById5 = view.findViewById(R.id.view_ride_rating_feedback_submit_feedback_btn);
        if (findViewById5 != null) {
            this.view7f0a0422 = findViewById5;
            findViewById5.setOnClickListener(new DebouncingOnClickListener() {
                public final void doClick(View view) {
                    rideRatingView.onSubmitClicked();
                }
            });
        }
    }

    public void unbind() {
        RideRatingView rideRatingView = this.target;
        if (rideRatingView != null) {
            this.target = null;
            rideRatingView.sceneContainerFl = null;
            rideRatingView.toolbarTitleTextView = null;
            rideRatingView.toolbarCancelButton = null;
            rideRatingView.starBar = null;
            rideRatingView.rideTitleTextView = null;
            rideRatingView.driverInfoTextView = null;
            rideRatingView.rideAddressTextView = null;
            rideRatingView.rateDescriptionTextView = null;
            rideRatingView.driverImageView = null;
            rideRatingView.fakeCommentLayout = null;
            rideRatingView.fakeCommentSubmitButton = null;
            rideRatingView.fakeCommentEditText = null;
            rideRatingView.commentEditText = null;
            rideRatingView.viewPager = null;
            rideRatingView.tabLayout = null;
            rideRatingView.feedbackTabDividerRed = null;
            rideRatingView.commentSubmitBtn = null;
            rideRatingView.writeCommentBtn = null;
            View view = this.view7f0a0279;
            if (view != null) {
                view.setOnClickListener(null);
                this.view7f0a0279 = null;
            }
            View view2 = this.view7f0a0420;
            if (view2 != null) {
                view2.setOnClickListener(null);
                this.view7f0a0420 = null;
            }
            View view3 = this.view7f0a041c;
            if (view3 != null) {
                view3.setOnClickListener(null);
                this.view7f0a041c = null;
            }
            View view4 = this.view7f0a0427;
            if (view4 != null) {
                view4.setOnClickListener(null);
                this.view7f0a0427 = null;
            }
            View view5 = this.view7f0a0422;
            if (view5 != null) {
                view5.setOnClickListener(null);
                this.view7f0a0422 = null;
                return;
            }
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
