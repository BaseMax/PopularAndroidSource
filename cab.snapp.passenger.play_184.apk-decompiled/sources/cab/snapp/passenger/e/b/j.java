package cab.snapp.passenger.e.b;

import cab.snapp.b.a;
import cab.snapp.snappnetwork.c;
import dagger.a.b;
import dagger.a.d;
import javax.inject.Provider;

public final class j implements b<cab.snapp.passenger.data_access_layer.network.b> {

    /* renamed from: a  reason: collision with root package name */
    private final d f501a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f502b;
    private final Provider<a> c;
    private final Provider<cab.snapp.passenger.b.b> d;

    public j(d dVar, Provider<c> provider, Provider<a> provider2, Provider<cab.snapp.passenger.b.b> provider3) {
        this.f501a = dVar;
        this.f502b = provider;
        this.c = provider2;
        this.d = provider3;
    }

    public final cab.snapp.passenger.data_access_layer.network.b get() {
        return (cab.snapp.passenger.data_access_layer.network.b) d.checkNotNull(this.f501a.provideNetworkModules(this.f502b.get(), this.c.get(), this.d.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<cab.snapp.passenger.data_access_layer.network.b> create(d dVar, Provider<c> provider, Provider<a> provider2, Provider<cab.snapp.passenger.b.b> provider3) {
        return new j(dVar, provider, provider2, provider3);
    }
}
