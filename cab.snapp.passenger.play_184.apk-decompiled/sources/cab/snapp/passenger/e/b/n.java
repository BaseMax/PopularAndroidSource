package cab.snapp.passenger.e.b;

import android.app.Application;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.a.b;
import javax.inject.Provider;

public final class n implements b<cab.snapp.passenger.c.b> {

    /* renamed from: a  reason: collision with root package name */
    private final d f509a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<Application> f510b;
    private final Provider<d> c;
    private final Provider<c> d;

    public n(d dVar, Provider<Application> provider, Provider<d> provider2, Provider<c> provider3) {
        this.f509a = dVar;
        this.f510b = provider;
        this.c = provider2;
        this.d = provider3;
    }

    public final cab.snapp.passenger.c.b get() {
        return (cab.snapp.passenger.c.b) dagger.a.d.checkNotNull(this.f509a.provideSnappConfigDataManager(this.f510b.get(), this.c.get(), this.d.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<cab.snapp.passenger.c.b> create(d dVar, Provider<Application> provider, Provider<d> provider2, Provider<c> provider3) {
        return new n(dVar, provider, provider2, provider3);
    }
}
