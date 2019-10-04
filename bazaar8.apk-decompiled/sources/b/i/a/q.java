package b.i.a;

import a.a.b.a.a;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: NotificationManagerCompat */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f2569a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static String f2570b;

    /* renamed from: c  reason: collision with root package name */
    public static Set<String> f2571c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    public static final Object f2572d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public static d f2573e;

    /* renamed from: f  reason: collision with root package name */
    public final Context f2574f;

    /* renamed from: g  reason: collision with root package name */
    public final NotificationManager f2575g = ((NotificationManager) this.f2574f.getSystemService("notification"));

    /* compiled from: NotificationManagerCompat */
    private static class a implements e {

        /* renamed from: a  reason: collision with root package name */
        public final String f2576a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2577b;

        /* renamed from: c  reason: collision with root package name */
        public final String f2578c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f2579d;

        public a(String str) {
            this.f2576a = str;
            this.f2577b = 0;
            this.f2578c = null;
            this.f2579d = true;
        }

        public void a(a.a.b.a.a aVar) {
            if (this.f2579d) {
                aVar.a(this.f2576a);
            } else {
                aVar.a(this.f2576a, this.f2577b, this.f2578c);
            }
        }

        public String toString() {
            return "CancelTask[" + "packageName:" + this.f2576a + ", id:" + this.f2577b + ", tag:" + this.f2578c + ", all:" + this.f2579d + "]";
        }

        public a(String str, int i2, String str2) {
            this.f2576a = str;
            this.f2577b = i2;
            this.f2578c = str2;
            this.f2579d = false;
        }
    }

    /* compiled from: NotificationManagerCompat */
    private static class b implements e {

        /* renamed from: a  reason: collision with root package name */
        public final String f2580a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2581b;

        /* renamed from: c  reason: collision with root package name */
        public final String f2582c;

        /* renamed from: d  reason: collision with root package name */
        public final Notification f2583d;

        public b(String str, int i2, String str2, Notification notification) {
            this.f2580a = str;
            this.f2581b = i2;
            this.f2582c = str2;
            this.f2583d = notification;
        }

        public void a(a.a.b.a.a aVar) {
            aVar.a(this.f2580a, this.f2581b, this.f2582c, this.f2583d);
        }

        public String toString() {
            return "NotifyTask[" + "packageName:" + this.f2580a + ", id:" + this.f2581b + ", tag:" + this.f2582c + "]";
        }
    }

    /* compiled from: NotificationManagerCompat */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        public final ComponentName f2584a;

        /* renamed from: b  reason: collision with root package name */
        public final IBinder f2585b;

        public c(ComponentName componentName, IBinder iBinder) {
            this.f2584a = componentName;
            this.f2585b = iBinder;
        }
    }

    /* compiled from: NotificationManagerCompat */
    private static class d implements Handler.Callback, ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        public final Context f2586a;

        /* renamed from: b  reason: collision with root package name */
        public final HandlerThread f2587b;

        /* renamed from: c  reason: collision with root package name */
        public final Handler f2588c;

        /* renamed from: d  reason: collision with root package name */
        public final Map<ComponentName, a> f2589d = new HashMap();

        /* renamed from: e  reason: collision with root package name */
        public Set<String> f2590e = new HashSet();

        /* compiled from: NotificationManagerCompat */
        private static class a {

            /* renamed from: a  reason: collision with root package name */
            public final ComponentName f2591a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f2592b = false;

            /* renamed from: c  reason: collision with root package name */
            public a.a.b.a.a f2593c;

            /* renamed from: d  reason: collision with root package name */
            public ArrayDeque<e> f2594d = new ArrayDeque<>();

            /* renamed from: e  reason: collision with root package name */
            public int f2595e = 0;

            public a(ComponentName componentName) {
                this.f2591a = componentName;
            }
        }

        public d(Context context) {
            this.f2586a = context;
            this.f2587b = new HandlerThread("NotificationManagerCompat");
            this.f2587b.start();
            this.f2588c = new Handler(this.f2587b.getLooper(), this);
        }

        public final void a(e eVar) {
            a();
            for (a next : this.f2589d.values()) {
                next.f2594d.add(eVar);
                c(next);
            }
        }

        public void b(e eVar) {
            this.f2588c.obtainMessage(0, eVar).sendToTarget();
        }

        public final void c(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + aVar.f2591a + ", " + aVar.f2594d.size() + " queued tasks");
            }
            if (!aVar.f2594d.isEmpty()) {
                if (!a(aVar) || aVar.f2593c == null) {
                    d(aVar);
                    return;
                }
                while (true) {
                    e peek = aVar.f2594d.peek();
                    if (peek == null) {
                        break;
                    }
                    try {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Sending task " + peek);
                        }
                        peek.a(aVar.f2593c);
                        aVar.f2594d.remove();
                    } catch (DeadObjectException unused) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Remote service has died: " + aVar.f2591a);
                        }
                    } catch (RemoteException e2) {
                        Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f2591a, e2);
                    }
                }
                if (!aVar.f2594d.isEmpty()) {
                    d(aVar);
                }
            }
        }

        public final void d(a aVar) {
            if (!this.f2588c.hasMessages(3, aVar.f2591a)) {
                aVar.f2595e++;
                int i2 = aVar.f2595e;
                if (i2 > 6) {
                    Log.w("NotifManCompat", "Giving up on delivering " + aVar.f2594d.size() + " tasks to " + aVar.f2591a + " after " + aVar.f2595e + " retries");
                    aVar.f2594d.clear();
                    return;
                }
                int i3 = (1 << (i2 - 1)) * AnswersRetryFilesSender.BACKOFF_MS;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i3 + " ms");
                }
                this.f2588c.sendMessageDelayed(this.f2588c.obtainMessage(3, aVar.f2591a), (long) i3);
            }
        }

        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                a((e) message.obj);
                return true;
            } else if (i2 == 1) {
                c cVar = (c) message.obj;
                a(cVar.f2584a, cVar.f2585b);
                return true;
            } else if (i2 == 2) {
                b((ComponentName) message.obj);
                return true;
            } else if (i2 != 3) {
                return false;
            } else {
                a((ComponentName) message.obj);
                return true;
            }
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f2588c.obtainMessage(1, new c(componentName, iBinder)).sendToTarget();
        }

        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f2588c.obtainMessage(2, componentName).sendToTarget();
        }

        public final void b(ComponentName componentName) {
            a aVar = this.f2589d.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        public final void b(a aVar) {
            if (aVar.f2592b) {
                this.f2586a.unbindService(this);
                aVar.f2592b = false;
            }
            aVar.f2593c = null;
        }

        public final void a(ComponentName componentName, IBinder iBinder) {
            a aVar = this.f2589d.get(componentName);
            if (aVar != null) {
                aVar.f2593c = a.C0000a.a(iBinder);
                aVar.f2595e = 0;
                c(aVar);
            }
        }

        public final void a(ComponentName componentName) {
            a aVar = this.f2589d.get(componentName);
            if (aVar != null) {
                c(aVar);
            }
        }

        public final void a() {
            Set<String> b2 = q.b(this.f2586a);
            if (!b2.equals(this.f2590e)) {
                this.f2590e = b2;
                List<ResolveInfo> queryIntentServices = this.f2586a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
                HashSet<ComponentName> hashSet = new HashSet<>();
                for (ResolveInfo next : queryIntentServices) {
                    if (b2.contains(next.serviceInfo.packageName)) {
                        ComponentName componentName = new ComponentName(next.serviceInfo.packageName, next.serviceInfo.name);
                        if (next.serviceInfo.permission != null) {
                            Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                        } else {
                            hashSet.add(componentName);
                        }
                    }
                }
                for (ComponentName componentName2 : hashSet) {
                    if (!this.f2589d.containsKey(componentName2)) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                        }
                        this.f2589d.put(componentName2, new a(componentName2));
                    }
                }
                Iterator<Map.Entry<ComponentName, a>> it = this.f2589d.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry next2 = it.next();
                    if (!hashSet.contains(next2.getKey())) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Removing listener record for " + next2.getKey());
                        }
                        b((a) next2.getValue());
                        it.remove();
                    }
                }
            }
        }

        public final boolean a(a aVar) {
            if (aVar.f2592b) {
                return true;
            }
            aVar.f2592b = this.f2586a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f2591a), this, 33);
            if (aVar.f2592b) {
                aVar.f2595e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f2591a);
                this.f2586a.unbindService(this);
            }
            return aVar.f2592b;
        }
    }

    /* compiled from: NotificationManagerCompat */
    private interface e {
        void a(a.a.b.a.a aVar);
    }

    public q(Context context) {
        this.f2574f = context;
    }

    public static q a(Context context) {
        return new q(context);
    }

    public static Set<String> b(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f2569a) {
            if (string != null) {
                if (!string.equals(f2570b)) {
                    String[] split = string.split(":", -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String unflattenFromString : split) {
                        ComponentName unflattenFromString2 = ComponentName.unflattenFromString(unflattenFromString);
                        if (unflattenFromString2 != null) {
                            hashSet.add(unflattenFromString2.getPackageName());
                        }
                    }
                    f2571c = hashSet;
                    f2570b = string;
                }
            }
            set = f2571c;
        }
        return set;
    }

    public void a(int i2) {
        a((String) null, i2);
    }

    public void a(String str, int i2) {
        this.f2575g.cancel(str, i2);
        if (Build.VERSION.SDK_INT <= 19) {
            a((e) new a(this.f2574f.getPackageName(), i2, str));
        }
    }

    public void a() {
        this.f2575g.cancelAll();
        if (Build.VERSION.SDK_INT <= 19) {
            a((e) new a(this.f2574f.getPackageName()));
        }
    }

    public void a(int i2, Notification notification) {
        a(null, i2, notification);
    }

    public void a(String str, int i2, Notification notification) {
        if (a(notification)) {
            a((e) new b(this.f2574f.getPackageName(), i2, str, notification));
            this.f2575g.cancel(str, i2);
            return;
        }
        this.f2575g.notify(str, i2, notification);
    }

    public static boolean a(Notification notification) {
        Bundle a2 = n.a(notification);
        return a2 != null && a2.getBoolean("android.support.useSideChannel");
    }

    public final void a(e eVar) {
        synchronized (f2572d) {
            if (f2573e == null) {
                f2573e = new d(this.f2574f.getApplicationContext());
            }
            f2573e.b(eVar);
        }
    }
}
