package cab.snapp.passenger.units.main;

import android.content.Context;
import android.content.DialogInterface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.main.a.e;
import cab.snapp.passenger.units.top_up_payment.TopUpBottomSheetDialogFragment;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappdialog.dialogViews.a.h;
import cab.snapp.snappuikit.SnappFloatingActionButton;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.ArrayList;

public class MainView extends DrawerLayout implements BaseView<d> {

    /* renamed from: a  reason: collision with root package name */
    BottomSheetBehavior f878a;

    /* renamed from: b  reason: collision with root package name */
    TopUpBottomSheetDialogFragment f879b;
    private d c;
    @BindView(2131362663)
    View contentGradientView;
    private b d;
    private b e;
    private b f;
    @BindView(2131362972)
    LinearLayout firstServiceTypeItem;
    @BindView(2131362973)
    ImageView firstServiceTypeItemImageView;
    @BindView(2131362974)
    AppCompatTextView firstServiceTypeItemTextView;
    @BindView(2131362668)
    View footerContainerView;
    private r g;
    @BindView(2131362680)
    View headerContainerView;
    @BindView(2131362682)
    View headerGradientView;
    @BindView(2131362660)
    ImageView locationSelectorDotIv;
    @BindView(2131362710)
    ImageButton locationSelectorImageButton;
    @BindView(2131362662)
    ImageView locationSelectorShadowIv;
    @BindView(2131362713)
    AppCompatTextView mapBoxCopyrightTv;
    @BindView(2131362711)
    RelativeLayout mapLayout;
    @BindView(2131362715)
    SnappFloatingActionButton myLocationFab;
    @BindView(2131362976)
    LinearLayout secondServiceTypeItem;
    @BindView(2131362977)
    ImageView secondServiceTypeItemImageView;
    @BindView(2131362978)
    AppCompatTextView secondServiceTypeItemTextView;
    @BindView(2131362716)
    LinearLayout snappJekBottomSheet;
    @BindView(2131362717)
    View snappJekFrame;
    @BindView(2131362718)
    RecyclerView snappJekRecyclerView;
    @BindView(2131362971)
    CardView snappJekServiceTypesCardView;
    @BindView(2131362719)
    RelativeLayout snappJekServiceTypesControl;
    @BindView(2131362979)
    LinearLayout thirdServiceTypeItem;
    @BindView(2131362980)
    ImageView thirdServiceTypeItemImageView;
    @BindView(2131362981)
    AppCompatTextView thirdServiceTypeItemTextView;
    @BindView(2131362720)
    AppCompatTextView updateBannerDescriptionTb;
    @BindView(2131362721)
    RelativeLayout updateBannerLayout;
    @BindView(2131362722)
    AppCompatButton updateBannerNewFeaturesBtn;
    @BindView(2131362723)
    AppCompatTextView updateBannerTitleTb;

    /* access modifiers changed from: package-private */
    @OnClick({2131362972})
    public void onRideItemOneClicked() {
        d dVar = this.c;
        if (dVar != null) {
            dVar.a(0);
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362976})
    public void onRideItemTwoClicked() {
        d dVar = this.c;
        if (dVar != null) {
            dVar.a(1);
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362979})
    public void onRideItemThreeClicked() {
        d dVar = this.c;
        if (dVar != null) {
            dVar.a(2);
        }
    }

    public MainView(Context context) {
        super(context);
    }

    public MainView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MainView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362710})
    public void onLocationSelectorClick() {
        this.c.onLocationSelectorClick();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362715})
    public void onMyLocationClicked() {
        d dVar = this.c;
        if (dVar != null) {
            dVar.onMyLocationClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362722})
    public void onNewFeaturesBtnClicked() {
        d dVar = this.c;
        if (dVar != null) {
            dVar.onUpdateBannerNewFeaturesBtnClicked();
        }
    }

    /* access modifiers changed from: protected */
    public ImageButton getLocationSelectorImageButton() {
        return this.locationSelectorImageButton;
    }

    public View getFooterContainerView() {
        return this.footerContainerView;
    }

    public View getHeaderContainerView() {
        return this.headerContainerView;
    }

    public boolean isFirstItemInJekCompletelyVisible() {
        return ((LinearLayoutManager) this.snappJekRecyclerView.getLayoutManager()).findFirstCompletelyVisibleItemPosition() == 0;
    }

    public void showLocationSelectorShadow() {
        this.locationSelectorShadowIv.setVisibility(0);
    }

    public void hideLocationSelectorShadow() {
        this.locationSelectorShadowIv.setVisibility(8);
    }

    public void showLocationSelectorDot() {
        this.locationSelectorDotIv.setVisibility(0);
    }

    public void hideLocationSelectorDot() {
        this.locationSelectorDotIv.setVisibility(8);
    }

    public void closeDrawer() {
        if (isDrawerOpen((int) GravityCompat.START)) {
            closeDrawer((int) GravityCompat.START);
        }
    }

    public void toggleDrawer() {
        if (isDrawerOpen((int) GravityCompat.START)) {
            closeDrawer((int) GravityCompat.START);
        } else {
            openDrawer((int) GravityCompat.START);
        }
    }

    public void lockDrawer() {
        setDrawerLockMode(1);
    }

    public void unlockDrawer() {
        setDrawerLockMode(0);
    }

    public boolean isDrawerLocked() {
        return getDrawerLockMode((View) this) == 1;
    }

    public void showMyLocation() {
        this.myLocationFab.setVisibility(0);
    }

    public void hideMyLocation() {
        this.myLocationFab.setVisibility(8);
    }

    public void showMapBoxCopyright() {
        this.mapBoxCopyrightTv.setVisibility(0);
    }

    public void hideMapBoxCopyright() {
        this.mapBoxCopyrightTv.setVisibility(8);
    }

    public void makePinSmall() {
        if (this.locationSelectorImageButton.getVisibility() == 0) {
            this.locationSelectorImageButton.setPivotY(0.0f);
            ImageButton imageButton = this.locationSelectorImageButton;
            imageButton.setPivotX(((float) imageButton.getMeasuredWidth()) / 2.0f);
            this.locationSelectorImageButton.animate().translationY(-(((float) this.locationSelectorImageButton.getMeasuredHeight()) / 6.0f)).scaleX(0.85f).scaleY(0.85f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
        if (this.locationSelectorShadowIv.getVisibility() == 0) {
            ImageView imageView = this.locationSelectorShadowIv;
            imageView.setPivotY(((float) imageView.getMeasuredHeight()) / 2.0f);
            ImageView imageView2 = this.locationSelectorShadowIv;
            imageView2.setPivotX(((float) imageView2.getMeasuredWidth()) / 2.0f);
            this.locationSelectorShadowIv.animate().scaleX(2.0f).scaleY(2.0f).alpha(0.45f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
    }

    public void makePinNormal() {
        if (this.locationSelectorImageButton.getVisibility() == 0) {
            this.locationSelectorImageButton.setPivotY(0.0f);
            ImageButton imageButton = this.locationSelectorImageButton;
            imageButton.setPivotX(((float) imageButton.getMeasuredWidth()) / 2.0f);
            this.locationSelectorImageButton.animate().translationY(0.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
        if (this.locationSelectorShadowIv.getVisibility() == 0) {
            ImageView imageView = this.locationSelectorShadowIv;
            imageView.setPivotY(((float) imageView.getMeasuredHeight()) / 2.0f);
            ImageView imageView2 = this.locationSelectorShadowIv;
            imageView2.setPivotX(((float) imageView2.getMeasuredWidth()) / 2.0f);
            this.locationSelectorShadowIv.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
    }

    public void hideUpdateBanner() {
        this.updateBannerLayout.setVisibility(8);
    }

    public void showUpdateBannerAtTop() {
        if (this.updateBannerLayout.getLayoutParams() != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.updateBannerLayout.getLayoutParams();
            layoutParams.removeRule(2);
            layoutParams.addRule(3, this.headerContainerView.getId());
        }
        this.updateBannerLayout.setVisibility(0);
    }

    public void showUpdateBannerAtBottom() {
        if (this.updateBannerLayout.getLayoutParams() != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.updateBannerLayout.getLayoutParams();
            layoutParams.removeRule(3);
            layoutParams.addRule(2, this.footerContainerView.getId());
        }
        this.updateBannerLayout.setVisibility(0);
    }

    public void showUpdateDialog(int i, String str, String str2, int i2, View.OnClickListener onClickListener, int i3, View.OnClickListener onClickListener2) {
        if (getContext() != null) {
            this.d = new b.a(getContext()).setIcon(i).setDialogTitle(str).setDialogViewType(new g.a().setMessage(str2).build()).setPositiveButton(i2, onClickListener).setNegativeButton(i3, onClickListener2).showOnBuild(true).build();
        }
    }

    public void cancelUpdateDialog() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.dismiss();
            this.d.cancel();
        }
    }

    public void setLocationSelectorContentDescription(int i) {
        if (getContext() != null) {
            this.locationSelectorImageButton.setContentDescription(getContext().getString(i));
        }
    }

    public void showWhatsNewDialog(int i, String str, ArrayList<String> arrayList, int i2, View.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
        if (getContext() != null) {
            cancelWhatsNewDialog();
            this.e = new b.a(getContext()).setIcon(i).setTheme(0).setDialogViewType(new h.a().setMessage(str).setMessageList(arrayList).build()).setPositiveButton(i2, onClickListener).showOnBuild(true).build();
            this.e.setOnDismissListener(onDismissListener);
        }
    }

    public void cancelWhatsNewDialog() {
        b bVar = this.e;
        if (bVar != null) {
            bVar.dismiss();
            this.e.cancel();
        }
    }

    public void showNoLocationDialog(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        if (getContext() != null) {
            r rVar = this.g;
            if (rVar != null) {
                rVar.showNoLocationDialog(onClickListener, onClickListener2);
            }
        }
    }

    public void cancelNoLocationDialog() {
        if (getContext() != null) {
            r rVar = this.g;
            if (rVar != null) {
                rVar.dismissNoLocationDialog();
            }
        }
    }

    public void showNoPermissionDialog(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        if (getContext() != null) {
            r rVar = this.g;
            if (rVar != null) {
                rVar.showNoPermissionDialog(onClickListener, onClickListener2);
            }
        }
    }

    public void showInaccurateOriginLocationDialog() {
        if (getContext() != null) {
            this.f = new b.a(getContext()).setIcon(R.drawable.ic_location_dialog).setDialogTitle((int) R.string.attention).setTheme(0).setDialogViewType(new g.a().setMessage(getResources().getString(R.string.location_accuracy_dialog_message)).build()).setPositiveButton((int) R.string.ok, (View.OnClickListener) new View.OnClickListener() {
                public final void onClick(View view) {
                    MainView.this.a(view);
                }
            }).setCancelable(false).showOnBuild(true).build();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        cancelInaccurateOriginLocationDialog();
    }

    public void cancelInaccurateOriginLocationDialog() {
        b bVar = this.f;
        if (bVar != null) {
            bVar.dismiss();
            this.f.cancel();
        }
    }

    public float getWindowHeightWithoutStatusBarAndToolbar() {
        return (float) getMeasuredHeight();
    }

    public int getWindowBottom() {
        return getBottom();
    }

    public float getHeaderHeight() {
        if (getContext() == null || getContext().getResources() == null) {
            return 0.0f;
        }
        return getContext().getResources().getDimension(R.dimen.snapp_jek_service_types_holder_height);
    }

    public float getHeaderStateChangeHeight() {
        if (getContext() == null || getContext().getResources() == null) {
            return 0.0f;
        }
        return getContext().getResources().getDimension(R.dimen.snapp_jek_control_change_state_height);
    }

    public float getAppbarHeight() {
        if (getContext() == null || getContext().getResources() == null) {
            return 0.0f;
        }
        return getContext().getResources().getDimension(R.dimen.height_toolbar);
    }

    public void showGradient() {
        this.headerGradientView.setVisibility(0);
        this.contentGradientView.setVisibility(0);
    }

    public void hideGradient() {
        this.headerGradientView.setVisibility(8);
        this.contentGradientView.setVisibility(8);
    }

    public void displaySnappServices(e eVar) {
        this.snappJekRecyclerView.setAdapter(eVar);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.g = new r(getContext());
        this.f879b = TopUpBottomSheetDialogFragment.newInstance(CreditRequest.PLACE.JEK_TOPUP);
        this.f878a = BottomSheetBehavior.from(this.snappJekBottomSheet);
    }

    public void setPresenter(d dVar) {
        this.c = dVar;
    }

    public void openBottomSheet() {
        TopUpBottomSheetDialogFragment topUpBottomSheetDialogFragment = this.f879b;
        if (topUpBottomSheetDialogFragment != null && !topUpBottomSheetDialogFragment.isAdded()) {
            this.f879b.show(((FragmentActivity) getContext()).getSupportFragmentManager(), "top_up_bottom_sheet");
        }
    }

    public void closeBottomSheet() {
        TopUpBottomSheetDialogFragment topUpBottomSheetDialogFragment = this.f879b;
        if (topUpBottomSheetDialogFragment != null) {
            topUpBottomSheetDialogFragment.dismiss();
        }
    }

    public boolean isBottomSheetOpened() {
        TopUpBottomSheetDialogFragment topUpBottomSheetDialogFragment = this.f879b;
        if (topUpBottomSheetDialogFragment != null) {
            return topUpBottomSheetDialogFragment.isBottomSheetOpened();
        }
        return false;
    }
}
