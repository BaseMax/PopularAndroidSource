package cab.snapp.passenger.units.splash;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.f.a;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.b.d;
import cab.snapp.snappdialog.dialogViews.a.d;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappdialog.dialogViews.a.i;
import cab.snapp.snappuikit.SnappButton;
import java.util.List;

public class SplashView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    private c f1308a;

    /* renamed from: b  reason: collision with root package name */
    private Animation.AnimationListener f1309b;
    private b c;
    private b d;
    @BindView(2131362505)
    ImageView snappLogoIv;
    @BindView(2131362507)
    SnappButton tryAgainButton;
    @BindView(2131362508)
    AppCompatTextView versionNameTv;

    public void fadeInBottomElements() {
    }

    public void fadeOutBottomElements() {
    }

    public void hideBottomSkyLine() {
    }

    public void scaleDownBottomSkyLine() {
    }

    public void showBottomSkyLine() {
    }

    public void slideUpScreenElements() {
    }

    public void startLoadingAnimation() {
    }

    public void stopLoadingAnimation() {
    }

    public SplashView(Context context) {
        super(context);
    }

    public SplashView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SplashView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362507})
    public void onTryAgainButtonClicked() {
        c cVar = this.f1308a;
        if (cVar != null) {
            cVar.onTryAgainButtonClicked();
        }
    }

    @OnClick({2131362508})
    public void onVersionNameClicked() {
        c cVar = this.f1308a;
        if (cVar != null) {
            cVar.onVersionClicked();
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    /* access modifiers changed from: package-private */
    public Animation.AnimationListener getSlideUpAnimationListener() {
        return this.f1309b;
    }

    public void showTryAgainButton() {
        this.tryAgainButton.setVisibility(0);
    }

    public void hideTryAgainButton() {
        this.tryAgainButton.setVisibility(8);
    }

    public void showToast(String str) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).show();
        }
    }

    public void showGplayServiceUpdateDialog() {
        new b.a(getContext()).setIcon(R.drawable.error).setDialogTitle(getContext().getString(R.string.google_play_dialog_title)).setTheme(1).setDialogViewType(new g.a().setMessage(getContext().getString(R.string.google_play_dialog_message)).build()).setPositiveButton(getContext().getString(R.string.update_google_play_services), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                SplashView.this.a(view);
            }
        }).setCancelable(false).showOnBuild(true).build();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f1308a.downloadGplayClicked();
    }

    public void showEndPointSelectionDialog(String str, int i, List<String> list, d dVar, String str2, View.OnClickListener onClickListener) {
        if (getContext() != null) {
            b bVar = this.c;
            if (bVar != null && bVar.isShowing()) {
                cancelEndPointSelectionDialog();
            }
            this.c = new b.a(getContext()).setDialogTitle(str).setTheme(0).setIconFont(i).setDialogViewType(new i.a().setMessageList(list).setSingleItemSelectedListener(dVar).build()).setPositiveButton(str2, onClickListener).showOnBuild(true).build();
        }
    }

    public void cancelEndPointSelectionDialog() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.dismiss();
            this.c.cancel();
            this.c = null;
        }
    }

    public void setPresenter(c cVar) {
        this.f1308a = cVar;
    }

    public void showVersionName() {
        this.versionNameTv.setVisibility(0);
    }

    public void setVersionName(String str) {
        this.versionNameTv.setText(str);
    }

    public void translateUpSnappLogo() {
        this.snappLogoIv.animate().translationY((float) (-(getContext().getResources().getDimensionPixelSize(R.dimen.splash_bottom_space_height) >> 1))).setDuration(300).start();
    }

    public void translateDownSnappLogo() {
        this.snappLogoIv.animate().translationYBy((float) (getContext().getResources().getDimensionPixelSize(R.dimen.splash_bottom_space_height) >> 1)).setDuration(300).start();
    }

    public void showQAEndpointDialog(String str, String str2, String str3, TextWatcher textWatcher, String str4, View.OnClickListener onClickListener) {
        if (getContext() != null) {
            d.a firstEtTextWatcher = new d.a().setFirstEditTextHint(str2).setFirstEditTextText(str3).setFirstEtTextWatcher(textWatcher);
            firstEtTextWatcher.setChekboxText(null);
            this.d = new b.a(getContext()).setIcon(R.drawable.ic_snapp_group_minty_green).setDialogTitle(str).setDialogViewType(firstEtTextWatcher.build()).setPositiveButton(str4, onClickListener).showOnBuild(true).build();
        }
    }

    public void closeQAEndpointsDialog() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.hide();
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (a.isDevCloudQAEnabled()) {
            b bVar = this.d;
            if (bVar != null && bVar.isShowing()) {
                this.d.dismiss();
            }
        }
    }
}
