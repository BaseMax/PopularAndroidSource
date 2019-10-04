package cab.snapp.passenger.e.b;

import cab.snapp.passenger.c.h;
import dagger.a.b;
import dagger.a.d;

public final class v implements b<h> {

    /* renamed from: a  reason: collision with root package name */
    private final d f525a;

    public v(d dVar) {
        this.f525a = dVar;
    }

    public final h get() {
        return (h) d.checkNotNull(this.f525a.provideSnappSearchDataManager(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<h> create(d dVar) {
        return new v(dVar);
    }
}
