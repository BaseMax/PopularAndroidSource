package cab.snapp.passenger.e.b;

import cab.snapp.passenger.f.b.b.c;
import dagger.a.b;
import dagger.a.d;
import java.util.List;
import javax.inject.Provider;
import okhttp3.Interceptor;

public final class i implements b<List<Interceptor>> {

    /* renamed from: a  reason: collision with root package name */
    private final d f499a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f500b;
    private final Provider<cab.snapp.authenticator.c> c;

    public i(d dVar, Provider<c> provider, Provider<cab.snapp.authenticator.c> provider2) {
        this.f499a = dVar;
        this.f500b = provider;
        this.c = provider2;
    }

    public final List<Interceptor> get() {
        return (List) d.checkNotNull(this.f499a.provideInterceptors(this.f500b.get(), this.c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<List<Interceptor>> create(d dVar, Provider<c> provider, Provider<cab.snapp.authenticator.c> provider2) {
        return new i(dVar, provider, provider2);
    }
}
