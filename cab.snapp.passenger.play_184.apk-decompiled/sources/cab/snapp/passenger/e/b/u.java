package cab.snapp.passenger.e.b;

import cab.snapp.passenger.b.a;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.a.b;
import javax.inject.Provider;

public final class u implements b<g> {

    /* renamed from: a  reason: collision with root package name */
    private final d f523a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f524b;
    private final Provider<e> c;
    private final Provider<a> d;
    private final Provider<d> e;
    private final Provider<cab.snapp.b> f;
    private final Provider<c> g;

    public u(d dVar, Provider<cab.snapp.passenger.c.b> provider, Provider<e> provider2, Provider<a> provider3, Provider<d> provider4, Provider<cab.snapp.b> provider5, Provider<c> provider6) {
        this.f523a = dVar;
        this.f524b = provider;
        this.c = provider2;
        this.d = provider3;
        this.e = provider4;
        this.f = provider5;
        this.g = provider6;
    }

    public final g get() {
        return (g) dagger.a.d.checkNotNull(this.f523a.provideSnappRideDataManager(this.f524b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), this.g.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<g> create(d dVar, Provider<cab.snapp.passenger.c.b> provider, Provider<e> provider2, Provider<a> provider3, Provider<d> provider4, Provider<cab.snapp.b> provider5, Provider<c> provider6) {
        u uVar = new u(dVar, provider, provider2, provider3, provider4, provider5, provider6);
        return uVar;
    }
}
