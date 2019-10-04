package cab.snapp.passenger.units.charge_recently;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeRecentlyMobileNumbersResponse;
import cab.snapp.passenger.play.R;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;

public class RecentlyMobileNumbersSheetDialogFragment extends BottomSheetDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    protected Unbinder f652a;

    /* renamed from: b  reason: collision with root package name */
    private a f653b;
    private e c;
    private ChargeRecentlyMobileNumbersResponse d;

    public static RecentlyMobileNumbersSheetDialogFragment newInstance() {
        return new RecentlyMobileNumbersSheetDialogFragment();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BottomSheetDialogFragmentStyle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ChargeRecentlyMobileNumbersView chargeRecentlyMobileNumbersView = (ChargeRecentlyMobileNumbersView) layoutInflater.inflate(R.layout.view_charge_recently_mobile_numbers, viewGroup, false);
        this.f652a = ButterKnife.bind((Object) this, (View) chargeRecentlyMobileNumbersView);
        c cVar = new c();
        this.f653b = new a();
        this.f653b.setChargeRecentlyMobileNumbersResponse(this.d);
        d dVar = new d();
        cVar.setView(chargeRecentlyMobileNumbersView);
        cVar.setInteractor(this.f653b);
        this.f653b.setPresenter(cVar);
        this.f653b.setRouter(dVar);
        this.f653b.setController(this);
        this.f653b.onUnitCreated();
        this.f653b.setOnRecentMobileNumberSelectedListener(this.c);
        chargeRecentlyMobileNumbersView.setPresenter(cVar);
        chargeRecentlyMobileNumbersView.setController(this);
        ChargeRecentlyMobileNumbersResponse chargeRecentlyMobileNumbersResponse = this.d;
        if (chargeRecentlyMobileNumbersResponse != null && chargeRecentlyMobileNumbersResponse.getMobileNumbers() != null && !this.d.getMobileNumbers().isEmpty()) {
            cVar.f657a.addItems(this.d.getMobileNumbers());
            if (cVar.getView() != null) {
                ((ChargeRecentlyMobileNumbersView) cVar.getView()).hideNotFoundError();
            }
        } else if (cVar.getView() != null) {
            ((ChargeRecentlyMobileNumbersView) cVar.getView()).showNotFoundError();
        }
        return chargeRecentlyMobileNumbersView;
    }

    public void setOnRecentMobileNumberSelectedListener(e eVar) {
        this.c = eVar;
    }

    public void onPause() {
        this.f653b.onUnitPause();
        super.onPause();
    }

    public void onResume() {
        this.f653b.onUnitResume();
        super.onResume();
    }

    public void onStop() {
        this.f653b.onUnitStop();
        super.onStop();
    }

    public ChargeRecentlyMobileNumbersResponse getChargeRecentlyMobileNumbersResponse() {
        return this.d;
    }

    public void setChargeRecentlyMobileNumbersResponse(ChargeRecentlyMobileNumbersResponse chargeRecentlyMobileNumbersResponse) {
        this.d = chargeRecentlyMobileNumbersResponse;
    }
}
