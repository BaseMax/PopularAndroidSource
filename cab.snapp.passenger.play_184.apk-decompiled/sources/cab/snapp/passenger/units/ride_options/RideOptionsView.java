package cab.snapp.passenger.units.ride_options;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.e;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappLoading;
import java.util.List;

public class RideOptionsView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1098a;

    /* renamed from: b  reason: collision with root package name */
    b f1099b;
    b c;
    @BindView(2131362825)
    AppCompatButton confirmOptionsBtn;
    @BindView(2131362826)
    LinearLayout confirmOptionsLayout;
    @BindView(2131362827)
    SnappLoading loading;
    @BindView(2131362829)
    LinearLayout rootRideStopLayout;
    @BindView(2131362830)
    ImageView roundTripIv;
    @BindView(2131362831)
    LinearLayout roundTripLayout;
    @BindView(2131362832)
    AppCompatTextView roundTripTv;
    @BindView(2131362833)
    ImageView secondDestinationIv;
    @BindView(2131362834)
    LinearLayout secondDestinationLayout;
    @BindView(2131362835)
    AppCompatTextView secondDestinationTv;
    @BindView(2131362836)
    ImageView stopTimeIv;
    @BindView(2131362837)
    LinearLayout stopTimeLayout;
    @BindView(2131362838)
    AppCompatTextView stopTimeTv;
    @BindView(2131362839)
    AppCompatTextView userNameTv;
    @BindView(2131362840)
    ImageView waitingIv;
    @BindView(2131362841)
    LinearLayout waitingLayout;
    @BindView(2131362842)
    AppCompatTextView waitingTv;

    public RideOptionsView(Context context) {
        super(context);
    }

    public RideOptionsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RideOptionsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362834})
    public void onSecondDestinationClick() {
        c cVar = this.f1098a;
        if (cVar != null) {
            cVar.onSecondDestinationClicked();
        }
    }

    @OnClick({2131362831})
    public void onRoundTripClick() {
        c cVar = this.f1098a;
        if (cVar != null) {
            cVar.onRoundTripClicked();
        }
    }

    @OnClick({2131362841})
    public void onWaitingClick() {
        c cVar = this.f1098a;
        if (cVar != null) {
            cVar.onWaitingClicked();
        }
    }

    @OnClick({2131362837})
    public void onStopTimeClick() {
        c cVar = this.f1098a;
        if (cVar != null) {
            cVar.onStopTimeClicked();
        }
    }

    @OnClick({2131362825})
    public void onConfirmOptionsClick() {
        c cVar = this.f1098a;
        if (cVar != null) {
            cVar.onConfirmOptionsClicked();
        }
    }

    public void setSecondDestinationSelected() {
        this.secondDestinationLayout.setSelected(true);
    }

    public void setSecondDestinationUnselected() {
        this.secondDestinationLayout.setSelected(false);
    }

    public void setRoundTripSelected() {
        this.roundTripLayout.setSelected(true);
    }

    public void setRoundTripUnselected() {
        this.roundTripLayout.setSelected(false);
    }

    public void setWaitingSelected() {
        this.waitingLayout.setSelected(true);
        this.stopTimeLayout.setSelected(true);
        this.rootRideStopLayout.setSelected(true);
    }

    public void setWaitingUnselected() {
        this.waitingLayout.setSelected(false);
        this.stopTimeLayout.setSelected(false);
        this.rootRideStopLayout.setSelected(false);
    }

    public void showChooseWaitingDialog(List<String> list, e.b bVar, String str, View.OnClickListener onClickListener) {
        if (getContext() != null) {
            b bVar2 = this.f1099b;
            if (bVar2 != null) {
                bVar2.cancel();
                this.f1099b = null;
            }
            if (list != null && !list.isEmpty()) {
                this.f1099b = new b.a(getContext()).setDialogViewType(new e.a().setItems(list).setOnItemSelectedListener(bVar).build()).setTheme(0).setCancelable(true).setPositiveButton(str, onClickListener).showOnBuild(true).build();
            }
        }
    }

    public void dismissAndCancelChooseWaitingDialog() {
        if (getContext() != null) {
            b bVar = this.f1099b;
            if (bVar != null) {
                if (bVar.isShowing()) {
                    this.f1099b.dismiss();
                }
                this.f1099b.cancel();
            }
        }
    }

    public void setStopTime(String str) {
        this.stopTimeTv.setText(str);
    }

    public void setStopTimeTextColor(int i) {
        this.stopTimeTv.setTextColor(i);
    }

    public void setSecondDestinationIcon(int i) {
        this.secondDestinationIv.setImageResource(i);
    }

    public void setSecondDestinationTextColor(int i) {
        this.secondDestinationTv.setTextColor(i);
    }

    public void setSecondDestinationText(String str) {
        this.secondDestinationTv.setText(str);
    }

    public void setRoundTripIcon(int i) {
        this.roundTripIv.setImageResource(i);
    }

    public void setRoundTripTextColor(int i) {
        this.roundTripTv.setTextColor(i);
    }

    public void setWaitingIcon(int i) {
        this.waitingIv.setImageResource(i);
    }

    public void setWaitingTextColor(int i) {
        this.waitingTv.setTextColor(i);
    }

    public void setStopTimeIcon(int i) {
        this.stopTimeIv.setImageResource(i);
    }

    public void setSecondDestinationDisabled() {
        this.secondDestinationLayout.setEnabled(false);
    }

    public void setSecondDestinationTextDisabled() {
        this.secondDestinationTv.setAlpha(0.3f);
    }

    public void setSecondDestinationIconDisabled() {
        this.secondDestinationIv.setAlpha(0.3f);
    }

    public void setWaitingDisabled() {
        this.waitingLayout.setEnabled(false);
        this.stopTimeLayout.setEnabled(false);
        this.rootRideStopLayout.setEnabled(false);
    }

    public void setWaitingTextDisabled() {
        this.waitingTv.setAlpha(0.3f);
    }

    public void setWaitingIconDisabled() {
        this.waitingIv.setAlpha(0.3f);
    }

    public void setStopTextDisabled() {
        this.stopTimeTv.setAlpha(0.3f);
    }

    public void setStopIconDisabled() {
        this.stopTimeIv.setAlpha(0.3f);
    }

    public void showToast(int i) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), getContext().getString(i)).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void showToast(String str) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).show();
        }
    }

    public void showConfirmOptionsView() {
        this.confirmOptionsLayout.setVisibility(0);
    }

    public void hideConfirmOptionsView() {
        this.confirmOptionsLayout.setVisibility(8);
    }

    public void setUserName(String str) {
        this.userNameTv.setText(str);
        this.userNameTv.setTextDirection(5);
    }

    public void showConfirmationDialog(int i, String str, int i2, View.OnClickListener onClickListener, int i3) {
        if (getContext() != null) {
            this.c = new b.a(getContext()).setDialogTitle(i).setTheme(0).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(i2, onClickListener).showOnBuild(false).build();
            this.c.findViewById(R.id.default_content_type_message).setTextDirection(i3);
            this.c.show();
        }
    }

    public void dismissConfirmationDialog() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.dismiss();
            this.c.cancel();
        }
    }

    public void showLoading() {
        this.loading.setVisibility(0);
    }

    public void hideLoading() {
        this.loading.setVisibility(8);
    }

    public void setConfirmOptionsButtonText(String str) {
        this.confirmOptionsBtn.setText(str);
    }

    public void setStopTimeIconTintColor(int i) {
        this.stopTimeIv.setColorFilter(ContextCompat.getColor(getContext(), i), PorterDuff.Mode.SRC_IN);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f1098a = cVar;
    }
}
