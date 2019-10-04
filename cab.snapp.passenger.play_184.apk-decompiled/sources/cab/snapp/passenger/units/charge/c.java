package cab.snapp.passenger.units.charge;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeOperatorsResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeRecentlyMobileNumbersResponse;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.g.b;
import cab.snapp.passenger.play.R;
import java.util.ArrayList;
import java.util.regex.Pattern;

public final class c extends BasePresenter<ChargeView, a> {

    /* renamed from: a  reason: collision with root package name */
    cab.snapp.passenger.a.c f635a;

    /* renamed from: b  reason: collision with root package name */
    private FragmentManager f636b;
    private b<Integer> c = new b() {
        public final void run(Object obj) {
            c.this.a((Integer) obj);
        }
    };

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Integer num) {
        if (getInteractor() != null) {
            getInteractor();
            a.a(num.intValue());
        }
    }

    public final void onInitialize(String str) {
        if (getView() != null) {
            if (getView() != null) {
                AnonymousClass1 r0 = new TextWatcher() {
                    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    public final void afterTextChanged(Editable editable) {
                        c.this.d();
                    }
                };
                $$Lambda$c$PVOZk0Xffe09eTBmwulNc87sN4U r1 = new View.OnFocusChangeListener() {
                    public final void onFocusChange(View view, boolean z) {
                        c.this.a(view, z);
                    }
                };
                if (getView() != null) {
                    ((ChargeView) getView()).setMobileNumberEtFocusListener(r1);
                    ((ChargeView) getView()).setMobileNumberEtTextWatcher(r0);
                    if (this.f635a != null) {
                        ((ChargeView) getView()).setAdapter(this.f635a);
                    } else {
                        this.f635a = new cab.snapp.passenger.a.c(new ArrayList());
                        this.f635a.setOnAmountSelectedListener(this.c);
                        ((ChargeView) getView()).setAdapter(this.f635a);
                    }
                }
            }
            if (getView() != null) {
                ((ChargeView) getView()).setMobileNumberEtText(str);
            }
            ((ChargeView) getView()).setStatusBarColor(R.color.white);
        }
    }

    /* access modifiers changed from: private */
    public void d() {
        if (e()) {
            if (getView() != null) {
                ((ChargeView) getView()).mobileNumberStatus(1);
            }
        } else if (getView() != null) {
            String mobileNumberEtText = ((ChargeView) getView()).getMobileNumberEtText();
            if (!(getInteractor() == null || ((a) getInteractor()).getChargeOperatorsResponse() == null)) {
                if (((a) getInteractor()).f631a.getOperatorByPhoneNumber(mobileNumberEtText) != null) {
                    ((ChargeView) getView()).mobileNumberStatus(1);
                } else if (mobileNumberEtText != null) {
                    if (mobileNumberEtText.length() == 0) {
                        ((ChargeView) getView()).mobileNumberStatus(1);
                    } else if (mobileNumberEtText.startsWith("0999") && mobileNumberEtText.length() > 4) {
                        ((ChargeView) getView()).mobileNumberStatus(-1);
                    } else if (!mobileNumberEtText.startsWith("0999") && mobileNumberEtText.length() > 3) {
                        ((ChargeView) getView()).mobileNumberStatus(-1);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view, boolean z) {
        if (z && getInteractor() != null) {
            getInteractor();
            a.e();
            d();
        }
    }

    private boolean e() {
        boolean z = false;
        if (!(getView() == null || ((ChargeView) getView()).mobileNumberEt == null || ((ChargeView) getView()).getMobileNumberEtText() == null)) {
            String mobileNumberEtText = ((ChargeView) getView()).getMobileNumberEtText();
            a(mobileNumberEtText);
            if (Pattern.compile("(^(0098999|\\+98999|98999|0999|999)\\d{7})|(^(00989|\\+989|989|09|9)\\d{9})").matcher(mobileNumberEtText).matches() && this.f635a.getSelectedItem() != null) {
                z = true;
            }
            if (z) {
                ((ChargeView) getView()).enableBtn();
            } else {
                ((ChargeView) getView()).disableBtn();
            }
        }
        return z;
    }

    private void a(String str) {
        if (getInteractor() != null && ((a) getInteractor()).f631a != null) {
            selectOperator(((a) getInteractor()).f631a.getOperatorByPhoneNumber(str));
        }
    }

    public final void selectOperator(SIMChargeOperator sIMChargeOperator) {
        this.f635a.selectOperator(sIMChargeOperator);
    }

    public final void onBackClicked() {
        a();
        if (getInteractor() != null) {
            ((a) getInteractor()).pressBack();
        }
    }

    public final void onBeforeRequest() {
        if (getView() != null) {
            ((ChargeView) getView()).showLoading();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(ChargeOperatorsResponse chargeOperatorsResponse) {
        if (getView() != null) {
            ((ChargeView) getView()).hideLoading();
            this.f635a.setItems(chargeOperatorsResponse.getOperators());
            ((ChargeView) getView()).fillQuickCharge(chargeOperatorsResponse.getQuickCharge());
            ((ChargeView) getView()).mobileNumberStatus(0);
        }
        e();
    }

    public final void showError(int i) {
        if (getView() != null) {
            ((ChargeView) getView()).showErrorMessage(i);
        }
    }

    public final void showError(String str) {
        if (getView() != null) {
            ((ChargeView) getView()).showErrorMessage(str);
        }
    }

    public final FragmentManager getFragmentManager() {
        return this.f636b;
    }

    public final void setFragmentManager(FragmentManager fragmentManager) {
        this.f636b = fragmentManager;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.view != null && ((ChargeView) this.view).getContext() != null) {
            cab.snapp.c.c.tryHideKeyboard(((ChargeView) this.view).getContext(), (View) this.view);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        if (getView() != null) {
            ChargeView chargeView = (ChargeView) getView();
            chargeView.quickChargeBtn.setVisibility(0);
            chargeView.chevronView.setVisibility(0);
            chargeView.quickChargeLoading.setVisibility(4);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(ChargeRecentlyMobileNumbersResponse chargeRecentlyMobileNumbersResponse) {
        if (getView() != null) {
            ((ChargeView) getView()).showRecentlyMobileNumberBottomSheet(chargeRecentlyMobileNumbersResponse);
        }
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        if (getView() != null && ((ChargeView) getView()).getContext() != null) {
            new r(((ChargeView) getView()).getContext()).showNoInternetDialog();
        }
    }
}
