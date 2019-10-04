package cab.snapp.passenger.units.snapp_charge_transactions;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeHistoryResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f1292a;

    /* renamed from: b  reason: collision with root package name */
    protected int f1293b = -1;
    protected ChargeHistoryResponse c = null;

    public void pressBack() {
        if (getActivity() != null && !getActivity().isFinishing()) {
            getActivity().onBackPressed();
        }
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("History", "TapOnBack").build());
    }

    public int getRideHistoryCurrentPage() {
        return this.f1293b;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(c cVar, ChargeHistoryResponse chargeHistoryResponse) throws Exception {
        if (!(chargeHistoryResponse == null || chargeHistoryResponse.getPayments() == null || chargeHistoryResponse.getPayments().isEmpty())) {
            this.f1293b = chargeHistoryResponse.getNumber();
            this.c = chargeHistoryResponse;
        }
        cVar.onRequestSuccess(chargeHistoryResponse);
    }

    public void requestNextPage() {
        int i = this.f1293b + 1;
        c cVar = (c) getPresenter();
        if (cVar != null) {
            cVar.onBeforeRequest();
            addDisposable(this.f1292a.getChargeHistory(i, 10).subscribe(new g(cVar) {
                private final /* synthetic */ c f$1;

                {
                    this.f$1 = r2;
                }

                public final void accept(Object obj) {
                    a.this.a(this.f$1, (ChargeHistoryResponse) obj);
                }
            }, new g() {
                public final void accept(Object obj) {
                    c.this.onRequestError();
                }
            }));
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize(this.c);
            }
            if (!(getController() == null || getRouter() == null)) {
                ((d) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("History", "Show").build());
    }
}
