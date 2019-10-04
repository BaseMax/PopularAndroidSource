package cab.snapp.passenger.units.forgot_password;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f811a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f812b;

    public void requestForgotPassword(String str) {
        c cVar = (c) getPresenter();
        if (cVar != null) {
            cVar.onBeforeRequest();
            addDisposable(this.f811a.requestForgotPassword(str).subscribe(new g() {
                public final void accept(Object obj) {
                    c.this.onResponse();
                }
            }, new g() {
                public final void accept(Object obj) {
                    c.this.onRequestError();
                }
            }));
        }
    }

    public void finish() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.f812b.reportScreenName("");
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize();
            }
        }
    }
}
