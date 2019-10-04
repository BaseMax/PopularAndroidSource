package cab.snapp.passenger.units.charge_select_type;

import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.a.e;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import io.reactivex.b.c;
import io.reactivex.e.g;
import java.util.ArrayList;

public final class b extends BasePresenter<ChargeSelectTypeView, a> {

    /* renamed from: a  reason: collision with root package name */
    private c f685a;

    public final void init(ArrayList<ChargePackage> arrayList) {
        e eVar = new e(new ArrayList());
        eVar.addItems(arrayList);
        if (getView() != null) {
            ((ChargeSelectTypeView) getView()).setAdapter(eVar);
        }
        this.f685a = eVar.getItemClicks().subscribe(new g() {
            public final void accept(Object obj) {
                b.this.a((e.a) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(e.a aVar) throws Exception {
        if (getInteractor() != null) {
            a aVar2 = (a) getInteractor();
            if (aVar2.f683a != null) {
                aVar2.f683a.onChargePackageSelected(aVar.getChargePackage());
            }
        }
        if (getView() != null) {
            ((ChargeSelectTypeView) getView()).dismiss();
        }
        this.f685a.dispose();
    }
}
