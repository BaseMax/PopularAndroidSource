package b.b.a;

import android.content.res.Resources;
import java.lang.Thread;

/* compiled from: AppCompatDelegateImpl */
class p implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Thread.UncaughtExceptionHandler f1762a;

    public p(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f1762a = uncaughtExceptionHandler;
    }

    public final boolean a(Throwable th) {
        if (!(th instanceof Resources.NotFoundException)) {
            return false;
        }
        String message = th.getMessage();
        if (message == null) {
            return false;
        }
        if (message.contains("drawable") || message.contains("Drawable")) {
            return true;
        }
        return false;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        if (a(th)) {
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            notFoundException.initCause(th.getCause());
            notFoundException.setStackTrace(th.getStackTrace());
            this.f1762a.uncaughtException(thread, notFoundException);
            return;
        }
        this.f1762a.uncaughtException(thread, th);
    }
}
