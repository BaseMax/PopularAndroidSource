package b.i.a;

import android.util.Log;

/* compiled from: ActivityRecreator */
class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f2509a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f2510b;

    public g(Object obj, Object obj2) {
        this.f2509a = obj;
        this.f2510b = obj2;
    }

    public void run() {
        try {
            if (h.f2514d != null) {
                h.f2514d.invoke(this.f2509a, new Object[]{this.f2510b, false, "AppCompat recreation"});
                return;
            }
            h.f2515e.invoke(this.f2509a, new Object[]{this.f2510b, false});
        } catch (RuntimeException e2) {
            if (e2.getClass() == RuntimeException.class && e2.getMessage() != null && e2.getMessage().startsWith("Unable to stop")) {
                throw e2;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
        }
    }
}
