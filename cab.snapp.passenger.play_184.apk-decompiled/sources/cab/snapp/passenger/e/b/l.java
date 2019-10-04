package cab.snapp.passenger.e.b;

import android.app.Application;
import cab.snapp.b.a;
import dagger.a.b;
import dagger.a.d;
import javax.inject.Provider;

public final class l implements b<a> {

    /* renamed from: a  reason: collision with root package name */
    private final d f505a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<Application> f506b;

    public l(d dVar, Provider<Application> provider) {
        this.f505a = dVar;
        this.f506b = provider;
    }

    public final a get() {
        return (a) d.checkNotNull(this.f505a.provideSharedPreferenceManager(this.f506b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<a> create(d dVar, Provider<Application> provider) {
        return new l(dVar, provider);
    }
}
