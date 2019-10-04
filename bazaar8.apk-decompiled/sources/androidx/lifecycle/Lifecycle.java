package androidx.lifecycle;

import b.r.j;
import java.util.concurrent.atomic.AtomicReference;

public abstract class Lifecycle {

    /* renamed from: a  reason: collision with root package name */
    public AtomicReference<Object> f704a = new AtomicReference<>();

    public enum Event {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    public enum State {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean a(State state) {
            return compareTo(state) >= 0;
        }
    }

    public abstract State a();

    public abstract void a(j jVar);

    public abstract void b(j jVar);
}
