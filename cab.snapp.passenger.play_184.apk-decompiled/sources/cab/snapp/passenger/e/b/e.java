package cab.snapp.passenger.e.b;

import android.app.Application;
import android.content.Context;
import dagger.a.b;
import dagger.a.d;
import javax.inject.Provider;

public final class e implements b<Context> {

    /* renamed from: a  reason: collision with root package name */
    private final d f492a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<Application> f493b;

    public e(d dVar, Provider<Application> provider) {
        this.f492a = dVar;
        this.f493b = provider;
    }

    public final Context get() {
        return (Context) d.checkNotNull(this.f492a.provideContext(this.f493b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<Context> create(d dVar, Provider<Application> provider) {
        return new e(dVar, provider);
    }
}
