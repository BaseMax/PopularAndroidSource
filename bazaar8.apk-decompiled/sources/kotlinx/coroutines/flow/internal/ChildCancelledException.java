package kotlinx.coroutines.flow.internal;

import i.a.K;
import java.util.concurrent.CancellationException;

/* compiled from: FlowExceptions.kt */
public final class ChildCancelledException extends CancellationException {
    public ChildCancelledException() {
        super("Child of the scoped flow was cancelled");
    }

    public Throwable fillInStackTrace() {
        if (K.c()) {
            super.fillInStackTrace();
        }
        return this;
    }
}
