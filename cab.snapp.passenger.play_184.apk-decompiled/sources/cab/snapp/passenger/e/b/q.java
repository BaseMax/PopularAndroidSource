package cab.snapp.passenger.e.b;

import cab.snapp.passenger.c.d;
import dagger.a.b;
import javax.inject.Provider;

public final class q implements b<d> {

    /* renamed from: a  reason: collision with root package name */
    private final d f515a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.data_access_layer.a.d> f516b;

    public q(d dVar, Provider<cab.snapp.passenger.data_access_layer.a.d> provider) {
        this.f515a = dVar;
        this.f516b = provider;
    }

    public final d get() {
        return (d) dagger.a.d.checkNotNull(this.f515a.provideSnappGroupDataManager(this.f516b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<d> create(d dVar, Provider<cab.snapp.passenger.data_access_layer.a.d> provider) {
        return new q(dVar, provider);
    }
}
