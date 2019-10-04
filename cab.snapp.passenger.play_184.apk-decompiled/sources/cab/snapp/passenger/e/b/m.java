package cab.snapp.passenger.e.b;

import android.app.Application;
import cab.snapp.authenticator.c;
import dagger.a.b;
import dagger.a.d;
import javax.inject.Provider;

public final class m implements b<c> {

    /* renamed from: a  reason: collision with root package name */
    private final d f507a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<Application> f508b;
    private final Provider<Class<?>> c;

    public m(d dVar, Provider<Application> provider, Provider<Class<?>> provider2) {
        this.f507a = dVar;
        this.f508b = provider;
        this.c = provider2;
    }

    public final c get() {
        return (c) d.checkNotNull(this.f507a.provideSnappAccountManager(this.f508b.get(), this.c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<c> create(d dVar, Provider<Application> provider, Provider<Class<?>> provider2) {
        return new m(dVar, provider, provider2);
    }
}
