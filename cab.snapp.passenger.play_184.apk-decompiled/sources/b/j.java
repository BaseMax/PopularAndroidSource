package b;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public final class j extends w {

    /* renamed from: a  reason: collision with root package name */
    private w f143a;

    public j(w wVar) {
        if (wVar != null) {
            this.f143a = wVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final w delegate() {
        return this.f143a;
    }

    public final j setDelegate(w wVar) {
        if (wVar != null) {
            this.f143a = wVar;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final w timeout(long j, TimeUnit timeUnit) {
        return this.f143a.timeout(j, timeUnit);
    }

    public final long timeoutNanos() {
        return this.f143a.timeoutNanos();
    }

    public final boolean hasDeadline() {
        return this.f143a.hasDeadline();
    }

    public final long deadlineNanoTime() {
        return this.f143a.deadlineNanoTime();
    }

    public final w deadlineNanoTime(long j) {
        return this.f143a.deadlineNanoTime(j);
    }

    public final w clearTimeout() {
        return this.f143a.clearTimeout();
    }

    public final w clearDeadline() {
        return this.f143a.clearDeadline();
    }

    public final void throwIfReached() throws IOException {
        this.f143a.throwIfReached();
    }
}
