package kotlinx.coroutines;

import h.f.b.j;
import i.a.A;
import i.a.C1125ra;
import i.a.K;
import java.util.concurrent.CancellationException;

/* compiled from: Exceptions.kt */
public final class JobCancellationException extends CancellationException implements A<JobCancellationException> {
    public final C1125ra job;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public JobCancellationException(String str, Throwable th, C1125ra raVar) {
        super(str);
        j.b(str, "message");
        j.b(raVar, "job");
        this.job = raVar;
        if (th != null) {
            initCause(th);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002c, code lost:
        if (h.f.b.j.a((java.lang.Object) r3.getCause(), (java.lang.Object) getCause()) != false) goto L_0x0031;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r3 == r2) goto L_0x0031
            boolean r0 = r3 instanceof kotlinx.coroutines.JobCancellationException
            if (r0 == 0) goto L_0x002f
            kotlinx.coroutines.JobCancellationException r3 = (kotlinx.coroutines.JobCancellationException) r3
            java.lang.String r0 = r3.getMessage()
            java.lang.String r1 = r2.getMessage()
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x002f
            i.a.ra r0 = r3.job
            i.a.ra r1 = r2.job
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x002f
            java.lang.Throwable r3 = r3.getCause()
            java.lang.Throwable r0 = r2.getCause()
            boolean r3 = h.f.b.j.a((java.lang.Object) r3, (java.lang.Object) r0)
            if (r3 == 0) goto L_0x002f
            goto L_0x0031
        L_0x002f:
            r3 = 0
            goto L_0x0032
        L_0x0031:
            r3 = 1
        L_0x0032:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobCancellationException.equals(java.lang.Object):boolean");
    }

    public Throwable fillInStackTrace() {
        if (!K.c()) {
            return this;
        }
        Throwable fillInStackTrace = super.fillInStackTrace();
        j.a((Object) fillInStackTrace, "super.fillInStackTrace()");
        return fillInStackTrace;
    }

    public int hashCode() {
        String message = getMessage();
        if (message != null) {
            int hashCode = ((message.hashCode() * 31) + this.job.hashCode()) * 31;
            Throwable cause = getCause();
            return hashCode + (cause != null ? cause.hashCode() : 0);
        }
        j.a();
        throw null;
    }

    public String toString() {
        return super.toString() + "; job=" + this.job;
    }

    public JobCancellationException a() {
        if (!K.c()) {
            return null;
        }
        String message = getMessage();
        if (message != null) {
            return new JobCancellationException(message, this, this.job);
        }
        j.a();
        throw null;
    }
}
