package cab.snapp.passenger.units.box_options;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.BoxOptions;
import cab.snapp.passenger.f.b.b.c;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    g f605a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f606b;

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.f606b.reportScreenName("");
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        if (getPresenter() != null) {
            if (this.f605a.getBoxOptions() == null) {
                this.f605a.setBoxOptions(new BoxOptions());
            }
            ((c) getPresenter()).onInitialize(this.f605a.getBoxOptions(), this.f605a.getDestinationFormattedDetailsAddress());
        }
    }

    public void updateFullName(String str) {
        if (this.f605a.getBoxOptions() != null) {
            this.f605a.getBoxOptions().setFullName(str);
        }
    }

    public void updateAddress(String str) {
        if (this.f605a.getBoxOptions() != null) {
            this.f605a.getBoxOptions().setAddress(str);
        }
    }

    public void updateMobile(String str) {
        if (this.f605a.getBoxOptions() != null) {
            this.f605a.getBoxOptions().setPhoneNumber(str);
        }
    }

    public void updateDescription(String str) {
        if (this.f605a.getBoxOptions() != null) {
            this.f605a.getBoxOptions().setDescription(str);
        }
    }

    public void updateCashByRecipient(boolean z) {
        if (this.f605a.getBoxOptions() != null) {
            this.f605a.getBoxOptions().setPaidByRecipient(z);
        }
    }
}
