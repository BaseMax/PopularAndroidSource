package d.a;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import com.crashlytics.android.answers.SessionEvent;
import d.b.h;

/* compiled from: AndroidInjection */
public final class a {
    public static void a(Activity activity) {
        h.a(activity, SessionEvent.ACTIVITY_KEY);
        Application application = activity.getApplication();
        if (application instanceof h) {
            b<Activity> c2 = ((h) application).c();
            h.a(c2, "%s.activityInjector() returned null", application.getClass());
            c2.a(activity);
            return;
        }
        throw new RuntimeException(String.format("%s does not implement %s", new Object[]{application.getClass().getCanonicalName(), h.class.getCanonicalName()}));
    }

    public static void a(Service service) {
        h.a(service, "service");
        Application application = service.getApplication();
        if (application instanceof l) {
            b<Service> b2 = ((l) application).b();
            h.a(b2, "%s.serviceInjector() returned null", application.getClass());
            b2.a(service);
            return;
        }
        throw new RuntimeException(String.format("%s does not implement %s", new Object[]{application.getClass().getCanonicalName(), l.class.getCanonicalName()}));
    }

    public static void a(BroadcastReceiver broadcastReceiver, Context context) {
        h.a(broadcastReceiver, "broadcastReceiver");
        h.a(context, "context");
        Application application = (Application) context.getApplicationContext();
        if (application instanceof i) {
            b<BroadcastReceiver> a2 = ((i) application).a();
            h.a(a2, "%s.broadcastReceiverInjector() returned null", application.getClass());
            a2.a(broadcastReceiver);
            return;
        }
        throw new RuntimeException(String.format("%s does not implement %s", new Object[]{application.getClass().getCanonicalName(), i.class.getCanonicalName()}));
    }
}
