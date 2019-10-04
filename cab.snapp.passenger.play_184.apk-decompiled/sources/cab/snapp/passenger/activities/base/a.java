package cab.snapp.passenger.activities.base;

import cab.snapp.passenger.c.e;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class a implements MembersInjector<BaseActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<e> f435a;

    public a(Provider<e> provider) {
        this.f435a = provider;
    }

    public static MembersInjector<BaseActivity> create(Provider<e> provider) {
        return new a(provider);
    }

    public final void injectMembers(BaseActivity baseActivity) {
        injectSnappLocationDataManager(baseActivity, this.f435a.get());
    }

    public static void injectSnappLocationDataManager(BaseActivity baseActivity, e eVar) {
        baseActivity.f434b = eVar;
    }
}
