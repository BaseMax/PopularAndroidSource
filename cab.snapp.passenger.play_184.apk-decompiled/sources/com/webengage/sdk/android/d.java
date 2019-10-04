package com.webengage.sdk.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.adjust.sdk.Constants;
import com.webengage.sdk.android.Analytics;
import com.webengage.sdk.android.actions.database.DataHolder;
import com.webengage.sdk.android.actions.database.f;
import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

class d extends Analytics {

    /* renamed from: a  reason: collision with root package name */
    Context f5527a = null;

    /* renamed from: b  reason: collision with root package name */
    f f5528b = null;
    WeakReference<Activity> c = null;
    aa d = null;
    z e = null;
    AtomicInteger f = null;

    d(Context context, f fVar, aa aaVar, z zVar) {
        this.f5527a = context.getApplicationContext();
        this.f5528b = fVar;
        this.e = zVar;
        this.d = aaVar;
        this.f = new AtomicInteger(0);
    }

    private boolean a(String str) {
        String concat;
        if (k.c(str)) {
            concat = "Event Name is Invalid";
        } else if (!str.startsWith("we_")) {
            return true;
        } else {
            concat = "Found prefix \"we_\" in event name : ".concat(String.valueOf(str));
        }
        Logger.e("WebEngage", concat);
        return false;
    }

    /* access modifiers changed from: protected */
    public aa a() {
        return this.d;
    }

    /* access modifiers changed from: protected */
    public void a(Object obj) {
        WebEngage.startService(n.a(af.EVENT, obj, this.f5527a), this.f5527a);
    }

    /* access modifiers changed from: protected */
    public z b() {
        return this.e;
    }

    /* access modifiers changed from: protected */
    public void b(Object obj) {
        if (obj != null) {
            Logger.e("WebEngage", "Some error occurred : " + obj.toString());
        }
        WebEngage.startService(n.a(af.EXCEPTION, obj, this.f5527a), this.f5527a);
    }

    /* access modifiers changed from: protected */
    public f c() {
        return this.f5528b;
    }

    public WeakReference<Activity> getActivity() {
        return this.c;
    }

    public void installed(Intent intent) {
        if (intent == null) {
            try {
                Logger.e("WebEngage", "Intent is Null");
            } catch (Exception e2) {
                b(e2);
            }
        } else if (intent.hasExtra(Constants.REFERRER)) {
            this.f5528b.a(Constants.REFERRER, intent.getStringExtra(Constants.REFERRER));
        } else {
            this.f5528b.a(Constants.REFERRER, "");
        }
    }

    public void screenNavigated(String str) {
        screenNavigated(str, null);
    }

    public void screenNavigated(String str, Map<String, ? extends Object> map) {
        try {
            Logger.d("WebEngage", "Screen navigated: " + str + " with data: " + map);
            HashMap hashMap = new HashMap();
            hashMap.put("screen_name", str);
            WebEngage.startService(n.a(af.INTERNAL_EVENT, k.a("we_wk_screen_navigated", hashMap, map, null, this.f5527a), this.f5527a), this.f5527a);
        } catch (Exception e2) {
            b(e2);
        }
    }

    public void setScreenData(Map<String, ? extends Object> map) {
        Map map2;
        try {
            Logger.d("WebEngage", "Set screen data: ".concat(String.valueOf(map)));
            ArrayList arrayList = new ArrayList();
            arrayList.add(f.PAGE.toString());
            arrayList.add("custom");
            HashMap hashMap = new HashMap();
            try {
                map2 = (Map) DataType.cloneExternal(map);
            } catch (Exception unused) {
                map2 = null;
            }
            hashMap.put("data", map2);
            hashMap.put("path", arrayList);
            WebEngage.startService(n.a(af.DATA, hashMap, this.f5527a), this.f5527a);
        } catch (Exception e2) {
            b(e2);
        }
    }

    public void start(Activity activity) {
        try {
            this.e.a();
            int incrementAndGet = this.f.incrementAndGet();
            DataHolder.get().b(true);
            this.c = new WeakReference<>(activity);
            if (activity != null) {
                Logger.d("WebEngage", " Activity start: " + activity.getClass().getName());
                HashMap hashMap = new HashMap();
                if (activity.getClass() != null) {
                    hashMap.put("screen_path", activity.getClass().getName());
                }
                if (activity.getTitle() != null) {
                    hashMap.put("screen_title", activity.getTitle().toString());
                }
                HashMap hashMap2 = new HashMap();
                hashMap2.put("activity_count", Integer.valueOf(incrementAndGet));
                WebEngage.startService(n.a(af.INTERNAL_EVENT, k.a("we_wk_activity_start", hashMap, null, hashMap2, this.f5527a), this.f5527a), this.f5527a);
                if (WebEngage.get().getWebEngageConfig().getEveryActivityIsScreen()) {
                    screenNavigated(activity.getClass().getName());
                }
            }
        } catch (Exception e2) {
            b(e2);
        }
    }

    public void stop(Activity activity) {
        if (activity != null) {
            try {
                Logger.d("WebEngage", " Activity stop: " + activity.getClass().getName());
            } catch (Exception e2) {
                b(e2);
                return;
            }
        }
        int decrementAndGet = this.f.decrementAndGet();
        HashMap hashMap = new HashMap();
        hashMap.put("activity_count", Integer.valueOf(decrementAndGet));
        if (decrementAndGet == 0) {
            DataHolder.get().b(false);
            this.e.a(System.currentTimeMillis() + 15000);
        }
        WebEngage.startService(n.a(af.INTERNAL_EVENT, k.a("we_wk_activity_stop", null, null, hashMap, this.f5527a), this.f5527a), this.f5527a);
    }

    public void track(String str) {
        track(str, null, null);
    }

    public void track(String str, Analytics.Options options) {
        track(str, null, options);
    }

    public void track(String str, Map<String, ? extends Object> map) {
        track(str, map, null);
    }

    public void track(String str, Map<String, ?> map, Analytics.Options options) {
        if (a(str)) {
            a((Object) k.b(str, null, map, options != null ? options.toMap() : null, this.f5527a));
        }
    }
}
