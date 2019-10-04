package cab.snapp.passenger.e.b;

import cab.snapp.passenger.b.a;
import cab.snapp.snappnetwork.c;
import dagger.a.b;
import dagger.a.d;
import javax.inject.Provider;

public final class g implements b<a> {

    /* renamed from: a  reason: collision with root package name */
    private final d f495a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f496b;
    private final Provider<cab.snapp.passenger.data_access_layer.network.b> c;
    private final Provider<c> d;

    public g(d dVar, Provider<cab.snapp.passenger.c.b> provider, Provider<cab.snapp.passenger.data_access_layer.network.b> provider2, Provider<c> provider3) {
        this.f495a = dVar;
        this.f496b = provider;
        this.c = provider2;
        this.d = provider3;
    }

    public final a get() {
        return (a) d.checkNotNull(this.f495a.provideEventManagerConfig(this.f496b.get(), this.c.get(), this.d.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<a> create(d dVar, Provider<cab.snapp.passenger.c.b> provider, Provider<cab.snapp.passenger.data_access_layer.network.b> provider2, Provider<c> provider3) {
        return new g(dVar, provider, provider2, provider3);
    }
}
