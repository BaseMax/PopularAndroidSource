package cab.snapp.passenger.units.snapp_charge_transactions;

import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.a.b;
import cab.snapp.passenger.data.models.charge.ChargeHistoryInfo;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeHistoryResponse;
import cab.snapp.passenger.play.R;
import java.util.ArrayList;

public final class c extends BasePresenter<SnappChargeTransactionsView, a> {

    /* renamed from: a  reason: collision with root package name */
    b f1295a;

    /* renamed from: b  reason: collision with root package name */
    boolean f1296b = false;

    public final void onBackClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).pressBack();
        }
    }

    public final void onReachedToTheEndOfList() {
        if (!this.f1296b && getInteractor() != null) {
            ((a) getInteractor()).requestNextPage();
        }
    }

    public final void onBeforeRequest() {
        this.f1296b = true;
        if (getInteractor() != null && ((a) getInteractor()).getRideHistoryCurrentPage() == -1 && getView() != null) {
            ((SnappChargeTransactionsView) getView()).showLoading();
        }
    }

    private void a() {
        this.f1296b = false;
        if (getView() != null) {
            ((SnappChargeTransactionsView) getView()).hideLoading();
        }
    }

    public final void onRequestSuccess(ChargeHistoryResponse chargeHistoryResponse) {
        if (getView() != null) {
            boolean z = this.f1295a.getItems().size() == 0;
            a();
            if (!(chargeHistoryResponse == null || getInteractor() == null || getView() == null)) {
                if (!(getInteractor() == null || getView() == null)) {
                    if (((a) getInteractor()).getRideHistoryCurrentPage() <= 1 && this.f1295a.getItems().size() == 0 && (chargeHistoryResponse.getPayments() == null || chargeHistoryResponse.getPayments().size() == 0)) {
                        ((SnappChargeTransactionsView) getView()).showEmptyList();
                    } else {
                        ((SnappChargeTransactionsView) getView()).hideEmptyList();
                    }
                }
                ArrayList<b.a> items = this.f1295a.getItems();
                if (items.size() > 0 && items.get(items.size() - 1).isLoadingItem()) {
                    items.remove(items.size() - 1);
                    try {
                        this.f1295a.notifyItemRemoved(items.size() + 1);
                    } catch (Exception unused) {
                    }
                }
                if (chargeHistoryResponse.getPayments() != null && chargeHistoryResponse.getPayments().size() > 0) {
                    ArrayList<b.a> items2 = this.f1295a.getItems();
                    int size = items2.size();
                    for (ChargeHistoryInfo createNormalItem : chargeHistoryResponse.getPayments()) {
                        items2.add(b.a.createNormalItem(createNormalItem));
                    }
                    try {
                        this.f1295a.notifyItemRangeInserted(size, chargeHistoryResponse.getPayments().size());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    ArrayList<b.a> items3 = this.f1295a.getItems();
                    items3.add(b.a.createLoadingItem());
                    try {
                        this.f1295a.notifyItemInserted(items3.size());
                    } catch (Exception unused2) {
                    }
                    ((SnappChargeTransactionsView) getView()).smoothScrollList(this.f1295a.getItems().size() - chargeHistoryResponse.getPayments().size());
                }
                if (z) {
                    ((SnappChargeTransactionsView) getView()).fullScrollUp();
                }
            }
        }
    }

    public final void onRequestError() {
        a();
        if (getView() != null) {
            ((SnappChargeTransactionsView) getView()).showRequestError(R.string.error);
        }
    }

    public final void onInitialize(ChargeHistoryResponse chargeHistoryResponse) {
        if (getView() != null) {
            ((SnappChargeTransactionsView) getView()).setStatusBarColor(R.color.white);
        }
        if (getView() != null) {
            if (this.f1295a != null) {
                ((SnappChargeTransactionsView) getView()).setAdapter(this.f1295a);
                return;
            } else {
                this.f1295a = new b(new ArrayList());
                ((SnappChargeTransactionsView) getView()).setAdapter(this.f1295a);
            }
        }
        if (chargeHistoryResponse != null) {
            onRequestSuccess(chargeHistoryResponse);
            return;
        }
        if (getInteractor() != null) {
            ((a) getInteractor()).requestNextPage();
        }
    }
}
