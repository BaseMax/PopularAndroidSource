package cab.snapp.passenger.activities.root;

import cab.snapp.authenticator.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class a implements MembersInjector<AuthenticatorActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f441a;

    public a(Provider<c> provider) {
        this.f441a = provider;
    }

    public static MembersInjector<AuthenticatorActivity> create(Provider<c> provider) {
        return new a(provider);
    }

    public final void injectMembers(AuthenticatorActivity authenticatorActivity) {
        injectSnappAccountManager(authenticatorActivity, this.f441a.get());
    }

    public static void injectSnappAccountManager(AuthenticatorActivity authenticatorActivity, c cVar) {
        authenticatorActivity.f440a = cVar;
    }
}
