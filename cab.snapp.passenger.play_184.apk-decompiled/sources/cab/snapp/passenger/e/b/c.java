package cab.snapp.passenger.e.b;

import cab.snapp.passenger.f.o;
import dagger.a.b;
import dagger.a.d;

public final class c implements b<o> {

    /* renamed from: a  reason: collision with root package name */
    private final a f491a;

    public c(a aVar) {
        this.f491a = aVar;
    }

    public final o get() {
        return (o) d.checkNotNull(this.f491a.provideShowcaseHelper(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static b<o> create(a aVar) {
        return new c(aVar);
    }
}
