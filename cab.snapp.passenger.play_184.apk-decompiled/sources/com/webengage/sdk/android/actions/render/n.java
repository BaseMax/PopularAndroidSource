package com.webengage.sdk.android.actions.render;

import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.actions.database.DataHolder;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.l;
import com.webengage.sdk.android.utils.WebEngageConstant;
import io.fabric.sdk.android.services.settings.t;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.a.b;
import org.a.c;

public class n implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5409a = new ab.a() {
        public final ab a(Context context) {
            if (n.c == null) {
                n unused = n.c = new n(context);
            }
            return n.c;
        }
    };
    /* access modifiers changed from: private */
    public static n c;

    /* renamed from: b  reason: collision with root package name */
    private Context f5410b;

    /* renamed from: com.webengage.sdk.android.actions.render.n$2  reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5411a = new int[af.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                com.webengage.sdk.android.af[] r0 = com.webengage.sdk.android.af.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5411a = r0
                int[] r0 = f5411a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.GCM_MESSAGE     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5411a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.RENDER     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5411a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.EVENT     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f5411a     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.INTERNAL_EVENT     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.n.AnonymousClass2.<clinit>():void");
        }
    }

    private n(Context context) {
        this.f5410b = null;
        this.f5410b = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        int i = AnonymousClass2.f5411a[afVar.ordinal()];
        if (i == 1) {
            Bundle bundle = (Bundle) obj;
            if (bundle != null && bundle.containsKey("source") && "webengage".equalsIgnoreCase(bundle.getString("source"))) {
                String string = bundle.getString("message_action");
                if (string != null && string.equalsIgnoreCase("show_system_tray_notification") && bundle.containsKey("message_data")) {
                    try {
                        String string2 = bundle.getString("message_data");
                        Logger.d("WebEngage", " Push Payload: ".concat(String.valueOf(string2)));
                        new h(this.f5410b).b(b(afVar, new c(string2).getString(t.APP_IDENTIFIER_KEY)));
                    } catch (b e) {
                        WebEngage.startService(com.webengage.sdk.android.n.a(af.EXCEPTION, e, this.f5410b), this.f5410b);
                    }
                }
            }
        } else if (i == 2) {
            List<String> list = (List) obj;
            if (list != null && list.size() > 0) {
                for (String str : list) {
                    if (DataHolder.get().a(WebEngageConstant.a.NOTIFICATION) && DataHolder.get().t() && DataHolder.get().a(false, true)) {
                        new f(this.f5410b).b(b(afVar, str));
                    }
                }
            }
        } else if ((i == 3 || i == 4) && (obj instanceof l) && "we_wk_push_notification_rerender".equals(((l) obj).h())) {
            new h(this.f5410b).b(b(afVar, obj));
        }
    }

    public Map<String, Object> b(af afVar, Object obj) {
        HashMap hashMap = new HashMap();
        int i = AnonymousClass2.f5411a[afVar.ordinal()];
        if (i == 1) {
            hashMap.put("first_time", Boolean.TRUE);
            hashMap.put("current", 0);
            hashMap.put(NotificationCompat.CATEGORY_NAVIGATION, "right");
        } else if (i != 2) {
            if (i == 3 || i == 4) {
                obj = (l) obj;
                hashMap.put("first_time", Boolean.FALSE);
            }
            return hashMap;
        }
        hashMap.put("action_data", obj);
        return hashMap;
    }
}
