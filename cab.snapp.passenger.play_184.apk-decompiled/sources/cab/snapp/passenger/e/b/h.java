package cab.snapp.passenger.e.b;

import android.content.Context;
import cab.snapp.passenger.b.a;
import dagger.a.b;
import dagger.a.d;
import javax.inject.Provider;

public final class h implements b<cab.snapp.b> {

    /* renamed from: a  reason: collision with root package name */
    private final d f497a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<Context> f498b;
    private final Provider<a> c;

    public h(d dVar, Provider<Context> provider, Provider<a> provider2) {
        this.f497a = dVar;
        this.f498b = provider;
        this.c = provider2;
    }

    public final cab.snapp.b get() {
        return (cab.snapp.b) d.checkNotNull(this.f497a.provideEventManager(this.f498b.get(), this.c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<cab.snapp.b> create(d dVar, Provider<Context> provider, Provider<a> provider2) {
        return new h(dVar, provider, provider2);
    }
}
