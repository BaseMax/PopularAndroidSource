package cab.snapp.passenger.e.b;

import android.app.Application;
import cab.snapp.passenger.f.b.b.c;
import dagger.a.d;
import javax.inject.Provider;

public final class b implements dagger.a.b<c> {

    /* renamed from: a  reason: collision with root package name */
    private final a f489a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<Application> f490b;

    public b(a aVar, Provider<Application> provider) {
        this.f489a = aVar;
        this.f490b = provider;
    }

    public final c get() {
        return (c) d.checkNotNull(this.f489a.provideReportHelper(this.f490b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static dagger.a.b<c> create(a aVar, Provider<Application> provider) {
        return new b(aVar, provider);
    }
}
