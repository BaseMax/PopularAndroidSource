package c.c.a.a.b.a.b;

import android.app.NotificationManager;
import android.content.Context;
import c.c.a.a.b.a.a.a.a;
import h.f.b.j;
import java.lang.ref.WeakReference;

/* compiled from: ActionLogNotificationManager.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static WeakReference<Context> f4544a;

    /* renamed from: b  reason: collision with root package name */
    public static NotificationManager f4545b;

    /* renamed from: c  reason: collision with root package name */
    public static final b f4546c = new b();

    public final void a(Context context, NotificationManager notificationManager) {
        j.b(context, "context");
        j.b(notificationManager, "notificationManager");
        f4544a = new WeakReference<>(context.getApplicationContext());
        f4545b = notificationManager;
    }

    public final void a(a aVar) {
        j.b(aVar, "actionLog");
        WeakReference<Context> weakReference = f4544a;
        if (weakReference == null) {
            return;
        }
        if (weakReference != null) {
            Context context = (Context) weakReference.get();
        } else {
            j.c("applicationContext");
            throw null;
        }
    }
}
