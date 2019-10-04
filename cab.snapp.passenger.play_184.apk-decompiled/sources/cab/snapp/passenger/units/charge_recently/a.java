package cab.snapp.passenger.units.charge_recently;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeRecentlyMobileNumbersResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import java.lang.ref.SoftReference;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f654a;

    /* renamed from: b  reason: collision with root package name */
    e f655b;
    private SoftReference<Fragment> c;
    private ChargeRecentlyMobileNumbersResponse d;

    public Activity getActivity() {
        if (this.c.get() != null) {
            return this.c.get().getActivity();
        }
        return null;
    }

    public void setController(Fragment fragment) {
        this.c = new SoftReference<>(fragment);
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("TapOnRecently", "ShowRecentlyModal").addOuterKeyToCurrentAsValue("EnterPhoneNumber").build());
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                ((c) getPresenter()).init();
            }
        }
    }

    public void setOnRecentMobileNumberSelectedListener(e eVar) {
        this.f655b = eVar;
    }

    public ChargeRecentlyMobileNumbersResponse getChargeRecentlyMobileNumbersResponse() {
        return this.d;
    }

    public void setChargeRecentlyMobileNumbersResponse(ChargeRecentlyMobileNumbersResponse chargeRecentlyMobileNumbersResponse) {
        this.d = chargeRecentlyMobileNumbersResponse;
    }

    static void a() {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("TapOnRecently", "TapOnClose").addOuterKeyToCurrentAsValue("EnterPhoneNumber").build());
    }
}
