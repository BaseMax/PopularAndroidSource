package cab.snapp.passenger.units.credit;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.CreditHistoryResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.units.support.SupportController;
import io.reactivex.e.g;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f690a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f691b;

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                ((c) getPresenter()).initViews();
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).showLoading();
            }
            addDisposable(this.f690a.getCreditData().subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.a((CreditHistoryResponse) obj);
                }
            }, new g() {
                public final void accept(Object obj) {
                    a.this.a((Throwable) obj);
                }
            }));
            ((c) getPresenter()).setStatusBarColor();
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.f691b.reportScreenName("Credit History Page");
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        th.getMessage();
        c cVar = (c) getPresenter();
        if (cVar != null) {
            cVar.hideLoading();
            if (cVar.getView() != null) {
                ((CreditView) cVar.getView()).showEmptyLayout();
            }
        }
    }

    public void goBack() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(CreditHistoryResponse creditHistoryResponse) {
        c cVar = (c) getPresenter();
        if (cVar != null) {
            List arrayList = new ArrayList();
            if (creditHistoryResponse != null) {
                arrayList = creditHistoryResponse.getTransactionList();
            }
            cVar.hideLoading();
            cVar.onDataRequestSucceed(arrayList);
        }
    }

    public void goToItemSupport(String str) {
        if (getRouter() != null) {
            Bundle bundle = new Bundle();
            bundle.putInt(SupportController.KEY_SUPPORT_TYPE, 2);
            if (str != null) {
                bundle.putString(SupportController.KEY_SUPPORT_RELATION, str);
            }
            ((e) getRouter()).routeToSupportController(bundle);
        }
    }
}
