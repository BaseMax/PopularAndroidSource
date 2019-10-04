package cab.snapp.passenger.e.b;

import cab.snapp.passenger.c.f;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.a.b;
import javax.inject.Provider;

public final class t implements b<f> {

    /* renamed from: a  reason: collision with root package name */
    private final d f521a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f522b;
    private final Provider<d> c;
    private final Provider<c> d;

    public t(d dVar, Provider<cab.snapp.passenger.c.b> provider, Provider<d> provider2, Provider<c> provider3) {
        this.f521a = dVar;
        this.f522b = provider;
        this.c = provider2;
        this.d = provider3;
    }

    public final f get() {
        return (f) dagger.a.d.checkNotNull(this.f521a.provideSnappProfileDataManager(this.f522b.get(), this.c.get(), this.d.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<f> create(d dVar, Provider<cab.snapp.passenger.c.b> provider, Provider<d> provider2, Provider<c> provider3) {
        return new t(dVar, provider, provider2, provider3);
    }
}
