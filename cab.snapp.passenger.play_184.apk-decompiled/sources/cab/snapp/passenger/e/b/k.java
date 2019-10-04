package cab.snapp.passenger.e.b;

import android.content.Context;
import cab.snapp.authenticator.c;
import dagger.a.b;
import dagger.a.d;
import javax.inject.Provider;

public final class k implements b<cab.snapp.passenger.b.b> {

    /* renamed from: a  reason: collision with root package name */
    private final d f503a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<Context> f504b;
    private final Provider<c> c;

    public k(d dVar, Provider<Context> provider, Provider<c> provider2) {
        this.f503a = dVar;
        this.f504b = provider;
        this.c = provider2;
    }

    public final cab.snapp.passenger.b.b get() {
        return (cab.snapp.passenger.b.b) d.checkNotNull(this.f503a.provideNetworkTokenHelper(this.f504b.get(), this.c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<cab.snapp.passenger.b.b> create(d dVar, Provider<Context> provider, Provider<c> provider2) {
        return new k(dVar, provider, provider2);
    }
}
