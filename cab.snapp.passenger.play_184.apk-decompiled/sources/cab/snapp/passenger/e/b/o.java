package cab.snapp.passenger.e.b;

import cab.snapp.authenticator.c;
import cab.snapp.passenger.data_access_layer.a.d;
import dagger.a.b;
import javax.inject.Provider;

public final class o implements b<d> {

    /* renamed from: a  reason: collision with root package name */
    private final d f511a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f512b;
    private final Provider<cab.snapp.passenger.f.b.b.c> c;
    private final Provider<cab.snapp.passenger.data_access_layer.network.b> d;

    public o(d dVar, Provider<c> provider, Provider<cab.snapp.passenger.f.b.b.c> provider2, Provider<cab.snapp.passenger.data_access_layer.network.b> provider3) {
        this.f511a = dVar;
        this.f512b = provider;
        this.c = provider2;
        this.d = provider3;
    }

    public final d get() {
        return (d) dagger.a.d.checkNotNull(this.f511a.provideSnappDataLayer(this.f512b.get(), this.c.get(), this.d.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<d> create(d dVar, Provider<c> provider, Provider<cab.snapp.passenger.f.b.b.c> provider2, Provider<cab.snapp.passenger.data_access_layer.network.b> provider3) {
        return new o(dVar, provider, provider2, provider3);
    }
}
