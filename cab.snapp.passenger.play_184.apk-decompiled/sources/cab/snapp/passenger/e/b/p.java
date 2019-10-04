package cab.snapp.passenger.e.b;

import android.app.Application;
import cab.snapp.passenger.c.c;
import cab.snapp.passenger.data_access_layer.a.d;
import dagger.a.b;
import javax.inject.Provider;

public final class p implements b<c> {

    /* renamed from: a  reason: collision with root package name */
    private final d f513a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<Application> f514b;
    private final Provider<d> c;

    public p(d dVar, Provider<Application> provider, Provider<d> provider2) {
        this.f513a = dVar;
        this.f514b = provider;
        this.c = provider2;
    }

    public final c get() {
        return (c) dagger.a.d.checkNotNull(this.f513a.provideSnappFavoritesDataManager(this.f514b.get(), this.c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<c> create(d dVar, Provider<Application> provider, Provider<d> provider2) {
        return new p(dVar, provider, provider2);
    }
}
