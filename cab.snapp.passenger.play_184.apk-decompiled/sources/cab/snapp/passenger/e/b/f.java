package cab.snapp.passenger.e.b;

import dagger.a.b;
import dagger.a.d;

public final class f implements b<cab.snapp.passenger.f.b> {

    /* renamed from: a  reason: collision with root package name */
    private final d f494a;

    public f(d dVar) {
        this.f494a = dVar;
    }

    public final cab.snapp.passenger.f.b get() {
        return (cab.snapp.passenger.f.b) d.checkNotNull(this.f494a.provideDeepLinkHelper(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<cab.snapp.passenger.f.b> create(d dVar) {
        return new f(dVar);
    }
}
