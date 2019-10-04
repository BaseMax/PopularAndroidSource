package cab.snapp.passenger.units.jek_header;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.a.c;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.data_access_layer.network.responses.CreditResponse;
import cab.snapp.passenger.units.main.MainController;
import cab.snapp.passenger.units.main.b;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f822a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    f f823b;
    @Inject
    g c;
    private String d;

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(CreditResponse creditResponse) throws Exception {
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (!(getPresenter() == null || getController() == null || a() == null || getRouter() == null)) {
                ((d) getRouter()).setNavigationController(a().getHeaderNavController());
            }
            if ((!this.f822a.isContentValid() || this.c.getCurrentState() != 0) && getRouter() != null) {
                ((d) getRouter()).navigateToMainHeader();
            }
            this.d = c.getInstance().getPrivateChannelId(b.JEK_BOTTOM_SHEET_STATE_CHANNEL_KEY);
            addDisposable(c.getInstance().subscribeToPrivateChannel(this.d, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((Boolean) obj);
                }
            }));
            addDisposable(this.c.getUpdateSignalObservable().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((Integer) obj);
                }
            }));
            addDisposable(this.f823b.getCreditObservable().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.b((CreditResponse) obj);
                }
            }));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Boolean bool) throws Exception {
        if (!bool.booleanValue() && getRouter() != null) {
            ((d) getRouter()).navigateToMainHeader();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Integer num) throws Exception {
        if (num.intValue() == 2000 && this.c.getCurrentState() != 0 && getRouter() != null) {
            ((d) getRouter()).navigateToMainHeader();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(CreditResponse creditResponse) throws Exception {
        if (getPresenter() != null && creditResponse != null && (creditResponse.getDefaultWallet() != 2 || creditResponse.getApCredit() != null)) {
            ((c) getPresenter()).setCurrentCredit(creditResponse.getCredit());
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        addDisposable(this.f823b.fetchAndRefreshCredit(CreditRequest.PLACE.JEK_HOME).subscribe($$Lambda$a$_aKkn9qyDKWVydMrLT8h3s_BfBk.INSTANCE, new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.a((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).setCurrentCredit(-1);
        }
    }

    private b a() {
        if (getController() == null || getController().getParentFragment() == null || getController().getParentFragment().getParentFragment() == null || !(getController().getParentFragment().getParentFragment() instanceof MainController)) {
            return null;
        }
        return (b) ((MainController) getController().getParentFragment().getParentFragment()).getControllerInteractor();
    }

    public void showCreditBottomSheet() {
        if (a() != null) {
            a().showCreditTopUp();
        }
    }
}
