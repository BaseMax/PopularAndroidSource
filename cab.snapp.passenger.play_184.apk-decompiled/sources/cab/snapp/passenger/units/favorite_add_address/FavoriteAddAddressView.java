package cab.snapp.passenger.units.favorite_add_address;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.d;
import cab.snapp.snappuikit.SnappFloatingActionButton;
import cab.snapp.snappuikit.c;

public class FavoriteAddAddressView extends LinearLayout implements BaseView<d> {

    /* renamed from: a  reason: collision with root package name */
    protected d f701a;

    /* renamed from: b  reason: collision with root package name */
    private r f702b;
    private c c;
    private b d;
    private boolean e;
    @BindView(2131362619)
    ImageView pinMarkerDotIv;
    @BindView(2131362621)
    ImageView pinMarkerShadowIv;
    @BindView(2131362628)
    AppCompatTextView viewFavoriteAddAddressMapBoxCopyrightTv;
    @BindView(2131362623)
    RelativeLayout viewFavoriteAddAddressMapParent;
    @BindView(2131362629)
    SnappFloatingActionButton viewFavoriteAddAddressMyLocationFab;
    @BindView(2131362624)
    AppCompatTextView viewFavoriteAddAddressTv;
    @BindView(2131362630)
    AppCompatImageButton viewFavoriteAddressPinMarker;

    public FavoriteAddAddressView(Context context) {
        super(context);
    }

    public FavoriteAddAddressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FavoriteAddAddressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362630})
    public void onPinClick() {
        d dVar = this.f701a;
        if (dVar != null) {
            dVar.onPinClicked();
        }
    }

    @OnClick({2131362629})
    public void onMyLocationClick() {
        d dVar = this.f701a;
        if (dVar != null) {
            dVar.onMyLocationClicked();
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.f702b = new r(getContext());
        this.c = new c(this);
    }

    public void setPresenter(d dVar) {
        this.f701a = dVar;
    }

    public void makePinNormal() {
        if (this.viewFavoriteAddressPinMarker.getVisibility() == 0) {
            this.viewFavoriteAddressPinMarker.setPivotY(0.0f);
            AppCompatImageButton appCompatImageButton = this.viewFavoriteAddressPinMarker;
            appCompatImageButton.setPivotX(((float) appCompatImageButton.getMeasuredWidth()) / 2.0f);
            this.viewFavoriteAddressPinMarker.animate().translationY(0.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
        if (this.pinMarkerShadowIv.getVisibility() == 0) {
            ImageView imageView = this.pinMarkerShadowIv;
            imageView.setPivotY(((float) imageView.getMeasuredHeight()) / 2.0f);
            ImageView imageView2 = this.pinMarkerShadowIv;
            imageView2.setPivotX(((float) imageView2.getMeasuredWidth()) / 2.0f);
            this.pinMarkerShadowIv.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
    }

    public void makePinSmall() {
        if (this.viewFavoriteAddressPinMarker.getVisibility() == 0) {
            this.viewFavoriteAddressPinMarker.setPivotY(0.0f);
            AppCompatImageButton appCompatImageButton = this.viewFavoriteAddressPinMarker;
            appCompatImageButton.setPivotX(((float) appCompatImageButton.getMeasuredWidth()) / 2.0f);
            this.viewFavoriteAddressPinMarker.animate().translationY(-(((float) this.viewFavoriteAddressPinMarker.getMeasuredHeight()) / 6.0f)).scaleX(0.85f).scaleY(0.85f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
        if (this.pinMarkerShadowIv.getVisibility() == 0) {
            ImageView imageView = this.pinMarkerShadowIv;
            imageView.setPivotY(((float) imageView.getMeasuredHeight()) / 2.0f);
            ImageView imageView2 = this.pinMarkerShadowIv;
            imageView2.setPivotX(((float) imageView2.getMeasuredWidth()) / 2.0f);
            this.pinMarkerShadowIv.animate().scaleX(2.0f).scaleY(2.0f).alpha(0.45f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
    }

    public void showAddFavoriteDialog(int i, int i2, int i3, int i4, TextWatcher textWatcher, int i5, int i6, TextWatcher textWatcher2, int i7, CompoundButton.OnCheckedChangeListener onCheckedChangeListener, int i8, View.OnClickListener onClickListener) {
        d.a secondEtTextWatcher = new d.a().setFirstEditTextTitle(getContext().getString(i3)).setFirstEditTextHint(getContext().getString(i4)).setFirstEtTextWatcher(textWatcher).setSecondEditTextTitle(getContext().getString(i5)).setSecondEditTextHint(getContext().getString(i6)).setSecondEtTextWatcher(textWatcher2);
        secondEtTextWatcher.setChekboxText(getContext().getString(i7)).setCheckboxIsChecked(true).setCheckboxCheckedChangeListener(onCheckedChangeListener);
        this.d = new b.a(getContext()).setIcon(i).setDialogTitle(i2).setDialogViewType(secondEtTextWatcher.build()).setPositiveButton(i8, onClickListener).showOnBuild(true).build();
        this.e = true;
    }

    public void showToast(int i) {
        if (getContext() != null) {
            showToast(getContext().getString(i), R.color.cherry);
        }
    }

    public void showToast(String str, int i) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).textColor(getContext().getResources().getColor(i)).show();
        }
    }

    public void showLoadingDialog() {
        r rVar = this.f702b;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public void cancelLoadingDialog() {
        r rVar = this.f702b;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void showLocationAddedToast() {
        if (getContext() != null) {
            Toast.makeText(getContext(), R.string.saved_successfully, 0).show();
        }
    }

    public void showMapBoxCopyright() {
        this.viewFavoriteAddAddressMapBoxCopyrightTv.setVisibility(0);
    }

    public void hideMapBoxCopyright() {
        this.viewFavoriteAddAddressMapBoxCopyrightTv.setVisibility(8);
    }

    public void setToolbarTitle(int i) {
        this.c.setTitle(getContext().getString(i));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f701a.onBackPressed();
    }

    public void setToolbarBackButton() {
        this.c.setBackButton(R.drawable.ic_arrow_back_dark_grey_blue_24dp, new View.OnClickListener() {
            public final void onClick(View view) {
                FavoriteAddAddressView.this.a(view);
            }
        }, R.string.back_button_desc);
    }

    public void setToolbarMenu() {
        this.c.setMenu(R.menu.menu_search, new Toolbar.OnMenuItemClickListener() {
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return FavoriteAddAddressView.this.a(menuItem);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean a(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.action_search) {
            return false;
        }
        this.f701a.onSearchClicked();
        return true;
    }

    public void setFormattedAddress(String str) {
        if (str != null && !str.isEmpty()) {
            this.viewFavoriteAddAddressTv.setText(str);
        }
    }

    public void showLocationNotAvailableDialog(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        if (getContext() != null) {
            r rVar = this.f702b;
            if (rVar != null) {
                rVar.showNoLocationDialog(onClickListener, onClickListener2);
            }
        }
    }

    public void cancelNoLocationDialog() {
        if (getContext() != null) {
            r rVar = this.f702b;
            if (rVar != null) {
                rVar.dismissNoLocationDialog();
            }
        }
    }

    public void showNoPermissionDialog(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        if (getContext() != null) {
            r rVar = this.f702b;
            if (rVar != null) {
                rVar.showNoPermissionDialog(onClickListener, onClickListener2);
            }
        }
    }

    public void cancelAddFavoriteDialog() {
        b bVar = this.d;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.d.dismiss();
            }
            this.d.cancel();
            this.e = false;
        }
    }

    public void dismissAddFavoriteDialog() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    public void showAddFavoriteDialogIfNeeded() {
        if (this.e && !this.d.isShowing()) {
            this.d.show();
        }
    }
}
