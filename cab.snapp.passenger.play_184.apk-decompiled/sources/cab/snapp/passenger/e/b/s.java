package cab.snapp.passenger.e.b;

import cab.snapp.snappnetwork.c;
import dagger.a.b;
import dagger.a.d;
import java.util.List;
import javax.inject.Provider;
import okhttp3.Interceptor;

public final class s implements b<c> {

    /* renamed from: a  reason: collision with root package name */
    private final d f519a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<List<Interceptor>> f520b;
    private final Provider<cab.snapp.passenger.b.b> c;

    public s(d dVar, Provider<List<Interceptor>> provider, Provider<cab.snapp.passenger.b.b> provider2) {
        this.f519a = dVar;
        this.f520b = provider;
        this.c = provider2;
    }

    public final c get() {
        return (c) d.checkNotNull(this.f519a.provideSnappNetworkClient(this.f520b.get(), this.c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<c> create(d dVar, Provider<List<Interceptor>> provider, Provider<cab.snapp.passenger.b.b> provider2) {
        return new s(dVar, provider, provider2);
    }
}
