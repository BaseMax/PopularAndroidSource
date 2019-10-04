package com.webengage.sdk.android.actions.render;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.a;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.k;
import com.webengage.sdk.android.n;
import com.webengage.sdk.android.utils.WebEngageConstant;
import java.util.List;
import java.util.Map;

class h extends a {

    /* renamed from: b  reason: collision with root package name */
    private final Context f5392b;
    private PushNotificationData c = null;
    private String d = "";
    private boolean e = true;
    private boolean f = false;
    private Map<String, Object> g = null;
    private Map<String, Object> h = null;
    private Map<String, Object> i = null;

    protected h(Context context) {
        super(context);
        this.f5392b = context.getApplicationContext();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (r4 != false) goto L_0x0027;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object a(java.lang.Object r4) {
        /*
            r3 = this;
            if (r4 == 0) goto L_0x0073
            com.webengage.sdk.android.actions.render.PushNotificationData r4 = r3.c
            boolean r4 = r4.isCustomRender()
            boolean r0 = r3.e
            java.lang.String r1 = "WebEngage"
            if (r0 == 0) goto L_0x003c
            android.content.Context r0 = r3.f5392b
            com.webengage.sdk.android.i r0 = r3.a((android.content.Context) r0)
            if (r4 == 0) goto L_0x001d
            boolean r4 = r0.a()
            if (r4 == 0) goto L_0x001d
            goto L_0x0027
        L_0x001d:
            com.webengage.sdk.android.actions.render.PushNotificationData r4 = r3.c
            com.webengage.sdk.android.utils.WebEngageConstant$STYLE r4 = r4.getStyle()
            com.webengage.sdk.android.callbacks.CustomPushRender r0 = com.webengage.sdk.android.actions.render.k.a(r4)
        L_0x0027:
            if (r0 == 0) goto L_0x0036
            android.content.Context r4 = r3.f5392b
            com.webengage.sdk.android.actions.render.PushNotificationData r1 = r3.c
            boolean r4 = r0.onRender(r4, r1)
        L_0x0031:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        L_0x0036:
            java.lang.String r4 = "CustomPushRender is null"
        L_0x0038:
            com.webengage.sdk.android.Logger.e(r1, r4)
            goto L_0x0073
        L_0x003c:
            java.util.Map<java.lang.String, java.lang.Object> r4 = r3.i
            android.os.Bundle r4 = com.webengage.sdk.android.utils.k.c((java.util.Map<java.lang.String, java.lang.Object>) r4)
            r0 = 0
            if (r4 == 0) goto L_0x004e
            java.lang.String r2 = "we_wk_render"
            boolean r2 = r4.getBoolean(r2, r0)
            if (r2 == 0) goto L_0x004e
            r0 = 1
        L_0x004e:
            r3.f = r0
            boolean r0 = r3.f
            if (r0 == 0) goto L_0x005f
            com.webengage.sdk.android.actions.render.PushNotificationData r0 = r3.c
            com.webengage.sdk.android.utils.WebEngageConstant$STYLE r0 = r0.getStyle()
            com.webengage.sdk.android.callbacks.CustomPushRerender r0 = com.webengage.sdk.android.actions.render.k.b(r0)
            goto L_0x0065
        L_0x005f:
            android.content.Context r0 = r3.f5392b
            com.webengage.sdk.android.i r0 = r3.a((android.content.Context) r0)
        L_0x0065:
            if (r0 == 0) goto L_0x0070
            android.content.Context r1 = r3.f5392b
            com.webengage.sdk.android.actions.render.PushNotificationData r2 = r3.c
            boolean r4 = r0.onRerender(r1, r2, r4)
            goto L_0x0031
        L_0x0070:
            java.lang.String r4 = "CustomPushRerender is null"
            goto L_0x0038
        L_0x0073:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.h.a(java.lang.Object):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x006f  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00d3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object a(java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            r4 = this;
            java.lang.String r0 = "first_time"
            java.lang.Object r0 = r5.get(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r4.e = r0
            boolean r0 = r4.e
            java.lang.String r1 = "id"
            java.lang.String r2 = "action_data"
            java.lang.Object r5 = r5.get(r2)
            if (r0 != 0) goto L_0x0036
            com.webengage.sdk.android.l r5 = (com.webengage.sdk.android.l) r5
            java.util.Map r0 = r5.k()
            r4.g = r0
            java.util.Map r0 = r5.j()
            r4.h = r0
            java.util.Map r5 = r5.l()
            r4.i = r5
            java.util.Map<java.lang.String, java.lang.Object> r5 = r4.g
            if (r5 == 0) goto L_0x003a
            java.lang.Object r5 = r5.get(r1)
        L_0x0036:
            java.lang.String r5 = (java.lang.String) r5
            r4.d = r5
        L_0x003a:
            java.lang.String r5 = r4.d
            java.lang.String r5 = r4.h(r5)
            r0 = 0
            com.webengage.sdk.android.actions.render.PushNotificationData r2 = new com.webengage.sdk.android.actions.render.PushNotificationData     // Catch:{ Exception -> 0x00d6 }
            org.a.c r3 = new org.a.c     // Catch:{ Exception -> 0x00d6 }
            r3.<init>((java.lang.String) r5)     // Catch:{ Exception -> 0x00d6 }
            android.content.Context r5 = r4.f5392b     // Catch:{ Exception -> 0x00d6 }
            r2.<init>(r3, r5)     // Catch:{ Exception -> 0x00d6 }
            r4.c = r2     // Catch:{ Exception -> 0x00d6 }
            java.util.Map<java.lang.String, java.lang.Object> r5 = r4.h
            if (r5 != 0) goto L_0x005a
            java.util.HashMap r5 = new java.util.HashMap
            r5.<init>()
            r4.h = r5
        L_0x005a:
            java.util.Map<java.lang.String, java.lang.Object> r5 = r4.h
            com.webengage.sdk.android.actions.render.PushNotificationData r2 = r4.c
            boolean r2 = r2.isAmplified()
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            java.lang.String r3 = "amplified"
            r5.put(r3, r2)
            boolean r5 = r4.e
            if (r5 == 0) goto L_0x00d3
            java.util.HashMap r5 = new java.util.HashMap
            r5.<init>()
            r4.g = r5
            java.util.Map<java.lang.String, java.lang.Object> r5 = r4.g
            com.webengage.sdk.android.actions.render.PushNotificationData r2 = r4.c
            java.lang.String r2 = r2.getExperimentId()
            java.lang.String r3 = "experiment_id"
            r5.put(r3, r2)
            java.util.Map<java.lang.String, java.lang.Object> r5 = r4.g
            com.webengage.sdk.android.actions.render.PushNotificationData r2 = r4.c
            java.lang.String r2 = r2.getVariationId()
            r5.put(r1, r2)
            java.util.Map<java.lang.String, java.lang.Object> r5 = r4.g
            java.util.Map<java.lang.String, java.lang.Object> r1 = r4.h
            android.content.Context r2 = r4.f5392b
            java.lang.String r3 = "push_notification_received"
            com.webengage.sdk.android.l r5 = com.webengage.sdk.android.k.a(r3, r5, r1, r0, r2)
            r4.c((java.lang.Object) r5)
            com.webengage.sdk.android.actions.database.DataHolder r5 = com.webengage.sdk.android.actions.database.DataHolder.get()
            com.webengage.sdk.android.utils.WebEngageConstant$a r1 = com.webengage.sdk.android.utils.WebEngageConstant.a.PUSH
            boolean r5 = r5.a((com.webengage.sdk.android.utils.WebEngageConstant.a) r1)
            if (r5 != 0) goto L_0x00b1
            java.lang.String r5 = "WebEngage"
            java.lang.String r1 = "Push-opt-in is false, hence not rendering."
            com.webengage.sdk.android.Logger.e(r5, r1)
            return r0
        L_0x00b1:
            com.webengage.sdk.android.actions.render.PushNotificationData r5 = r4.c
            if (r5 == 0) goto L_0x00d2
            android.content.Context r5 = r4.f5392b
            com.webengage.sdk.android.i r5 = r4.a((android.content.Context) r5)
            android.content.Context r1 = r4.f5392b
            com.webengage.sdk.android.actions.render.PushNotificationData r2 = r4.c
            com.webengage.sdk.android.actions.render.PushNotificationData r5 = r5.onPushNotificationReceived(r1, r2)
            if (r5 == 0) goto L_0x00c7
            r4.c = r5
        L_0x00c7:
            com.webengage.sdk.android.actions.render.PushNotificationData r5 = r4.c
            boolean r5 = r5.shouldRender()
            if (r5 == 0) goto L_0x00d2
            com.webengage.sdk.android.actions.render.PushNotificationData r5 = r4.c
            return r5
        L_0x00d2:
            return r0
        L_0x00d3:
            com.webengage.sdk.android.actions.render.PushNotificationData r5 = r4.c
            return r5
        L_0x00d6:
            r5 = move-exception
            r4.d(r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.h.a(java.util.Map):java.lang.Object");
    }

    public void b(Object obj) {
        if (obj != null) {
            if (!((Boolean) obj).booleanValue()) {
                Logger.e("WebEngage", "Push notification is not rendered.");
            } else if (this.e) {
                c((Object) k.a("push_notification_view", this.g, this.h, null, this.f5392b));
                a(this.f5392b).onPushNotificationShown(this.f5392b, this.c);
            } else if (this.c.getStyle() == WebEngageConstant.STYLE.CAROUSEL_V1 && this.c.getCarouselV1Data() != null) {
                List<CarouselV1CallToAction> callToActions = this.c.getCarouselV1Data().getCallToActions();
                int currentIndex = this.c.getCurrentIndex();
                int i2 = 0;
                Map<String, Object> map = this.i;
                if (!(map == null || !map.containsKey("current") || this.i.get("current") == null)) {
                    i2 = ((Integer) this.i.get("current")).intValue();
                }
                Map<String, Object> map2 = this.i;
                String str = (map2 == null || !map2.containsKey(NotificationCompat.CATEGORY_NAVIGATION) || this.i.get(NotificationCompat.CATEGORY_NAVIGATION) == null) ? "right" : (String) this.i.get(NotificationCompat.CATEGORY_NAVIGATION);
                this.g.put("call_to_action", callToActions.get(currentIndex).getId());
                this.g.put("navigated_from", callToActions.get(i2).getId());
                this.g.put(NotificationCompat.CATEGORY_NAVIGATION, str);
                Map<String, Object> map3 = this.i;
                if (map3 != null) {
                    this.h.putAll(map3);
                }
                WebEngage.startService(n.a(af.EVENT, k.a("push_notification_item_view", this.g, this.h, null, this.f5392b), this.f5392b), this.f5392b, null);
            } else if (this.c.getStyle() != WebEngageConstant.STYLE.RATING_V1 && !this.f) {
                Map<String, Object> map4 = this.i;
                if (map4 != null) {
                    this.h.putAll(map4);
                }
                WebEngage.startService(n.a(af.EVENT, k.a("push_notification_rerender", this.g, this.h, this.i, this.f5392b), this.f5392b), this.f5392b, null);
            }
        }
    }
}
