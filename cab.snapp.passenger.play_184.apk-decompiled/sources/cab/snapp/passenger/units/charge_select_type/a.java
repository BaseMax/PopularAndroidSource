package cab.snapp.passenger.units.charge_select_type;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import java.lang.ref.SoftReference;
import java.util.ArrayList;

public class a extends BaseInteractor<c, b> {

    /* renamed from: a  reason: collision with root package name */
    d f683a;

    /* renamed from: b  reason: collision with root package name */
    private SoftReference<Fragment> f684b;
    private ArrayList<ChargePackage> c = new ArrayList<>();

    public Activity getActivity() {
        if (this.f684b.get() != null) {
            return this.f684b.get().getActivity();
        }
        return null;
    }

    public ArrayList<ChargePackage> getPackages() {
        return this.c;
    }

    public void setPackages(ArrayList<ChargePackage> arrayList) {
        this.c = arrayList;
    }

    public void setController(Fragment fragment) {
        this.f684b = new SoftReference<>(fragment);
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("TapOnProductType", "ShowProductModal").addOuterKeyToCurrentAsValue("EnterAmount").build());
        if (!(getActivity() == null || getPresenter() == null)) {
            ((b) getPresenter()).init(this.c);
        }
    }

    public void setOnChargePackageSelectedListener(d dVar) {
        this.f683a = dVar;
    }

    static void a() {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("TapOnProductType", "TapOnClose").addOuterKeyToCurrentAsValue("EnterAmount").build());
    }
}
