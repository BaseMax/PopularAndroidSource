package cab.snapp.passenger.units.ride_rating;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.transition.Scene;
import androidx.transition.TransitionInflater;
import androidx.transition.TransitionManager;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Optional;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.a.k;
import cab.snapp.passenger.f.l;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.ride_rating.widget.RideRatingTabView;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.b;
import cab.snapp.snappuikit.ratingbar.BaseRatingBar;
import cab.snapp.snappuikit.ratingbar.ScaleRatingBar;
import com.google.android.material.tabs.TabLayout;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.ae;

public class RideRatingView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    r f1120a;

    /* renamed from: b  reason: collision with root package name */
    protected c f1121b;
    protected boolean c = false;
    @BindView(2131362843)
    EditText commentEditText;
    @BindView(2131362844)
    SnappButton commentSubmitBtn;
    RideRatingTabView d;
    @BindView(2131362862)
    ImageView driverImageView;
    @BindView(2131362863)
    AppCompatTextView driverInfoTextView;
    RideRatingTabView e;
    private Unbinder f;
    @BindView(2131362846)
    EditText fakeCommentEditText;
    @BindView(2131362847)
    ViewGroup fakeCommentLayout;
    @BindView(2131362848)
    SnappButton fakeCommentSubmitButton;
    @BindView(2131362853)
    View feedbackTabDividerRed;
    @BindView(2131362849)
    AppCompatTextView rateDescriptionTextView;
    @BindView(2131362858)
    AppCompatTextView rideAddressTextView;
    @BindView(2131362859)
    AppCompatTextView rideTitleTextView;
    @BindView(2131362860)
    FrameLayout sceneContainerFl;
    @BindView(2131362861)
    ScaleRatingBar starBar;
    @BindView(2131362851)
    TabLayout tabLayout;
    @BindView(2131362425)
    ImageView toolbarCancelButton;
    @BindView(2131362426)
    AppCompatTextView toolbarTitleTextView;
    @BindView(2131362854)
    ViewPager viewPager;
    @BindView(2131362855)
    AppCompatTextView writeCommentBtn;

    public RideRatingView(Context context) {
        super(context);
    }

    public RideRatingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RideRatingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362425})
    @Optional
    public void onToolbarCancelButtonClicked() {
        c cVar = this.f1121b;
        if (cVar != null) {
            cVar.onToolbarCancelButtonClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362848})
    @Optional
    public void onFakeCommentSubmitButtonClicked() {
        c cVar = this.f1121b;
        if (cVar != null) {
            cVar.onFakeCommentSubmitClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362844})
    @Optional
    public void onCommentSubmitButtonClicked() {
        c cVar = this.f1121b;
        if (cVar != null) {
            cVar.onCommentSubmitClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362850})
    @Optional
    public void onSubmitClicked() {
        c cVar = this.f1121b;
        if (cVar != null) {
            cVar.onSubmitClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362855})
    @Optional
    public void onCommentClicked() {
        c cVar = this.f1121b;
        if (cVar != null) {
            cVar.onWantToWriteCommentClicked();
        }
    }

    public void setOnStarRateSelectedListener(BaseRatingBar.a aVar) {
        ScaleRatingBar scaleRatingBar = this.starBar;
        if (scaleRatingBar != null) {
            scaleRatingBar.setOnRatingChangeListener(aVar);
        }
    }

    public void setDriverImage(String str) {
        if (!(this.driverImageView == null || str == null || TextUtils.isEmpty(str))) {
            Picasso.get().load(str).placeholder((int) R.drawable.ph_profile_picture).transform((ae) new l()).into(this.driverImageView);
        }
    }

    public void setRideTitleText(String str) {
        AppCompatTextView appCompatTextView = this.rideTitleTextView;
        if (appCompatTextView != null) {
            appCompatTextView.setText(str);
        }
    }

    public void setAddressText(String str) {
        AppCompatTextView appCompatTextView = this.rideAddressTextView;
        if (appCompatTextView != null) {
            appCompatTextView.setText(str);
        }
    }

    public void setDriverInfoText(String str) {
        AppCompatTextView appCompatTextView = this.driverInfoTextView;
        if (appCompatTextView != null) {
            appCompatTextView.setText(str);
        }
    }

    public void setStarRate(int i) {
        ScaleRatingBar scaleRatingBar = this.starBar;
        if (scaleRatingBar != null) {
            scaleRatingBar.setRating((float) i);
        }
    }

    public void setFakeCommentTextChangeListener(TextWatcher textWatcher) {
        EditText editText = this.fakeCommentEditText;
        if (editText != null) {
            editText.addTextChangedListener(textWatcher);
        }
    }

    public void setCommentTextChangeListener(TextWatcher textWatcher) {
        EditText editText = this.commentEditText;
        if (editText != null) {
            editText.addTextChangedListener(textWatcher);
        }
    }

    public void setPagerAdapterForReasonPages(k kVar) {
        ViewPager viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            viewPager2.setAdapter(kVar);
        }
    }

    public int getCurrentReasonPage() {
        ViewPager viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            return viewPager2.getCurrentItem();
        }
        return 0;
    }

    public void setCurrentReasonPage(int i) {
        ViewPager viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(i);
        }
    }

    public void setRateDescriptionText(String str) {
        AppCompatTextView appCompatTextView = this.rateDescriptionTextView;
        if (appCompatTextView != null) {
            appCompatTextView.setText(str);
        }
    }

    public void setRateDescriptionTextColor(int i) {
        AppCompatTextView appCompatTextView = this.rateDescriptionTextView;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(getContext().getResources().getColor(i));
        }
    }

    public void showStarScene() {
        a(R.layout.view_ride_rating_star);
    }

    public void showFeedBackScene() {
        a(R.layout.view_ride_rating_feedback);
        TabLayout tabLayout2 = this.tabLayout;
        if (tabLayout2 != null) {
            tabLayout2.setupWithViewPager(this.viewPager);
        }
    }

    public void hideTabLayout() {
        TabLayout tabLayout2 = this.tabLayout;
        if (tabLayout2 != null) {
            tabLayout2.setVisibility(8);
        }
    }

    public void showCommentScene() {
        a(R.layout.view_ride_rating_comment);
    }

    public void showFakeCommentView() {
        ViewGroup viewGroup = this.fakeCommentLayout;
        if (viewGroup != null) {
            viewGroup.setVisibility(0);
        }
    }

    private void a(int i) {
        FrameLayout frameLayout = this.sceneContainerFl;
        if (frameLayout != null) {
            Scene sceneForLayout = Scene.getSceneForLayout(frameLayout, i, getContext());
            if (Build.VERSION.SDK_INT < 21) {
                this.sceneContainerFl.removeAllViews();
            }
            TransitionManager.go(sceneForLayout, TransitionInflater.from(getContext()).inflateTransition(R.transition.move));
            Unbinder unbinder = this.f;
            if (unbinder != null) {
                unbinder.unbind();
            }
            this.f = ButterKnife.bind((Object) this, (View) this);
            a();
        }
    }

    private void a() {
        ScaleRatingBar scaleRatingBar = this.starBar;
        if (scaleRatingBar != null) {
            scaleRatingBar.setLayoutDirection(0);
        }
        TabLayout tabLayout2 = this.tabLayout;
        if (tabLayout2 != null) {
            tabLayout2.setLayoutDirection(0);
        }
    }

    public void addNegativeTabView() {
        TabLayout tabLayout2 = this.tabLayout;
        if (tabLayout2 != null) {
            tabLayout2.getTabAt(0).setCustomView((View) this.d);
        }
    }

    public void addPositiveTabView() {
        TabLayout tabLayout2 = this.tabLayout;
        if (tabLayout2 != null) {
            TabLayout.f tabAt = tabLayout2.getTabAt(1);
            if (tabAt != null) {
                tabAt.setCustomView((View) this.e);
            }
        }
    }

    public void setReasonPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        ViewPager viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            viewPager2.addOnPageChangeListener(onPageChangeListener);
        }
    }

    public void setPositiveTabTextColor(int i) {
        RideRatingTabView rideRatingTabView = this.e;
        if (rideRatingTabView != null) {
            rideRatingTabView.setTextColor(i);
        }
    }

    public void setNegativeTabTextColor(int i) {
        RideRatingTabView rideRatingTabView = this.d;
        if (rideRatingTabView != null) {
            rideRatingTabView.setTextColor(i);
        }
    }

    public void setTabIndicatorColor(int i) {
        if (this.tabLayout != null && getContext() != null && getContext().getResources() != null) {
            this.tabLayout.setSelectedTabIndicatorColor(getContext().getResources().getColor(i));
        }
    }

    public void setNegativeTabBadge(int i) {
        RideRatingTabView rideRatingTabView = this.d;
        if (rideRatingTabView != null) {
            rideRatingTabView.setBadge(i);
        }
    }

    public void setPositiveTabBadge(int i) {
        RideRatingTabView rideRatingTabView = this.e;
        if (rideRatingTabView != null) {
            rideRatingTabView.setBadge(i);
        }
    }

    public void showNegativeTabBadge() {
        RideRatingTabView rideRatingTabView = this.d;
        if (rideRatingTabView != null) {
            rideRatingTabView.showBadge();
        }
    }

    public void hideNegativeTabBadge() {
        RideRatingTabView rideRatingTabView = this.d;
        if (rideRatingTabView != null) {
            rideRatingTabView.hideBadge();
        }
    }

    public void showPositiveTabBadge() {
        RideRatingTabView rideRatingTabView = this.e;
        if (rideRatingTabView != null) {
            rideRatingTabView.showBadge();
        }
    }

    public void hidePositiveTabBadge() {
        RideRatingTabView rideRatingTabView = this.e;
        if (rideRatingTabView != null) {
            rideRatingTabView.hideBadge();
        }
    }

    public void setNegativeTabText(int i) {
        RideRatingTabView rideRatingTabView = this.d;
        if (rideRatingTabView != null) {
            rideRatingTabView.setText(i);
        }
    }

    public void showRedDivider() {
        View view = this.feedbackTabDividerRed;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public void hideRedDivider() {
        View view = this.feedbackTabDividerRed;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void showToastMessage(int i, int i2) {
        if (getContext() != null) {
            b.makeText(getContext(), getContext().getString(i)).textColor(getContext().getResources().getColor(i2)).show();
        }
    }

    public void setToolbarTitle(int i) {
        AppCompatTextView appCompatTextView = this.toolbarTitleTextView;
        if (appCompatTextView != null) {
            appCompatTextView.setText(i);
        }
    }

    public void setCommentText(String str) {
        EditText editText = this.commentEditText;
        if (editText != null) {
            editText.setText(str);
        }
    }

    public void setCommentSubmitButtonText(int i) {
        SnappButton snappButton = this.commentSubmitBtn;
        if (snappButton != null) {
            snappButton.setText(getContext().getString(i));
        }
    }

    public void setWriteCommetButtonText(int i) {
        AppCompatTextView appCompatTextView = this.writeCommentBtn;
        if (appCompatTextView != null) {
            appCompatTextView.setText(getContext().getString(i));
        }
    }

    public void setCancelBtnIcon(int i) {
        ImageView imageView = this.toolbarCancelButton;
        if (imageView != null) {
            imageView.setImageResource(i);
        }
    }

    public void showLoading() {
        this.f1120a.showLoadingDialog();
    }

    public void hideLoading() {
        this.f1120a.hideLoadingDialog();
    }

    public void showNoInternetDialog() {
        this.f1120a.showNoInternetDialog();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f = ButterKnife.bind((Object) this, (View) this);
        this.d = new RideRatingTabView(getContext());
        this.e = new RideRatingTabView(getContext());
        this.d.setText(R.string.points_of_weakness);
        this.e.setText(R.string.points_of_strength);
        this.d.setBadgeBackground(R.drawable.bg_ride_rating_badge_negative);
        this.e.setBadgeBackground(R.drawable.bg_ride_rating_badge_positive);
        this.f1120a = new r(getContext());
    }

    public void setPresenter(c cVar) {
        this.f1121b = cVar;
    }
}
