package cab.snapp.passenger.units.charge_recently;

import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.a.d;
import io.reactivex.e.g;
import java.util.ArrayList;

public final class c extends BasePresenter<ChargeRecentlyMobileNumbersView, a> {

    /* renamed from: a  reason: collision with root package name */
    d f657a;

    public final void onBeforeRequest() {
    }

    public final void init() {
        if (getView() != null) {
            if (this.f657a != null) {
                ((ChargeRecentlyMobileNumbersView) getView()).setAdapter(this.f657a);
                return;
            }
            this.f657a = new d(new ArrayList());
            ((ChargeRecentlyMobileNumbersView) getView()).setAdapter(this.f657a);
            this.f657a.getItemClicks().subscribe(new g() {
                public final void accept(Object obj) {
                    c.this.a((d.a) obj);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(d.a aVar) throws Exception {
        if (getInteractor() != null) {
            a aVar2 = (a) getInteractor();
            if (aVar2.f655b != null) {
                aVar2.f655b.onRecentMobileNumberSelected(aVar.getMobileNumber());
            }
        }
        if (getView() != null) {
            ((ChargeRecentlyMobileNumbersView) getView()).dismiss();
        }
    }
}
