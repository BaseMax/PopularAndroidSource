package kotlinx.coroutines.flow.internal;

import i.a.K;
import java.util.concurrent.CancellationException;

/* compiled from: FlowExceptions.kt */
public final class AbortFlowException extends CancellationException {
    public AbortFlowException() {
        super("Flow was aborted, no more elements needed");
    }

    public Throwable fillInStackTrace() {
        if (K.c()) {
            super.fillInStackTrace();
        }
        return this;
    }
}
