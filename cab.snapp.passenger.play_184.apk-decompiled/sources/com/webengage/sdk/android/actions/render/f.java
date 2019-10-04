package com.webengage.sdk.android.actions.render;

import android.app.Activity;
import android.app.FragmentManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.a;
import com.webengage.sdk.android.actions.database.DataHolder;
import com.webengage.sdk.android.actions.rules.h;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.k;
import com.webengage.sdk.android.n;
import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import io.fabric.sdk.android.services.network.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class f extends a {

    /* renamed from: b  reason: collision with root package name */
    private Context f5389b = null;
    private boolean c = false;
    private boolean d = false;
    private String e = null;
    private String f = null;
    private String g = null;
    private InAppNotificationData h = null;

    f(Context context) {
        super(context);
        this.f5389b = context.getApplicationContext();
    }

    private String a(String str) {
        String str2;
        Map<String, List<Object>> A = DataHolder.get().A();
        if (A != null) {
            List<List> list = A.get(str);
            if (list != null) {
                for (List list2 : list) {
                    if (list2 != null && list2.size() > 0) {
                        Object a2 = h.a().getFunction("$we_getResolvedData").a(list2);
                        if (a2 != null) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(str);
                            arrayList.addAll(list2);
                            DataHolder.get().a((List<Object>) arrayList, a2);
                        }
                    }
                }
            }
        }
        Object obj = (Map) DataHolder.get().a(str);
        if (obj == null) {
            obj = new HashMap();
        }
        try {
            str2 = (String) DataType.convert(obj, DataType.STRING, true);
        } catch (Exception unused) {
            str2 = null;
        }
        DataHolder.get().b(str, (Object) null);
        HashMap hashMap = new HashMap();
        hashMap.put(c.HEADER_CONTENT_TYPE, "application/json");
        hashMap.put(c.HEADER_CONTENT_ENCODING, c.ENCODING_GZIP);
        g i = new f.a(WebEngageConstant.d.a(WebEngage.get().getWebEngageConfig().getWebEngageKey(), i(), str, h()), e.POST, this.f5389b).b(3).a((Object) str2).a((Map<String, String>) hashMap).a().i();
        if (i.i()) {
            return com.webengage.sdk.android.utils.f.a(i.e());
        }
        i.n();
        return null;
    }

    public Object a(Object obj) {
        if (this.c) {
            try {
                WeakReference<Activity> activity = com.webengage.sdk.android.c.a(this.f5389b).getActivity();
                String a2 = a(this.f);
                Logger.d("WebEngage", "In-App data: ".concat(String.valueOf(a2)));
                this.h = new InAppNotificationData(this.e, this.f, this.g, a2);
                boolean optBoolean = this.h.getData().optJSONObject("layoutAttributes").optBoolean("allowLandscape", false);
                if (activity != null && activity.get() != null && !((Activity) activity.get()).isFinishing() && Build.VERSION.SDK_INT >= 11 && (optBoolean || ((Activity) activity.get()).getResources().getConfiguration().orientation == 1)) {
                    InAppNotificationData onInAppNotificationPrepared = a(this.f5389b).onInAppNotificationPrepared(this.f5389b, this.h);
                    if (onInAppNotificationPrepared != null) {
                        this.h = onInAppNotificationPrepared;
                    }
                    if (this.h != null && this.h.shouldRender() && activity.get() != null && !((Activity) activity.get()).isFinishing()) {
                        FragmentManager fragmentManager = ((Activity) activity.get()).getFragmentManager();
                        m mVar = new m();
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("fullscreen", (((Activity) activity.get()).getWindow().getAttributes().flags & 1024) != 0);
                        bundle.putParcelable("notificationData", this.h);
                        bundle.putString("baseUrl", DataHolder.get().z());
                        mVar.setArguments(bundle);
                        mVar.setRetainInstance(true);
                        mVar.show(fragmentManager, "WebEngage");
                    }
                }
                this.c = false;
            } catch (Exception e2) {
                d(e2);
                this.c = false;
            }
        }
        return null;
    }

    public Object a(Map<String, Object> map) {
        this.e = (String) map.get("action_data");
        Map map2 = b().get(this.e);
        if (map2 != null) {
            this.f = (String) map2.keySet().iterator().next();
            this.g = (String) map2.get(this.f);
            this.c = true;
        } else {
            try {
                Map<String, Object> a2 = new com.webengage.sdk.android.actions.rules.c(this.f5389b).a(this.e, WebEngageConstant.a.NOTIFICATION);
                if (a2.get("controlGroup") != null && Long.parseLong(a2.get("controlGroup").toString()) > 0) {
                    Logger.d("WebEngage", "In-app (" + this.e + ") has fallen in control group");
                    this.c = false;
                    this.d = true;
                    HashMap hashMap = new HashMap();
                    hashMap.put("experiment_id", this.e);
                    WebEngage.startService(n.a(af.EVENT, k.a("notification_control_group", hashMap, null, null, this.f5389b), this.f5389b), this.f5389b);
                }
            } catch (Exception unused) {
            }
        }
        return Boolean.valueOf(this.c);
    }

    public void b(Object obj) {
        if (!this.c && !this.d) {
            DataHolder.get().a(false);
        }
    }
}
