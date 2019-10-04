package b.r;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: b.r.h  reason: case insensitive filesystem */
/* compiled from: LifecycleDispatcher */
public class C0302h {

    /* renamed from: a  reason: collision with root package name */
    public static AtomicBoolean f3164a = new AtomicBoolean(false);

    /* renamed from: b.r.h$a */
    /* compiled from: LifecycleDispatcher */
    static class a extends C0297c {
        public void onActivityCreated(Activity activity, Bundle bundle) {
            A.b(activity);
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    public static void a(Context context) {
        if (!f3164a.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new a());
        }
    }
}
