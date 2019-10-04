package cab.snapp.passenger;

import cab.snapp.b.a;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<BaseApplication> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<a> f444a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.data_access_layer.network.b> f445b;

    public b(Provider<a> provider, Provider<cab.snapp.passenger.data_access_layer.network.b> provider2) {
        this.f444a = provider;
        this.f445b = provider2;
    }

    public static MembersInjector<BaseApplication> create(Provider<a> provider, Provider<cab.snapp.passenger.data_access_layer.network.b> provider2) {
        return new b(provider, provider2);
    }

    public final void injectMembers(BaseApplication baseApplication) {
        injectSharedPreferencesManager(baseApplication, this.f444a.get());
        injectNetworkModules(baseApplication, this.f445b.get());
    }

    public static void injectSharedPreferencesManager(BaseApplication baseApplication, a aVar) {
        baseApplication.f343a = aVar;
    }

    public static void injectNetworkModules(BaseApplication baseApplication, cab.snapp.passenger.data_access_layer.network.b bVar) {
        baseApplication.f344b = bVar;
    }
}
