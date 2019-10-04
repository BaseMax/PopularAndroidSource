package com.webengage.sdk.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.webengage.sdk.android.actions.render.InAppNotificationData;
import com.webengage.sdk.android.actions.render.PushNotificationData;
import com.webengage.sdk.android.callbacks.CustomPushRender;
import com.webengage.sdk.android.callbacks.CustomPushRerender;
import com.webengage.sdk.android.callbacks.InAppNotificationCallbacks;
import com.webengage.sdk.android.callbacks.LifeCycleCallbacks;
import com.webengage.sdk.android.callbacks.PushNotificationCallbacks;
import com.webengage.sdk.android.callbacks.StateChangeCallbacks;
import java.util.ArrayList;
import java.util.List;

public class i extends StateChangeCallbacks implements CustomPushRender, CustomPushRerender, InAppNotificationCallbacks, LifeCycleCallbacks, PushNotificationCallbacks {

    /* renamed from: b  reason: collision with root package name */
    static volatile i f5532b;
    static List<LifeCycleCallbacks> c;
    static List<PushNotificationCallbacks> d;
    static CustomPushRender e;
    static CustomPushRerender f;
    static List<InAppNotificationCallbacks> g;
    static List<StateChangeCallbacks> h;

    /* renamed from: a  reason: collision with root package name */
    Context f5533a = null;
    Handler i = null;

    private i(Context context) {
        this.f5533a = context.getApplicationContext();
        this.i = new Handler(Looper.getMainLooper());
    }

    public static i a(Context context) {
        if (f5532b == null) {
            synchronized (i.class) {
                if (f5532b == null) {
                    f5532b = new i(context);
                }
            }
        }
        return f5532b;
    }

    protected static void a(CustomPushRender customPushRender) {
        if (customPushRender != null) {
            e = customPushRender;
        }
    }

    protected static void a(CustomPushRerender customPushRerender) {
        if (customPushRerender != null) {
            f = customPushRerender;
        }
    }

    protected static void a(InAppNotificationCallbacks inAppNotificationCallbacks) {
        if (inAppNotificationCallbacks != null) {
            if (g == null) {
                g = new ArrayList();
            }
            if (!g.contains(inAppNotificationCallbacks)) {
                g.add(inAppNotificationCallbacks);
            }
        }
    }

    protected static void a(LifeCycleCallbacks lifeCycleCallbacks) {
        if (lifeCycleCallbacks != null) {
            if (c == null) {
                c = new ArrayList();
            }
            if (!c.contains(lifeCycleCallbacks)) {
                c.add(lifeCycleCallbacks);
            }
        }
    }

    protected static void a(PushNotificationCallbacks pushNotificationCallbacks) {
        if (pushNotificationCallbacks != null) {
            if (d == null) {
                d = new ArrayList();
            }
            if (!d.contains(pushNotificationCallbacks)) {
                d.add(pushNotificationCallbacks);
            }
        }
    }

    protected static void a(StateChangeCallbacks stateChangeCallbacks) {
        List<StateChangeCallbacks> list = h;
        if (list != null) {
            list.remove(stateChangeCallbacks);
        }
    }

    protected static void a(StateChangeCallbacks stateChangeCallbacks, Analytics analytics, Context context) {
        if (stateChangeCallbacks != null) {
            if (h == null) {
                h = new ArrayList();
            }
            if (!h.contains(stateChangeCallbacks)) {
                h.add(stateChangeCallbacks);
                if (analytics != null && (analytics instanceof d) && context != null) {
                    String i2 = analytics.c().i();
                    if (i2.isEmpty()) {
                        i2 = null;
                    }
                    stateChangeCallbacks.onAnonymousIdChanged(context, i2);
                }
            }
        }
    }

    protected static void b(InAppNotificationCallbacks inAppNotificationCallbacks) {
        List<InAppNotificationCallbacks> list = g;
        if (list != null) {
            list.remove(inAppNotificationCallbacks);
        }
    }

    protected static void b(LifeCycleCallbacks lifeCycleCallbacks) {
        List<LifeCycleCallbacks> list = c;
        if (list != null) {
            list.remove(lifeCycleCallbacks);
        }
    }

    protected static void b(PushNotificationCallbacks pushNotificationCallbacks) {
        List<PushNotificationCallbacks> list = d;
        if (list != null) {
            list.remove(pushNotificationCallbacks);
        }
    }

    public boolean a() {
        return e != null;
    }

    public void onAnonymousIdChanged(final Context context, final String str) {
        List<StateChangeCallbacks> list = h;
        if (list != null) {
            for (final StateChangeCallbacks next : list) {
                if (next != null) {
                    this.i.post(new Runnable() {
                        public void run() {
                            next.onAnonymousIdChanged(context, str);
                        }
                    });
                }
            }
        }
    }

    public void onAppInstalled(Context context, final Intent intent) {
        if (c != null) {
            for (int i2 = 0; i2 < c.size(); i2++) {
                final LifeCycleCallbacks lifeCycleCallbacks = c.get(i2);
                this.i.post(new Runnable() {
                    public void run() {
                        LifeCycleCallbacks lifeCycleCallbacks = lifeCycleCallbacks;
                        if (lifeCycleCallbacks != null) {
                            lifeCycleCallbacks.onAppInstalled(i.this.f5533a, intent);
                        }
                    }
                });
            }
        }
    }

    public void onAppUpgraded(Context context, final int i2, final int i3) {
        if (c != null) {
            for (int i4 = 0; i4 < c.size(); i4++) {
                final LifeCycleCallbacks lifeCycleCallbacks = c.get(i4);
                this.i.post(new Runnable() {
                    public void run() {
                        LifeCycleCallbacks lifeCycleCallbacks = lifeCycleCallbacks;
                        if (lifeCycleCallbacks != null) {
                            lifeCycleCallbacks.onAppUpgraded(i.this.f5533a, i2, i3);
                        }
                    }
                });
            }
        }
    }

    public void onGCMMessageReceived(Context context, final Intent intent) {
        if (c != null) {
            for (int i2 = 0; i2 < c.size(); i2++) {
                final LifeCycleCallbacks lifeCycleCallbacks = c.get(i2);
                this.i.post(new Runnable() {
                    public void run() {
                        LifeCycleCallbacks lifeCycleCallbacks = lifeCycleCallbacks;
                        if (lifeCycleCallbacks != null) {
                            lifeCycleCallbacks.onGCMMessageReceived(i.this.f5533a, intent);
                        }
                    }
                });
            }
        }
    }

    public void onGCMRegistered(Context context, final String str) {
        if (c != null) {
            for (int i2 = 0; i2 < c.size(); i2++) {
                final LifeCycleCallbacks lifeCycleCallbacks = c.get(i2);
                this.i.post(new Runnable() {
                    public void run() {
                        LifeCycleCallbacks lifeCycleCallbacks = lifeCycleCallbacks;
                        if (lifeCycleCallbacks != null) {
                            lifeCycleCallbacks.onGCMRegistered(i.this.f5533a, str);
                        }
                    }
                });
            }
        }
    }

    public boolean onInAppNotificationClicked(Context context, InAppNotificationData inAppNotificationData, String str) {
        if (g == null) {
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < g.size(); i2++) {
            InAppNotificationCallbacks inAppNotificationCallbacks = g.get(i2);
            if (inAppNotificationCallbacks != null) {
                z |= inAppNotificationCallbacks.onInAppNotificationClicked(this.f5533a, inAppNotificationData, str);
            }
        }
        return z;
    }

    public void onInAppNotificationDismissed(Context context, final InAppNotificationData inAppNotificationData) {
        if (g != null) {
            for (int i2 = 0; i2 < g.size(); i2++) {
                final InAppNotificationCallbacks inAppNotificationCallbacks = g.get(i2);
                this.i.post(new Runnable() {
                    public void run() {
                        InAppNotificationCallbacks inAppNotificationCallbacks = inAppNotificationCallbacks;
                        if (inAppNotificationCallbacks != null) {
                            inAppNotificationCallbacks.onInAppNotificationDismissed(i.this.f5533a, inAppNotificationData);
                        }
                    }
                });
            }
        }
    }

    public InAppNotificationData onInAppNotificationPrepared(Context context, InAppNotificationData inAppNotificationData) {
        if (g != null) {
            for (int i2 = 0; i2 < g.size(); i2++) {
                InAppNotificationCallbacks inAppNotificationCallbacks = g.get(i2);
                if (inAppNotificationCallbacks != null) {
                    inAppNotificationData = inAppNotificationCallbacks.onInAppNotificationPrepared(this.f5533a, inAppNotificationData);
                }
            }
        }
        return inAppNotificationData;
    }

    public void onInAppNotificationShown(Context context, final InAppNotificationData inAppNotificationData) {
        if (g != null) {
            for (int i2 = 0; i2 < g.size(); i2++) {
                final InAppNotificationCallbacks inAppNotificationCallbacks = g.get(i2);
                this.i.post(new Runnable() {
                    public void run() {
                        InAppNotificationCallbacks inAppNotificationCallbacks = inAppNotificationCallbacks;
                        if (inAppNotificationCallbacks != null) {
                            inAppNotificationCallbacks.onInAppNotificationShown(i.this.f5533a, inAppNotificationData);
                        }
                    }
                });
            }
        }
    }

    public boolean onPushNotificationActionClicked(Context context, PushNotificationData pushNotificationData, String str) {
        if (d == null) {
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < d.size(); i2++) {
            PushNotificationCallbacks pushNotificationCallbacks = d.get(i2);
            if (pushNotificationCallbacks != null) {
                z |= pushNotificationCallbacks.onPushNotificationActionClicked(this.f5533a, pushNotificationData, str);
            }
        }
        return z;
    }

    public boolean onPushNotificationClicked(Context context, PushNotificationData pushNotificationData) {
        if (d == null) {
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < d.size(); i2++) {
            PushNotificationCallbacks pushNotificationCallbacks = d.get(i2);
            if (pushNotificationCallbacks != null) {
                z |= pushNotificationCallbacks.onPushNotificationClicked(this.f5533a, pushNotificationData);
            }
        }
        return z;
    }

    public void onPushNotificationDismissed(Context context, final PushNotificationData pushNotificationData) {
        if (d != null) {
            for (int i2 = 0; i2 < d.size(); i2++) {
                final PushNotificationCallbacks pushNotificationCallbacks = d.get(i2);
                this.i.post(new Runnable() {
                    public void run() {
                        PushNotificationCallbacks pushNotificationCallbacks = pushNotificationCallbacks;
                        if (pushNotificationCallbacks != null) {
                            pushNotificationCallbacks.onPushNotificationDismissed(i.this.f5533a, pushNotificationData);
                        }
                    }
                });
            }
        }
    }

    public PushNotificationData onPushNotificationReceived(Context context, PushNotificationData pushNotificationData) {
        if (d != null) {
            for (int i2 = 0; i2 < d.size(); i2++) {
                PushNotificationCallbacks pushNotificationCallbacks = d.get(i2);
                if (pushNotificationCallbacks != null) {
                    pushNotificationData = pushNotificationCallbacks.onPushNotificationReceived(this.f5533a, pushNotificationData);
                }
            }
        }
        return pushNotificationData;
    }

    public void onPushNotificationShown(Context context, final PushNotificationData pushNotificationData) {
        if (d != null) {
            for (int i2 = 0; i2 < d.size(); i2++) {
                final PushNotificationCallbacks pushNotificationCallbacks = d.get(i2);
                this.i.post(new Runnable() {
                    public void run() {
                        PushNotificationCallbacks pushNotificationCallbacks = pushNotificationCallbacks;
                        if (pushNotificationCallbacks != null) {
                            pushNotificationCallbacks.onPushNotificationShown(i.this.f5533a, pushNotificationData);
                        }
                    }
                });
            }
        }
    }

    public boolean onRender(Context context, PushNotificationData pushNotificationData) {
        CustomPushRender customPushRender = e;
        if (customPushRender != null) {
            return customPushRender.onRender(context, pushNotificationData);
        }
        return false;
    }

    public boolean onRerender(Context context, PushNotificationData pushNotificationData, Bundle bundle) {
        CustomPushRerender customPushRerender = f;
        if (customPushRerender != null) {
            return customPushRerender.onRerender(context, pushNotificationData, bundle);
        }
        return false;
    }
}
