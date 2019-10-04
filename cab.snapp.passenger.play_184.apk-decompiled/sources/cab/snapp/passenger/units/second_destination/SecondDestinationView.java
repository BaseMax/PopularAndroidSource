package cab.snapp.passenger.units.second_destination;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
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
import cab.snapp.snappuikit.SnappFloatingActionButton;
import cab.snapp.snappuikit.b;
import cab.snapp.snappuikit.c;

public class SecondDestinationView extends RelativeLayout implements BaseView<d> {

    /* renamed from: a  reason: collision with root package name */
    protected d f1163a;

    /* renamed from: b  reason: collision with root package name */
    private r f1164b;
    @BindView(2131362907)
    SnappFloatingActionButton btnMyLocationFab;
    private c c;
    @BindView(2131362901)
    ImageView pinMarkerDotIv;
    @BindView(2131362903)
    ImageView pinMarkerShadowIv;
    @BindView(2131362909)
    AppCompatTextView tvDescriptionAddress;
    @BindView(2131362906)
    AppCompatTextView tvMapBoxCopyright;
    @BindView(2131362905)
    RelativeLayout vMapParent;
    @BindView(2131362908)
    AppCompatImageButton vPinMarker;

    public SecondDestinationView(Context context) {
        super(context);
    }

    public SecondDestinationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SecondDestinationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362908})
    public void onPinClick() {
        d dVar = this.f1163a;
        if (dVar != null) {
            dVar.onPinClicked();
        }
    }

    @OnClick({2131362907})
    public void onMyLocationClick() {
        d dVar = this.f1163a;
        if (dVar != null) {
            dVar.onMyLocationClicked();
        }
    }

    public void makePinNormal() {
        if (this.vPinMarker.getVisibility() == 0) {
            this.vPinMarker.setPivotY(0.0f);
            AppCompatImageButton appCompatImageButton = this.vPinMarker;
            appCompatImageButton.setPivotX(((float) appCompatImageButton.getMeasuredWidth()) / 2.0f);
            this.vPinMarker.animate().translationY(0.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
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
        if (this.vPinMarker.getVisibility() == 0) {
            this.vPinMarker.setPivotY(0.0f);
            AppCompatImageButton appCompatImageButton = this.vPinMarker;
            appCompatImageButton.setPivotX(((float) appCompatImageButton.getMeasuredWidth()) / 2.0f);
            this.vPinMarker.animate().translationY(-(((float) this.vPinMarker.getMeasuredHeight()) / 6.0f)).scaleX(0.85f).scaleY(0.85f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
        if (this.pinMarkerShadowIv.getVisibility() == 0) {
            ImageView imageView = this.pinMarkerShadowIv;
            imageView.setPivotY(((float) imageView.getMeasuredHeight()) / 2.0f);
            ImageView imageView2 = this.pinMarkerShadowIv;
            imageView2.setPivotX(((float) imageView2.getMeasuredWidth()) / 2.0f);
            this.pinMarkerShadowIv.animate().scaleX(2.0f).scaleY(2.0f).alpha(0.45f).setDuration(200).setInterpolator(new FastOutSlowInInterpolator()).start();
        }
    }

    public void showToast(int i) {
        showToast(getContext().getString(i));
    }

    public void showToast(String str) {
        if (getContext() != null) {
            b.makeText(getContext(), str).show();
        }
    }

    public void showLoadingDialog() {
        r rVar = this.f1164b;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public void hideLoadingDialog() {
        r rVar = this.f1164b;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void showMapBoxCopyright() {
        this.tvMapBoxCopyright.setVisibility(0);
    }

    public void hideMapBoxCopyright() {
        this.tvMapBoxCopyright.setVisibility(8);
    }

    public void setToolbarTitle(int i) {
        this.c.setTitle(getContext().getString(i));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.f1163a.onBackPressed();
    }

    public void setToolbarBackButton() {
        this.c.setBackButton(R.drawable.ic_arrow_back_dark_grey_blue_24dp, new View.OnClickListener() {
            public final void onClick(View view) {
                SecondDestinationView.this.b(view);
            }
        }, R.string.back_button_desc);
    }

    public void setToolbarMenu() {
        this.c.setMenu(R.menu.menu_search, new Toolbar.OnMenuItemClickListener() {
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return SecondDestinationView.this.a(menuItem);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean a(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.action_search) {
            return false;
        }
        this.f1163a.onSearchClick();
        return true;
    }

    public void setFormattedAddress(String str) {
        if (str != null && !str.isEmpty()) {
            this.tvDescriptionAddress.setText(str);
        }
    }

    public void showNoLocationDialog(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        if (getContext() != null) {
            r rVar = this.f1164b;
            if (rVar != null) {
                rVar.showNoLocationDialog(onClickListener, onClickListener2);
            }
        }
    }

    public void showNoPermissionDialog(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        r rVar = this.f1164b;
        if (rVar != null) {
            rVar.showNoPermissionDialog(onClickListener, onClickListener2);
        }
    }

    public void cancelNoLocationDialog() {
        if (getContext() != null) {
            r rVar = this.f1164b;
            if (rVar != null) {
                rVar.dismissNoLocationDialog();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.f1164b = new r(getContext());
        this.c = new c(this);
        this.c.setOnTitleClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                SecondDestinationView.this.a(view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f1163a.onSearchClick();
    }

    public void setPresenter(d dVar) {
        this.f1163a = dVar;
    }
}
