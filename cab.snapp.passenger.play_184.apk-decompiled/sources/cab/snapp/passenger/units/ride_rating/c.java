package cab.snapp.passenger.units.ride_rating;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.f;
import cab.snapp.passenger.a.j;
import cab.snapp.passenger.a.k;
import cab.snapp.passenger.data.models.RideRatingModel;
import cab.snapp.passenger.data.models.ride_rating.RideRatingReason;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;
import cab.snapp.snappuikit.ratingbar.BaseRatingBar;
import java.util.ArrayList;
import java.util.List;

public final class c extends BasePresenter<RideRatingView, a> {

    /* renamed from: a  reason: collision with root package name */
    protected final int f1136a = 3;

    /* renamed from: b  reason: collision with root package name */
    protected final int f1137b = 33;
    protected final int c = 333;
    protected int d = 0;
    protected RideRatingModel e;
    protected k f;
    protected TextWatcher g = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (c.this.getInteractor() != null) {
                ((a) c.this.getInteractor()).updateComment(charSequence.toString());
            }
        }
    };
    protected k.a h = new k.a() {
        public final void onReasonClicked(RideRatingReason rideRatingReason, boolean z, j jVar) {
            c.this.a(rideRatingReason, z, jVar);
        }
    };
    protected ViewPager.OnPageChangeListener i = new ViewPager.OnPageChangeListener() {
        public final void onPageScrollStateChanged(int i) {
        }

        public final void onPageScrolled(int i, float f, int i2) {
        }

        public final void onPageSelected(int i) {
            c.this.a(i);
        }
    };
    private boolean j = false;

    /* access modifiers changed from: private */
    public /* synthetic */ void a(RideRatingReason rideRatingReason, boolean z, j jVar) {
        if (getInteractor() != null) {
            ((a) getInteractor()).toggleReason(rideRatingReason, Boolean.valueOf(z));
            jVar.notifyDataSetChanged();
            d();
            getInteractor();
            a.b();
        }
    }

    public final void onInitialize(RideRatingModel rideRatingModel) {
        this.e = rideRatingModel;
        if (!(rideRatingModel == null || this.view == null)) {
            ((RideRatingView) this.view).showStarScene();
            this.d = 3;
            if (!(this.e == null || this.view == null || e() == null)) {
                ((RideRatingView) this.view).setToolbarTitle(R.string.ride_feedback);
                ((RideRatingView) this.view).setOnStarRateSelectedListener(new BaseRatingBar.a() {
                    public final void onRatingChange(BaseRatingBar baseRatingBar, float f) {
                        c.this.a(baseRatingBar, f);
                    }
                });
                b();
                ((RideRatingView) this.view).setDriverInfoText(String.format(((RideRatingView) this.view).getContext().getString(R.string.with_text), new Object[]{this.e.getDriverName(), this.e.getDriverVehicle()}));
                if (!this.e.getDriverImageUrl().isEmpty()) {
                    ((RideRatingView) this.view).setDriverImage(this.e.getDriverImageUrl());
                }
            }
        }
        setStatusBarColor();
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((RideRatingView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((RideRatingView) getView()).getContext(), R.color.white);
        }
    }

    /* access modifiers changed from: protected */
    public final void a(int i2) {
        if (this.e != null && this.view != null) {
            if (i2 == 0) {
                ((RideRatingView) this.view).setNegativeTabTextColor(R.color.colorPrimary);
                ((RideRatingView) this.view).setPositiveTabTextColor(R.color.brown_grey);
                ((RideRatingView) this.view).setTabIndicatorColor(R.color.cherry);
            } else {
                ((RideRatingView) this.view).setNegativeTabTextColor(R.color.brown_grey);
                ((RideRatingView) this.view).setPositiveTabTextColor(R.color.colorPrimary);
                ((RideRatingView) this.view).setTabIndicatorColor(R.color.colorAccent);
            }
            if (this.e.getStarRate() == 1) {
                ((RideRatingView) this.view).setTabIndicatorColor(17170445);
            }
        }
    }

    private void a() {
        if (this.view != null) {
            ((RideRatingView) this.view).showFeedBackScene();
            this.d = 33;
            if (!(this.e == null || this.view == null)) {
                ((RideRatingView) this.view).setCancelBtnIcon(R.drawable.ic_cancel_ride_24dp);
                b();
                ((RideRatingView) this.view).setToolbarTitle(R.string.ride_feedback);
                if (this.e.getComment() == null || this.e.getComment().trim().isEmpty()) {
                    ((RideRatingView) this.view).setWriteCommetButtonText(R.string.submit_comment);
                } else {
                    ((RideRatingView) this.view).setWriteCommetButtonText(R.string.edit_comment);
                }
                if (!this.e.hasReasons()) {
                    ((RideRatingView) this.view).showFakeCommentView();
                    ((RideRatingView) this.view).setFakeCommentTextChangeListener(this.g);
                    ((RideRatingView) this.view).setStarRate(this.e.getStarRate());
                    ((RideRatingView) this.view).hideTabLayout();
                    return;
                }
                this.f = new k(this.e, new ArrayList(), this.h);
                ((RideRatingView) this.view).setPagerAdapterForReasonPages(this.f);
                ((RideRatingView) this.view).setReasonPageChangeListener(this.i);
                ((RideRatingView) this.view).setStarRate(this.e.getStarRate());
                ((RideRatingView) this.view).setOnStarRateSelectedListener(new BaseRatingBar.a() {
                    public final void onRatingChange(BaseRatingBar baseRatingBar, float f) {
                        c.this.a(baseRatingBar, f);
                    }
                });
                c();
                if (this.e.getStarRate() == 5) {
                    ((RideRatingView) this.view).setCurrentReasonPage(1);
                }
            }
        }
    }

    private void b() {
        String rideTitle = this.e.getRideTitle();
        if (rideTitle.isEmpty()) {
            rideTitle = e().getString(R.string.recent_ride);
        }
        ((RideRatingView) this.view).setRideTitleText(rideTitle);
        ((RideRatingView) this.view).setAddressText(String.format(e().getString(R.string.to_destination), new Object[]{this.e.getRideDestination()}));
    }

    private void c() {
        if (this.e != null && this.view != null && e() != null) {
            int currentReasonPage = ((RideRatingView) this.view).getCurrentReasonPage();
            this.f.setItems(a(this.e.getStarRate() == 1));
            ((RideRatingView) this.view).setPagerAdapterForReasonPages(this.f);
            ((RideRatingView) this.view).setCurrentReasonPage(currentReasonPage);
            if (this.e.getStarRate() <= 0) {
                this.e.setStarRate(1);
            }
            ((RideRatingView) this.view).setRateDescriptionText(e().getResources().getStringArray(R.array.ride_rating_star)[this.e.getStarRate() - 1]);
            ((RideRatingView) this.view).setRateDescriptionTextColor(R.color.bluish_grey);
            d();
        }
    }

    private void d() {
        if (this.e != null && this.view != null) {
            ((RideRatingView) this.view).addNegativeTabView();
            ((RideRatingView) this.view).showNegativeTabBadge();
            int numberOfSelectedReasons = this.e.getNumberOfSelectedReasons(true);
            ((RideRatingView) this.view).setNegativeTabBadge(numberOfSelectedReasons);
            if (numberOfSelectedReasons == 0) {
                ((RideRatingView) this.view).hideNegativeTabBadge();
            }
            if (this.e.getStarRate() == 1) {
                ((RideRatingView) this.view).setNegativeTabText(R.string.what_was_the_problem);
                ((RideRatingView) this.view).showRedDivider();
            } else {
                ((RideRatingView) this.view).setNegativeTabText(R.string.points_of_weakness);
                ((RideRatingView) this.view).hideRedDivider();
            }
            if (this.e.getStarRate() != 1) {
                ((RideRatingView) this.view).addPositiveTabView();
                ((RideRatingView) this.view).showPositiveTabBadge();
                int numberOfSelectedReasons2 = this.e.getNumberOfSelectedReasons(false);
                ((RideRatingView) this.view).setPositiveTabBadge(numberOfSelectedReasons2);
                if (numberOfSelectedReasons2 == 0) {
                    ((RideRatingView) this.view).hidePositiveTabBadge();
                }
            }
            a(((RideRatingView) this.view).getCurrentReasonPage());
        }
    }

    private static List<k.b> a(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new k.b(true));
        if (!z) {
            arrayList.add(new k.b(false));
        }
        return arrayList;
    }

    private Context e() {
        if (this.view == null || ((RideRatingView) this.view).getContext() == null) {
            return null;
        }
        return ((RideRatingView) this.view).getContext();
    }

    private void f() {
        if (!(this.view == null || e() == null)) {
            cab.snapp.c.c.tryHideKeyboard(e(), (View) this.view);
        }
        if (getInteractor() != null) {
            this.j = false;
            ((a) getInteractor()).requestRate(this.j);
        }
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((RideRatingView) getView()).getContext() != null) {
            ((RideRatingView) getView()).hideLoading();
            ((RideRatingView) getView()).showNoInternetDialog();
        }
    }

    public final void onHasRatedBefore() {
        if (getView() != null) {
            ((RideRatingView) getView()).hideLoading();
            ((RideRatingView) getView()).showToastMessage(R.string.error_ride_rated_before, R.color.cherry);
        }
    }

    public final void onRateError() {
        if (getView() != null && e() != null) {
            ((RideRatingView) getView()).hideLoading();
            if (this.e.hasReasons() || (!f.isUserConnectedToNetwork(e()) && !this.j)) {
                ((RideRatingView) getView()).showToastMessage(R.string.error, R.color.cherry);
            }
        }
    }

    public final void onBeforeRate() {
        if (getView() != null) {
            ((RideRatingView) getView()).showLoading();
        }
    }

    public final void onRateSuccess() {
        if (getView() != null && !this.j) {
            ((RideRatingView) getView()).hideLoading();
            ((RideRatingView) getView()).showToastMessage(R.string.your_rate_was_submitted, R.color.colorPrimary);
        }
    }

    public final void onToolbarCancelButtonClicked() {
        int i2 = this.d;
        if (i2 == 333) {
            a();
            return;
        }
        if (i2 == 3) {
            if (!(getInteractor() == null || getView() == null)) {
                ((RideRatingView) getView()).showToastMessage(R.string.you_can_rate_from_ride_details, R.color.colorPrimary);
                ((a) getInteractor()).finish();
            }
        } else if (i2 == 33 && getInteractor() != null) {
            this.j = true;
            ((a) getInteractor()).requestRate(this.j);
        }
    }

    public final void onFakeCommentSubmitClicked() {
        f();
    }

    public final void onCommentSubmitClicked() {
        f();
    }

    public final void onSubmitClicked() {
        if (getInteractor() != null) {
            this.j = false;
            ((a) getInteractor()).requestRate(this.j);
        }
    }

    /* access modifiers changed from: protected */
    public final void a(BaseRatingBar baseRatingBar, float f2) {
        if (getInteractor() != null) {
            ((a) getInteractor()).updateStarRate((int) f2);
            int i2 = this.d;
            if (i2 == 3) {
                a();
                return;
            }
            if (i2 == 33) {
                c();
            }
        }
    }

    public final void onBackPressed() {
        onToolbarCancelButtonClicked();
    }

    public final void onWantToWriteCommentClicked() {
        if (this.view != null) {
            ((RideRatingView) this.view).showCommentScene();
            this.d = 333;
            if (!(this.e == null || this.view == null)) {
                if (this.e.getComment() == null || this.e.getComment().trim().isEmpty()) {
                    ((RideRatingView) this.view).setToolbarTitle(R.string.submit_comment);
                    ((RideRatingView) this.view).setCommentSubmitButtonText(R.string.submit_comment);
                } else {
                    ((RideRatingView) this.view).setCommentText(this.e.getComment());
                    ((RideRatingView) this.view).setToolbarTitle(R.string.edit_comment);
                    ((RideRatingView) this.view).setCommentSubmitButtonText(R.string.edit_comment);
                }
                ((RideRatingView) this.view).setCommentTextChangeListener(this.g);
                ((RideRatingView) this.view).setCancelBtnIcon(R.drawable.ic_chevron_right_24_dp);
            }
        }
        if (getInteractor() != null) {
            getInteractor();
            a.a();
        }
    }
}
