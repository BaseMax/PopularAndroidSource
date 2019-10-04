package cab.snapp.passenger.units.about_us;

import android.content.pm.PackageManager;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.AboutUsResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f598a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f599b;

    private String a() {
        try {
            if (getActivity() != null) {
                return getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0).versionName;
            }
            return "";
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            com.a.a.a.logException(e);
            return "";
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(AboutUsResponse aboutUsResponse) throws Exception {
        if (!(getPresenter() == null || getActivity() == null)) {
            if (aboutUsResponse == null || aboutUsResponse.getAboutContent() == null) {
                ((c) getPresenter()).onAboutUsContentReady(getActivity().getString(R.string.about_content));
            } else {
                ((c) getPresenter()).onAboutUsContentReady(aboutUsResponse.getAboutContent());
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onAboutUsContentReady(getActivity().getString(R.string.about_content));
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
            addDisposable(this.f598a.getAboutUsContent().subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.a((AboutUsResponse) obj);
                }
            }, new g() {
                public final void accept(Object obj) {
                    a.this.a((Throwable) obj);
                }
            }));
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize(a());
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        ((c) getPresenter()).setStatusBarColor();
        this.f599b.reportScreenName("About us Page");
    }
}
