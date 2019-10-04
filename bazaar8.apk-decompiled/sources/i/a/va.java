package i.a;

import h.f.b.j;
import java.util.concurrent.CancellationException;

/* compiled from: Job.kt */
public final /* synthetic */ class va {
    public static final C1128u a(C1125ra raVar) {
        return new ta(raVar);
    }

    public static /* synthetic */ C1128u a(C1125ra raVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            raVar = null;
        }
        return ua.a(raVar);
    }

    public static /* synthetic */ void a(C1125ra raVar, CancellationException cancellationException, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            cancellationException = null;
        }
        ua.a(raVar, cancellationException);
    }

    public static final void a(C1125ra raVar, CancellationException cancellationException) {
        j.b(raVar, "$this$cancelChildren");
        for (C1125ra a2 : raVar.getChildren()) {
            a2.a(cancellationException);
        }
    }
}
