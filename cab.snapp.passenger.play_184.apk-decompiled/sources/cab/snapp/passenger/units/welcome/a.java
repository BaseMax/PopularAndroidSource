package cab.snapp.passenger.units.welcome;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {

    /* renamed from: a  reason: collision with root package name */
    protected int f1432a = 10;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f1433b;
    @Inject
    f c;

    public void proceedWithSignUp() {
        if (a() != null) {
            a().navigateToSignup();
        }
    }

    public void proceedWithLogIn() {
        if (a() != null) {
            a().navigateToLogin();
        }
    }

    /* access modifiers changed from: package-private */
    public final cab.snapp.passenger.units.splash.a a() {
        if (getPresenter() == null || getController() == null || !(getController().getParentInteractor() instanceof cab.snapp.passenger.units.splash.a)) {
            return null;
        }
        return (cab.snapp.passenger.units.splash.a) getController().getParentInteractor();
    }

    public void proceedWithFirstLanguage() {
        if (a() != null && getPresenter() != null) {
            a().changeLocale(((c) getPresenter()).getFirstLanguage());
        }
    }

    public int[] getOtherLocaleOptions(int i) {
        if (i == 20) {
            return new int[]{10, 30, 40, 50};
        }
        if (i == 30) {
            return new int[]{20, 10, 40, 50};
        }
        if (i != 40) {
            return i != 50 ? new int[]{20, 30, 40, 50} : new int[]{20, 30, 10, 40};
        }
        return new int[]{20, 30, 10, 50};
    }

    public int getCurrentLocale() {
        return this.f1432a;
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.f1432a = g.getSavedLocale();
            if (getPresenter() != null) {
                ((c) getPresenter()).onReady();
            }
            this.c.reset();
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.f1433b.reportScreenName("Welcome Page");
    }
}
