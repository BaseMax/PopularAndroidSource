package com.webengage.sdk.android.actions.rules;

import android.content.Context;
import com.webengage.sdk.android.ab;
import com.webengage.sdk.android.af;
import java.util.Map;

public class g implements ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab.a f5459a = new ab.a() {
        public final ab a(Context context) {
            if (g.c == null) {
                g unused = g.c = new g(context);
            }
            return g.c;
        }
    };
    /* access modifiers changed from: private */
    public static g c;

    /* renamed from: b  reason: collision with root package name */
    private Context f5460b;

    private g(Context context) {
        this.f5460b = null;
        this.f5460b = context.getApplicationContext();
    }

    public void a(af afVar, Object obj) {
        Map<String, Object> b2 = b(afVar, obj);
        if (b2.get("execution_chain") != null) {
            new f(this.f5460b).b(b2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00ea, code lost:
        if ("app_crashed".equals(r2) == false) goto L_0x00f4;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Map<java.lang.String, java.lang.Object> b(com.webengage.sdk.android.af r6, java.lang.Object r7) {
        /*
            r5 = this;
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>()
            boolean r0 = r7 instanceof com.webengage.sdk.android.l
            java.lang.String r1 = "execution_chain"
            if (r0 == 0) goto L_0x00fa
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.webengage.sdk.android.l r7 = (com.webengage.sdk.android.l) r7
            java.lang.String r2 = r7.h()
            if (r2 == 0) goto L_0x00ec
            java.lang.String r3 = r7.f()
            java.lang.String r4 = "system"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L_0x00ec
            java.lang.String r3 = "visitor_new_session"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L_0x0035
        L_0x002c:
            com.webengage.sdk.android.utils.WebEngageConstant$c r2 = com.webengage.sdk.android.utils.WebEngageConstant.c.SESSION_RULE
            r0.add(r2)
        L_0x0031:
            com.webengage.sdk.android.utils.WebEngageConstant$c r2 = com.webengage.sdk.android.utils.WebEngageConstant.c.PAGE_RULE
            goto L_0x00ee
        L_0x0035:
            java.lang.String r3 = "we_wk_screen_navigated"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L_0x003e
            goto L_0x0031
        L_0x003e:
            java.lang.String r3 = "user_update"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x002c
            java.lang.String r3 = "user_update_geo_info"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x002c
            java.lang.String r3 = "user_delete_attributes"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L_0x0057
            goto L_0x002c
        L_0x0057:
            java.lang.String r3 = "user_logged_in"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L_0x006b
            com.webengage.sdk.android.utils.WebEngageConstant$c r2 = com.webengage.sdk.android.utils.WebEngageConstant.c.SESSION_RULE
            r0.add(r2)
        L_0x0064:
            com.webengage.sdk.android.utils.WebEngageConstant$c r2 = com.webengage.sdk.android.utils.WebEngageConstant.c.PAGE_RULE
            r0.add(r2)
            goto L_0x00ec
        L_0x006b:
            java.lang.String r3 = "notification_close"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x0064
            java.lang.String r3 = "notification_click"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x0064
            java.lang.String r3 = "notification_view"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x0064
            java.lang.String r3 = "notification_control_group"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L_0x008c
            goto L_0x0064
        L_0x008c:
            java.lang.String r3 = "push_notification_click"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "push_notification_close"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "push_notification_view"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "push_notification_received"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "we_wk_push_notification_rerender"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "push_notification_item_view"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "app_installed"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "app_upgraded"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "user_logged_out"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "we_wk_page_delay"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "we_wk_session_delay"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L_0x00ec
            java.lang.String r3 = "app_crashed"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x00f4
        L_0x00ec:
            com.webengage.sdk.android.utils.WebEngageConstant$c r2 = com.webengage.sdk.android.utils.WebEngageConstant.c.EVENT_RULE
        L_0x00ee:
            r0.add(r2)
            r6.put(r1, r0)
        L_0x00f4:
            java.lang.String r0 = "event_state_data"
            r6.put(r0, r7)
            goto L_0x00fd
        L_0x00fa:
            r6.put(r1, r7)
        L_0x00fd:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.g.b(com.webengage.sdk.android.af, java.lang.Object):java.util.Map");
    }
}
