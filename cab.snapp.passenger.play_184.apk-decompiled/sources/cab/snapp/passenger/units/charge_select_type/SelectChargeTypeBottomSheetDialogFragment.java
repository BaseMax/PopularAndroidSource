package cab.snapp.passenger.units.charge_select_type;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.play.R;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import java.util.ArrayList;

public class SelectChargeTypeBottomSheetDialogFragment extends BottomSheetDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    ArrayList<ChargePackage> f681a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f682b;
    private a c;
    private d d;

    public static SelectChargeTypeBottomSheetDialogFragment newInstance(ArrayList<ChargePackage> arrayList) {
        SelectChargeTypeBottomSheetDialogFragment selectChargeTypeBottomSheetDialogFragment = new SelectChargeTypeBottomSheetDialogFragment();
        selectChargeTypeBottomSheetDialogFragment.f681a = arrayList;
        return selectChargeTypeBottomSheetDialogFragment;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BottomSheetDialogFragmentStyle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ChargeSelectTypeView chargeSelectTypeView = (ChargeSelectTypeView) layoutInflater.inflate(R.layout.view_charge_select_type, viewGroup, false);
        this.f682b = ButterKnife.bind((Object) this, (View) chargeSelectTypeView);
        b bVar = new b();
        this.c = new a();
        this.c.setPackages(this.f681a);
        c cVar = new c();
        bVar.setView(chargeSelectTypeView);
        bVar.setInteractor(this.c);
        this.c.setPresenter(bVar);
        this.c.setRouter(cVar);
        this.c.setController(this);
        this.c.onUnitCreated();
        this.c.setOnChargePackageSelectedListener(this.d);
        chargeSelectTypeView.setPresenter(bVar);
        chargeSelectTypeView.setController(this);
        return chargeSelectTypeView;
    }

    public void setOnChargePackageSelectedListener(d dVar) {
        this.d = dVar;
    }

    public void onPause() {
        this.c.onUnitPause();
        super.onPause();
    }

    public void onResume() {
        this.c.onUnitResume();
        super.onResume();
    }

    public void onStop() {
        this.c.onUnitStop();
        super.onStop();
    }
}
