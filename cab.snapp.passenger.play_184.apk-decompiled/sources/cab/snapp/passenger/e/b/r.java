package cab.snapp.passenger.e.b;

import android.app.Application;
import cab.snapp.passenger.c.e;
import dagger.a.b;
import dagger.a.d;
import javax.inject.Provider;

public final class r implements b<e> {

    /* renamed from: a  reason: collision with root package name */
    private final d f517a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<Application> f518b;

    public r(d dVar, Provider<Application> provider) {
        this.f517a = dVar;
        this.f518b = provider;
    }

    public final e get() {
        return (e) d.checkNotNull(this.f517a.provideSnappLocationDataManager(this.f518b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<e> create(d dVar, Provider<Application> provider) {
        return new r(dVar, provider);
    }
}
