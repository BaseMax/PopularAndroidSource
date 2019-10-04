package c.b.a.c.b.c;

import android.util.Log;
import c.b.a.c.b.c.b;

/* compiled from: GlideExecutor */
class d implements b.C0055b {
    public void a(Throwable th) {
        if (th != null && Log.isLoggable("GlideExecutor", 6)) {
            Log.e("GlideExecutor", "Request threw uncaught throwable", th);
        }
    }
}
