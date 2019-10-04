package cab.snapp.passenger.units.charge_select_amount;

import android.view.View;
import androidx.fragment.app.FragmentManager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.a.a;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.g.b;
import cab.snapp.passenger.units.charge_select_type.SelectChargeTypeBottomSheetDialogFragment;
import cab.snapp.passenger.units.charge_select_type.d;
import cab.snapp.snappuikit.MoneyAmountEditText;
import java.util.ArrayList;

public final class c extends BasePresenter<ChargeSelectAmountView, a> {

    /* renamed from: a  reason: collision with root package name */
    a f675a;

    /* renamed from: b  reason: collision with root package name */
    private FragmentManager f676b;

    public final void setFragmentManager(FragmentManager fragmentManager) {
        this.f676b = fragmentManager;
    }

    public final void init(long j) {
        if (getView() != null) {
            this.f675a = new a(new ArrayList());
            this.f675a.setSelectedAmount(j);
            ((ChargeSelectAmountView) getView()).setAdapter(this.f675a);
            this.f675a.setOnAmountSelectedListener(new b() {
                public final void run(Object obj) {
                    c.this.a((Long) obj);
                }
            });
            if (getView() != null) {
                ((ChargeSelectAmountView) getView()).etAmount.setMoneyAmountChangedListener(new MoneyAmountEditText.a() {
                    public final void onMoneyAmountChanged(long j) {
                        c.this.b(j);
                    }
                });
                ((ChargeSelectAmountView) getView()).setMobileNumberEtFocusListener(new View.OnFocusChangeListener() {
                    public final void onFocusChange(View view, boolean z) {
                        c.this.a(view, z);
                    }
                });
            }
        }
        if (getInteractor() != null) {
            ((a) getInteractor()).a(j);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Long l) {
        if (getView() != null) {
            ((ChargeSelectAmountView) getView()).setAmountOnEditText(l.longValue());
        }
        if (getInteractor() != null) {
            ((a) getInteractor()).a(l.longValue());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(long j) {
        this.f675a.setSelectedAmount(j);
        if (getInteractor() != null) {
            ((a) getInteractor()).a(j);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view, boolean z) {
        if (z && getInteractor() != null) {
            getInteractor();
            a.b();
        }
    }

    public final void onBackClicked() {
        b();
        if (getInteractor() != null) {
            ((a) getInteractor()).pressBack();
        }
    }

    public final void onBeforeRequest() {
        if (getView() != null) {
            ((ChargeSelectAmountView) getView()).showLoading();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(long j) {
        if (getView() != null) {
            ((ChargeSelectAmountView) getView()).changeChargeAmountBy(j);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        b();
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.getPresenter() != null && aVar.f672b != null && aVar.f672b.getPackages() != null) {
                c cVar = (c) aVar.getPresenter();
                SelectChargeTypeBottomSheetDialogFragment newInstance = SelectChargeTypeBottomSheetDialogFragment.newInstance(aVar.f672b.getPackages());
                if (!newInstance.isAdded()) {
                    newInstance.show(cVar.f676b, "select_charge_type_bottom_sheet_dialog_fragment");
                }
                newInstance.setOnChargePackageSelectedListener(new d() {
                    public final void onChargePackageSelected(ChargePackage chargePackage) {
                        c.this.a(chargePackage);
                    }
                });
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ChargePackage chargePackage) {
        if (getInteractor() != null) {
            ((a) getInteractor()).a(chargePackage);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean z) {
        if (getView() != null) {
            ((ChargeSelectAmountView) getView()).setSubmitButtonEnable(z);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        if (this.view != null && ((ChargeSelectAmountView) this.view).getContext() != null) {
            cab.snapp.c.c.tryHideKeyboard(((ChargeSelectAmountView) this.view).getContext(), (View) this.view);
        }
    }
}
