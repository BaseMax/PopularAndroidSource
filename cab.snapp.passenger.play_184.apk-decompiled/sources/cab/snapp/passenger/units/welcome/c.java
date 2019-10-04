package cab.snapp.passenger.units.welcome;

import android.app.Activity;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;

final class c extends BasePresenter<WelcomeView, a> {

    /* renamed from: a  reason: collision with root package name */
    protected int f1436a = -1;

    /* renamed from: b  reason: collision with root package name */
    protected int f1437b = -1;
    protected int c = -1;
    protected int d = -1;

    private static int a(int i) {
        return i != 20 ? i != 30 ? i != 40 ? i != 50 ? R.string.persian : R.string.arabic : R.string.turkish : R.string.french : R.string.english;
    }

    c() {
    }

    public final int getFirstLanguage() {
        return this.f1436a;
    }

    public final int getSecondLanguage() {
        return this.f1437b;
    }

    public final int getThirdLanguage() {
        return this.c;
    }

    public final int getFourthLanguage() {
        return this.d;
    }

    public final void onSignUpClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).proceedWithSignUp();
        }
    }

    public final void onLogInClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).proceedWithLogIn();
        }
    }

    public final void onFirstLanguageClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).proceedWithFirstLanguage();
        }
    }

    public final void onSecondLanguageClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.a() != null && aVar.getPresenter() != null) {
                aVar.a().changeLocale(((c) aVar.getPresenter()).getSecondLanguage());
            }
        }
    }

    public final void onThirdLanguageClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.a() != null && aVar.getPresenter() != null) {
                aVar.a().changeLocale(((c) aVar.getPresenter()).getThirdLanguage());
            }
        }
    }

    public final void onFourthLanguageClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.a() != null && aVar.getPresenter() != null) {
                aVar.a().changeLocale(((c) aVar.getPresenter()).getFourthLanguage());
            }
        }
    }

    public final void setUpLanguageOptions(int i, int i2, int i3, int i4) {
        if (getView() != null) {
            this.f1436a = i;
            this.f1437b = i2;
            this.c = i3;
            this.d = i4;
            ((WelcomeView) getView()).setFirstLanguage(a(i));
            ((WelcomeView) getView()).setSecondLanguage(a(i2));
            ((WelcomeView) getView()).setThirdLanguage(a(i3));
            ((WelcomeView) getView()).setFourthLanguage(a(i4));
        }
    }

    public final void onReady() {
        if (getInteractor() != null) {
            int[] otherLocaleOptions = ((a) getInteractor()).getOtherLocaleOptions(((a) getInteractor()).getCurrentLocale());
            setUpLanguageOptions(otherLocaleOptions[0], otherLocaleOptions[1], otherLocaleOptions[2], otherLocaleOptions[3]);
        }
        if (getView() != null) {
            ((WelcomeView) getView()).animateLowerPartButtons();
            setStatusBarColor();
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((WelcomeView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((WelcomeView) getView()).getContext(), R.color.colorAccent);
        }
    }
}
