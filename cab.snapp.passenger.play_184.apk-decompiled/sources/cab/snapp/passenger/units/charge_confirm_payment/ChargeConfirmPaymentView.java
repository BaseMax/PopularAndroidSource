package cab.snapp.passenger.units.charge_confirm_payment;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.j;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.passenger.data_access_layer.network.requests.SnappChargeRechargeRequest;
import cab.snapp.passenger.f.g;
import cab.snapp.snappuikit.LoadingButton;
import com.squareup.picasso.Picasso;
import java.util.Locale;

public class ChargeConfirmPaymentView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f638a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f639b;
    @BindView(2131361996)
    LoadingButton chargePaymentBtn;
    @BindView(2131362581)
    AppCompatTextView payableAmountTv;
    @BindView(2131362375)
    CardView quickChargeContainer;
    @BindView(2131362004)
    AppCompatTextView quickChargeLastPaymentAmount;
    @BindView(2131362008)
    AppCompatTextView quickChargeLastPaymentTitle;
    @BindView(2131362376)
    AppCompatImageView quickChargeOperatorLogo;
    @BindView(2131362009)
    LinearLayout quickChargeOperatorLogoBackground;
    @BindView(2131362584)
    AppCompatTextView taxDescriptionTv;

    @OnClick({2131362243})
    public void onBackArrowLayoutClicked() {
        c cVar = this.f638a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    @OnClick({2131361996})
    public void paymentButtonClicked() {
        c cVar = this.f638a;
        if (cVar != null) {
            cVar.paymentButtonClicked();
        }
    }

    public ChargeConfirmPaymentView(Context context) {
        super(context);
    }

    public ChargeConfirmPaymentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ChargeConfirmPaymentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f639b = ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f638a = cVar;
    }

    public void fillOperator(SIMChargeOperator sIMChargeOperator) {
        if (sIMChargeOperator != null) {
            if (sIMChargeOperator.getActiveUrl() != null && !TextUtils.isEmpty(sIMChargeOperator.getActiveUrl())) {
                Picasso.get().load(sIMChargeOperator.getActiveUrl()).into((ImageView) this.quickChargeOperatorLogo);
            }
            this.quickChargeOperatorLogoBackground.setBackgroundColor(sIMChargeOperator.getBackgroundColor());
            this.chargePaymentBtn.setEnabled(true);
        }
    }

    public void fillChargeAmount(long j) {
        this.quickChargeLastPaymentAmount.setText(j.formatLong(j, new Locale(g.getRealCurrentActiveLocaleString())));
    }

    public void fillChargeTypeAndMobile(SnappChargeRechargeRequest snappChargeRechargeRequest, ChargePackage chargePackage) {
        Locale locale = new Locale(g.getRealCurrentActiveLocaleString());
        this.quickChargeLastPaymentTitle.setText(String.format(locale, "%s، %s", new Object[]{chargePackage.getPersianType(), snappChargeRechargeRequest.getMobileNumber()}));
    }

    public void handleTax(String str) {
        if (str != null || !TextUtils.isEmpty(str)) {
            this.taxDescriptionTv.setVisibility(0);
            this.taxDescriptionTv.setText(str);
            return;
        }
        this.taxDescriptionTv.setVisibility(4);
    }

    public void fillPayableAmount(long j) {
        this.payableAmountTv.setText(j.formatLong(j, new Locale(g.getRealCurrentActiveLocaleString())));
    }
}
