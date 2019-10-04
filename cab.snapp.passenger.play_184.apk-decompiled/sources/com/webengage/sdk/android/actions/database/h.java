package com.webengage.sdk.android.actions.database;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.webengage.sdk.android.a;
import com.webengage.sdk.android.actions.render.CarouselV1CallToAction;
import com.webengage.sdk.android.actions.render.PushNotificationData;
import com.webengage.sdk.android.l;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.k;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.a.b;
import org.a.c;

class h extends a {

    /* renamed from: b  reason: collision with root package name */
    private Context f5359b = null;
    private Object c = null;

    /* renamed from: com.webengage.sdk.android.actions.database.h$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5360a = new int[WebEngageConstant.STYLE.values().length];

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f5361b = new int[WebEngageConstant.a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(14:0|1|2|3|5|6|7|9|10|11|12|13|14|16) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0032 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x003c */
        static {
            /*
                com.webengage.sdk.android.utils.WebEngageConstant$a[] r0 = com.webengage.sdk.android.utils.WebEngageConstant.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5361b = r0
                r0 = 1
                int[] r1 = f5361b     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.utils.WebEngageConstant$a r2 = com.webengage.sdk.android.utils.WebEngageConstant.a.PUSH     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                r1 = 2
                int[] r2 = f5361b     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.utils.WebEngageConstant$a r3 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ NoSuchFieldError -> 0x001f }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                com.webengage.sdk.android.utils.WebEngageConstant$STYLE[] r2 = com.webengage.sdk.android.utils.WebEngageConstant.STYLE.values()
                int r2 = r2.length
                int[] r2 = new int[r2]
                f5360a = r2
                int[] r2 = f5360a     // Catch:{ NoSuchFieldError -> 0x0032 }
                com.webengage.sdk.android.utils.WebEngageConstant$STYLE r3 = com.webengage.sdk.android.utils.WebEngageConstant.STYLE.BIG_PICTURE     // Catch:{ NoSuchFieldError -> 0x0032 }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x0032 }
                r2[r3] = r0     // Catch:{ NoSuchFieldError -> 0x0032 }
            L_0x0032:
                int[] r0 = f5360a     // Catch:{ NoSuchFieldError -> 0x003c }
                com.webengage.sdk.android.utils.WebEngageConstant$STYLE r2 = com.webengage.sdk.android.utils.WebEngageConstant.STYLE.CAROUSEL_V1     // Catch:{ NoSuchFieldError -> 0x003c }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x003c }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x003c }
            L_0x003c:
                int[] r0 = f5360a     // Catch:{ NoSuchFieldError -> 0x0047 }
                com.webengage.sdk.android.utils.WebEngageConstant$STYLE r1 = com.webengage.sdk.android.utils.WebEngageConstant.STYLE.RATING_V1     // Catch:{ NoSuchFieldError -> 0x0047 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0047 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0047 }
            L_0x0047:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.h.AnonymousClass1.<clinit>():void");
        }
    }

    protected h(Context context) {
        super(context);
        this.f5359b = context.getApplicationContext();
    }

    private void a(l lVar) {
        Map<String, Object> q = DataHolder.get().q();
        Map<String, Object> j = lVar.j();
        HashMap hashMap = new HashMap();
        if (q != null) {
            hashMap.putAll(q);
        }
        if (j != null) {
            hashMap.putAll(j);
        }
        lVar.a((Map<String, Object>) hashMap);
    }

    private void a(l lVar, w wVar, boolean z) {
        Map k = lVar.k();
        if (k == null) {
            k = new HashMap();
        }
        lVar.b(wVar.a((Map<String, Object>) k, z));
    }

    private void a(l lVar, WebEngageConstant.a aVar) {
        if (aVar != null && AnonymousClass1.f5361b[aVar.ordinal()] == 1) {
            Map<String, Object> k = lVar.k();
            if (k != null) {
                String str = (String) k.get("id");
                if (str != null) {
                    try {
                        PushNotificationData pushNotificationData = new PushNotificationData(new c(h(str)), this.f5359b);
                        if (pushNotificationData.getCustomData() != null) {
                            HashMap hashMap = new HashMap();
                            Map<String, Object> j = lVar.j();
                            if (j != null) {
                                hashMap.putAll(j);
                            }
                            hashMap.putAll(k.a(pushNotificationData.getCustomData()));
                            lVar.a((Map<String, Object>) hashMap);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    private void a(String str) {
        PushNotificationData pushNotificationData;
        try {
            pushNotificationData = new PushNotificationData(new c(h(str)), this.f5359b);
        } catch (b unused) {
            pushNotificationData = null;
        }
        if (pushNotificationData != null && pushNotificationData.isBigNotification() && pushNotificationData.getStyle() != null) {
            int i = AnonymousClass1.f5360a[pushNotificationData.getStyle().ordinal()];
            if (i == 1) {
                return;
            }
            if (i == 2) {
                HashSet hashSet = new HashSet();
                List<CarouselV1CallToAction> callToActions = pushNotificationData.getCarouselV1Data().getCallToActions();
                if (callToActions != null) {
                    for (CarouselV1CallToAction imageURL : callToActions) {
                        hashSet.add(imageURL.getImageURL());
                    }
                }
                if (hashSet.size() > 0) {
                    com.webengage.sdk.android.utils.a.b.a(this.f5359b).a((Set<String>) hashSet);
                }
            } else if (i == 3) {
                HashSet hashSet2 = new HashSet();
                if (pushNotificationData.getRatingV1().getImageUrl() != null) {
                    hashSet2.add(pushNotificationData.getRatingV1().getImageUrl());
                }
                if (pushNotificationData.getRatingV1().getIconUrl() != null) {
                    hashSet2.add(pushNotificationData.getRatingV1().getIconUrl());
                }
                if (hashSet2.size() > 0) {
                    com.webengage.sdk.android.utils.a.b.a(this.f5359b).a((Set<String>) hashSet2);
                }
            }
        }
    }

    private boolean a(l lVar, List<Object> list) {
        if (lVar != null && list != null && list.size() > 2 && NotificationCompat.CATEGORY_EVENT.equals(list.get(0).toString()) && lVar.h().equals(list.get(2))) {
            String str = (String) list.get(1);
            if (str != null) {
                if ("custom".equals(str)) {
                    return "application".equals(lVar.f());
                }
                if ("system".equals(str)) {
                    return "system".equals(lVar.f());
                }
            }
        }
        return false;
    }

    private void b(l lVar) {
        Map<String, Object> j = lVar.j();
        Map<String, Object> k = lVar.k();
        HashMap hashMap = new HashMap();
        if (k != null) {
            k.put("event_time", lVar.i());
            hashMap.put("we_wk_sys", k);
        }
        if (j != null) {
            hashMap.putAll(j);
        }
        String f = lVar.f();
        String h = lVar.h();
        if ("system".equals(f) && !h.startsWith("we_")) {
            h = "we_".concat(String.valueOf(h));
        }
        DataHolder.get().d(h, (Map<String, Object>) hashMap);
        Map<String, List<Object>> A = DataHolder.get().A();
        if (A != null) {
            for (Map.Entry<String, List<Object>> value : A.entrySet()) {
                List list = (List) value.getValue();
                if (list != null) {
                    Iterator it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        List list2 = (List) it.next();
                        if (list2 != null && list2.size() != 0 && a(lVar, (List<Object>) list2)) {
                            DataHolder.get().e(h, (Map<String, Object>) hashMap);
                            break;
                        }
                    }
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:211:0x07c1, code lost:
        if (r5 != false) goto L_0x051e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object a(java.lang.Object r20) {
        /*
            r19 = this;
            r1 = r19
            r0 = r20
            java.util.Map r0 = (java.util.Map) r0
            java.lang.String r2 = "action_type"
            java.lang.Object r2 = r0.get(r2)
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r3 = "gcm"
            boolean r3 = r3.equals(r2)
            java.lang.String r4 = "action_data"
            r5 = 0
            r6 = 0
            if (r3 == 0) goto L_0x00a2
            java.lang.Object r0 = r0.get(r4)
            android.os.Bundle r0 = (android.os.Bundle) r0
            java.lang.String r2 = "message_action"
            java.lang.String r2 = r0.getString(r2)
            java.lang.String r3 = "show_system_tray_notification"
            boolean r3 = r3.equalsIgnoreCase(r2)
            if (r3 == 0) goto L_0x0050
            java.lang.String r2 = "message_data"
            java.lang.String r0 = r0.getString(r2)
            org.a.c r2 = new org.a.c     // Catch:{ b -> 0x003a }
            r2.<init>((java.lang.String) r0)     // Catch:{ b -> 0x003a }
            goto L_0x003f
        L_0x003a:
            r0 = move-exception
            r1.d(r0)
            r2 = r5
        L_0x003f:
            if (r2 == 0) goto L_0x00da
            java.lang.String r0 = "identifier"
            java.lang.String r0 = r2.optString(r0)
            java.lang.String r2 = r2.toString()
            r1.a((java.lang.String) r0, (java.lang.String) r2)
            goto L_0x00da
        L_0x0050:
            java.lang.String r3 = "ping"
            boolean r3 = r3.equalsIgnoreCase(r2)
            if (r3 == 0) goto L_0x0076
            java.lang.String r2 = "message_data"
            java.lang.String r0 = r0.getString(r2)
            if (r0 == 0) goto L_0x0069
            com.webengage.sdk.android.utils.DataType r2 = com.webengage.sdk.android.utils.DataType.MAP     // Catch:{ Exception -> 0x00da }
            java.lang.Object r0 = com.webengage.sdk.android.utils.DataType.convert(r0, r2, r6)     // Catch:{ Exception -> 0x00da }
            java.util.Map r0 = (java.util.Map) r0     // Catch:{ Exception -> 0x00da }
            goto L_0x006a
        L_0x0069:
            r0 = r5
        L_0x006a:
            java.lang.String r2 = "push_ping"
            android.content.Context r3 = r1.f5359b     // Catch:{ Exception -> 0x00da }
            com.webengage.sdk.android.l r0 = com.webengage.sdk.android.k.a(r2, r0, r5, r5, r3)     // Catch:{ Exception -> 0x00da }
            r1.c((java.lang.Object) r0)     // Catch:{ Exception -> 0x00da }
            goto L_0x00da
        L_0x0076:
            java.lang.String r0 = "config"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x008c
            com.webengage.sdk.android.af r0 = com.webengage.sdk.android.af.CONFIG_REFRESH
        L_0x0080:
            android.content.Context r2 = r1.f5359b
            android.content.Intent r0 = com.webengage.sdk.android.n.a(r0, r5, r2)
            android.content.Context r2 = r1.f5359b
            com.webengage.sdk.android.WebEngage.startService(r0, r2)
            goto L_0x00da
        L_0x008c:
            java.lang.String r0 = "fetch_profile"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x0097
            com.webengage.sdk.android.af r0 = com.webengage.sdk.android.af.FETCH_PROFILE
            goto L_0x0080
        L_0x0097:
            java.lang.String r0 = "jcx"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x00da
            com.webengage.sdk.android.af r0 = com.webengage.sdk.android.af.JOURNEY_CONTEXT
            goto L_0x0080
        L_0x00a2:
            java.lang.String r3 = "event"
            boolean r3 = r3.equalsIgnoreCase(r2)
            if (r3 != 0) goto L_0x00dd
            java.lang.String r3 = "internal_event"
            boolean r3 = r3.equalsIgnoreCase(r2)
            if (r3 == 0) goto L_0x00b3
            goto L_0x00dd
        L_0x00b3:
            java.lang.String r3 = "change_data"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x00da
            java.lang.Object r0 = r0.get(r4)
            java.util.HashMap r0 = (java.util.HashMap) r0
            if (r0 == 0) goto L_0x00da
            java.lang.String r2 = "path"
            java.lang.Object r2 = r0.get(r2)
            java.util.ArrayList r2 = (java.util.ArrayList) r2
            if (r2 == 0) goto L_0x00da
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.String r4 = "data"
            java.lang.Object r0 = r0.get(r4)
            r3.a((java.util.List<java.lang.Object>) r2, (java.lang.Object) r0)
        L_0x00da:
            r2 = r5
            goto L_0x082b
        L_0x00dd:
            java.lang.Object r0 = r0.get(r4)
            com.webengage.sdk.android.l r0 = (com.webengage.sdk.android.l) r0
            java.lang.String r2 = r19.h()
            r0.f(r2)
            java.lang.String r2 = r19.g()
            r0.d(r2)
            java.lang.String r2 = r19.i()
            r0.c((java.lang.String) r2)
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            r0.a((java.util.Date) r2)
            java.lang.String r2 = r0.h()
            com.webengage.sdk.android.actions.database.w r3 = new com.webengage.sdk.android.actions.database.w
            android.content.Context r4 = r1.f5359b
            r3.<init>(r4)
            if (r2 == 0) goto L_0x0823
            java.lang.String r4 = r0.f()
            java.lang.String r7 = "system"
            boolean r4 = r7.equals(r4)
            if (r4 == 0) goto L_0x0823
            java.lang.String r4 = r19.h()
            boolean r4 = r4.isEmpty()
            if (r4 == 0) goto L_0x0128
            java.lang.String r4 = r19.i()
            goto L_0x012c
        L_0x0128:
            java.lang.String r4 = r19.h()
        L_0x012c:
            r8 = r4
            java.lang.String r4 = "user_update_geo_info"
            boolean r4 = r4.equals(r2)
            java.lang.String r7 = "WebEngage"
            if (r4 != 0) goto L_0x07c5
            java.lang.String r4 = "user_update"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L_0x07c5
            java.lang.String r4 = "user_delete_attributes"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0149
            goto L_0x07c5
        L_0x0149:
            java.lang.String r4 = "user_increment"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0169
            java.util.Map r2 = r0.k()
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r3.f(r8, r2)
            java.util.Map r0 = r0.j()
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r2.g(r8, r0)
            goto L_0x00da
        L_0x0169:
            java.lang.String r4 = "user_logged_in"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x01dc
            java.lang.String r10 = r19.h()
            android.content.Context r2 = r1.f5359b
            com.webengage.sdk.android.actions.database.y r2 = com.webengage.sdk.android.actions.database.y.a((android.content.Context) r2)
            java.lang.String r3 = r19.i()
            r2.a(r10, r3)
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.Date r2 = r2.s()
            if (r2 != 0) goto L_0x01a2
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            java.util.Date r3 = new java.util.Date
            r3.<init>()
            java.lang.String r4 = "first_logged_in"
            r2.put(r4, r3)
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r3.a((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r2)
        L_0x01a2:
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            java.util.Date r3 = new java.util.Date
            r3.<init>()
            java.lang.String r4 = "last_logged_in"
            r2.put(r4, r3)
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r3.a((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r2)
            android.content.Context r2 = r1.f5359b
            com.webengage.sdk.android.actions.database.y r2 = com.webengage.sdk.android.actions.database.y.a((android.content.Context) r2)
            java.util.Map r2 = r2.a((java.lang.String) r8)
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r3.a((java.util.Map<java.lang.String, java.lang.Object>) r2)
            java.lang.String r2 = "User successfully Logged in"
            com.webengage.sdk.android.Logger.d(r7, r2)
            com.webengage.sdk.android.actions.database.DataHolder r7 = com.webengage.sdk.android.actions.database.DataHolder.get()
            com.webengage.sdk.android.actions.database.f r11 = com.webengage.sdk.android.actions.database.f.USER
            com.webengage.sdk.android.actions.database.o r12 = com.webengage.sdk.android.actions.database.o.FORCE_UPDATE
            java.lang.String r9 = "cuid"
            r7.a(r8, r9, r10, r11, r12)
            goto L_0x01e9
        L_0x01dc:
            java.lang.String r4 = "user_logged_out"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x01f1
            java.lang.String r2 = "User successfully Logged out"
            com.webengage.sdk.android.Logger.d(r7, r2)
        L_0x01e9:
            r1.a((com.webengage.sdk.android.l) r0)
            r1.b((com.webengage.sdk.android.l) r0)
            goto L_0x00da
        L_0x01f1:
            java.lang.String r4 = "notification_click"
            boolean r4 = r4.equals(r2)
            java.lang.String r7 = "total_view_count_session"
            java.lang.String r9 = "total_view_count"
            java.lang.String r10 = "journey_id"
            java.lang.String r12 = "scope"
            java.lang.String r15 = "experiment_id"
            java.lang.String r5 = "journeyId"
            r16 = 1
            if (r4 == 0) goto L_0x029a
            java.util.Map r2 = r0.k()
            java.lang.Object r4 = r2.get(r15)
            java.lang.String r4 = (java.lang.String) r4
            com.webengage.sdk.android.actions.rules.c r15 = new com.webengage.sdk.android.actions.rules.c     // Catch:{ Exception -> 0x0294 }
            android.content.Context r6 = r1.f5359b     // Catch:{ Exception -> 0x0294 }
            r15.<init>((android.content.Context) r6)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r6 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0294 }
            java.util.Map r6 = r15.a((java.lang.String) r4, (com.webengage.sdk.android.utils.WebEngageConstant.a) r6)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r15 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r11 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0294 }
            java.lang.String r11 = r15.e((java.util.Map<java.lang.String, java.lang.Object>) r6, (com.webengage.sdk.android.utils.WebEngageConstant.a) r11)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r15 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0294 }
            r13.<init>()     // Catch:{ Exception -> 0x0294 }
            r13.append(r11)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r14 = "_click"
            r13.append(r14)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r13 = r13.toString()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r14 = java.lang.Long.valueOf(r16)     // Catch:{ Exception -> 0x0294 }
            r18 = r3
            com.webengage.sdk.android.actions.database.f r3 = com.webengage.sdk.android.actions.database.f.SCOPES     // Catch:{ Exception -> 0x0294 }
            r15.a((java.lang.String) r8, (java.lang.String) r13, (java.lang.Number) r14, (com.webengage.sdk.android.actions.database.f) r3)     // Catch:{ Exception -> 0x0294 }
            r1.a((com.webengage.sdk.android.l) r0)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r3 = r3.b((java.lang.String) r4)     // Catch:{ Exception -> 0x0294 }
            r2.put(r9, r3)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r3 = r3.c((java.lang.String) r4)     // Catch:{ Exception -> 0x0294 }
            r2.put(r7, r3)     // Catch:{ Exception -> 0x0294 }
            r3 = 91
            int r3 = r11.indexOf(r3)     // Catch:{ Exception -> 0x0294 }
            r4 = -1
            if (r3 == r4) goto L_0x0279
            int r4 = r3 + 1
            r7 = 93
            int r3 = r11.indexOf(r7, r3)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r3 = r11.substring(r4, r3)     // Catch:{ Exception -> 0x0294 }
            r2.put(r12, r3)     // Catch:{ Exception -> 0x0294 }
        L_0x0279:
            java.lang.Object r3 = r6.get(r5)     // Catch:{ Exception -> 0x0294 }
            if (r3 == 0) goto L_0x0286
            java.lang.Object r3 = r6.get(r5)     // Catch:{ Exception -> 0x0294 }
            r2.put(r10, r3)     // Catch:{ Exception -> 0x0294 }
        L_0x0286:
            r0.b((java.util.Map<java.lang.String, java.lang.Object>) r2)     // Catch:{ Exception -> 0x0294 }
            r3 = r18
            r2 = 0
            r1.a(r0, r3, r2)     // Catch:{ Exception -> 0x0294 }
            r1.b((com.webengage.sdk.android.l) r0)     // Catch:{ Exception -> 0x0294 }
            goto L_0x082a
        L_0x0294:
            r0 = move-exception
            r1.d(r0)
            goto L_0x082a
        L_0x029a:
            java.lang.String r4 = "notification_view"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0371
            java.util.Map r2 = r0.k()
            java.lang.Object r4 = r2.get(r15)
            java.lang.String r4 = (java.lang.String) r4
            com.webengage.sdk.android.actions.rules.c r6 = new com.webengage.sdk.android.actions.rules.c     // Catch:{ Exception -> 0x0294 }
            android.content.Context r11 = r1.f5359b     // Catch:{ Exception -> 0x0294 }
            r6.<init>((android.content.Context) r11)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r11 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0294 }
            java.util.Map r6 = r6.a((java.lang.String) r4, (com.webengage.sdk.android.utils.WebEngageConstant.a) r11)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r13 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0294 }
            java.lang.String r11 = r11.e((java.util.Map<java.lang.String, java.lang.Object>) r6, (com.webengage.sdk.android.utils.WebEngageConstant.a) r13)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r13 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.StringBuilder r14 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0294 }
            r14.<init>()     // Catch:{ Exception -> 0x0294 }
            r14.append(r11)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r15 = "_view"
            r14.append(r15)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r14 = r14.toString()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r15 = java.lang.Long.valueOf(r16)     // Catch:{ Exception -> 0x0294 }
            r18 = r3
            com.webengage.sdk.android.actions.database.f r3 = com.webengage.sdk.android.actions.database.f.SCOPES     // Catch:{ Exception -> 0x0294 }
            r13.a((java.lang.String) r8, (java.lang.String) r14, (java.lang.Number) r15, (com.webengage.sdk.android.actions.database.f) r3)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0294 }
            r13.<init>()     // Catch:{ Exception -> 0x0294 }
            r13.append(r4)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r14 = "_view_session"
            r13.append(r14)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r13 = r13.toString()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r14 = java.lang.Long.valueOf(r16)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.f r15 = com.webengage.sdk.android.actions.database.f.SCOPES     // Catch:{ Exception -> 0x0294 }
            r3.a((java.lang.String) r8, (java.lang.String) r13, (java.lang.Number) r14, (com.webengage.sdk.android.actions.database.f) r15)     // Catch:{ Exception -> 0x0294 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0294 }
            r3.<init>()     // Catch:{ Exception -> 0x0294 }
            r3.append(r4)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r13 = "_view"
            r3.append(r13)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x0294 }
            boolean r13 = r11.equals(r4)     // Catch:{ Exception -> 0x0294 }
            if (r13 != 0) goto L_0x0325
            com.webengage.sdk.android.actions.database.DataHolder r13 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r14 = java.lang.Long.valueOf(r16)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.f r15 = com.webengage.sdk.android.actions.database.f.SCOPES     // Catch:{ Exception -> 0x0294 }
            r13.a((java.lang.String) r8, (java.lang.String) r3, (java.lang.Number) r14, (com.webengage.sdk.android.actions.database.f) r15)     // Catch:{ Exception -> 0x0294 }
        L_0x0325:
            r1.a((com.webengage.sdk.android.l) r0)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r3 = r3.b((java.lang.String) r4)     // Catch:{ Exception -> 0x0294 }
            r2.put(r9, r3)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r3 = r3.c((java.lang.String) r4)     // Catch:{ Exception -> 0x0294 }
            r2.put(r7, r3)     // Catch:{ Exception -> 0x0294 }
            r3 = 91
            int r3 = r11.indexOf(r3)     // Catch:{ Exception -> 0x0294 }
            r4 = -1
            if (r3 == r4) goto L_0x0356
            int r4 = r3 + 1
            r7 = 93
            int r3 = r11.indexOf(r7, r3)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r3 = r11.substring(r4, r3)     // Catch:{ Exception -> 0x0294 }
            r2.put(r12, r3)     // Catch:{ Exception -> 0x0294 }
        L_0x0356:
            java.lang.Object r3 = r6.get(r5)     // Catch:{ Exception -> 0x0294 }
            if (r3 == 0) goto L_0x0363
            java.lang.Object r3 = r6.get(r5)     // Catch:{ Exception -> 0x0294 }
            r2.put(r10, r3)     // Catch:{ Exception -> 0x0294 }
        L_0x0363:
            r0.b((java.util.Map<java.lang.String, java.lang.Object>) r2)     // Catch:{ Exception -> 0x0294 }
            r3 = r18
            r2 = 0
            r1.a(r0, r3, r2)     // Catch:{ Exception -> 0x0294 }
            r1.b((com.webengage.sdk.android.l) r0)     // Catch:{ Exception -> 0x0294 }
            goto L_0x082a
        L_0x0371:
            java.lang.String r4 = "notification_close"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0424
            java.util.Map r2 = r0.k()
            java.lang.Object r4 = r2.get(r15)
            java.lang.String r4 = (java.lang.String) r4
            com.webengage.sdk.android.actions.rules.c r6 = new com.webengage.sdk.android.actions.rules.c     // Catch:{ Exception -> 0x0294 }
            android.content.Context r11 = r1.f5359b     // Catch:{ Exception -> 0x0294 }
            r6.<init>((android.content.Context) r11)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r11 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0294 }
            java.util.Map r6 = r6.a((java.lang.String) r4, (com.webengage.sdk.android.utils.WebEngageConstant.a) r11)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r13 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0294 }
            java.lang.String r11 = r11.e((java.util.Map<java.lang.String, java.lang.Object>) r6, (com.webengage.sdk.android.utils.WebEngageConstant.a) r13)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r13 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.StringBuilder r14 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0294 }
            r14.<init>()     // Catch:{ Exception -> 0x0294 }
            r14.append(r11)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r15 = "_close_session"
            r14.append(r15)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r14 = r14.toString()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r15 = java.lang.Long.valueOf(r16)     // Catch:{ Exception -> 0x0294 }
            r18 = r3
            com.webengage.sdk.android.actions.database.f r3 = com.webengage.sdk.android.actions.database.f.SCOPES     // Catch:{ Exception -> 0x0294 }
            r13.a((java.lang.String) r8, (java.lang.String) r14, (java.lang.Number) r15, (com.webengage.sdk.android.actions.database.f) r3)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0294 }
            r13.<init>()     // Catch:{ Exception -> 0x0294 }
            r13.append(r11)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r14 = "_close"
            r13.append(r14)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r13 = r13.toString()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r14 = java.lang.Long.valueOf(r16)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.f r15 = com.webengage.sdk.android.actions.database.f.SCOPES     // Catch:{ Exception -> 0x0294 }
            r3.a((java.lang.String) r8, (java.lang.String) r13, (java.lang.Number) r14, (com.webengage.sdk.android.actions.database.f) r15)     // Catch:{ Exception -> 0x0294 }
            r1.a((com.webengage.sdk.android.l) r0)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r3 = r3.b((java.lang.String) r4)     // Catch:{ Exception -> 0x0294 }
            r2.put(r9, r3)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r3 = r3.c((java.lang.String) r4)     // Catch:{ Exception -> 0x0294 }
            r2.put(r7, r3)     // Catch:{ Exception -> 0x0294 }
            r3 = 91
            int r3 = r11.indexOf(r3)     // Catch:{ Exception -> 0x0294 }
            r4 = -1
            if (r3 == r4) goto L_0x0409
            int r4 = r3 + 1
            r7 = 93
            int r3 = r11.indexOf(r7, r3)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r3 = r11.substring(r4, r3)     // Catch:{ Exception -> 0x0294 }
            r2.put(r12, r3)     // Catch:{ Exception -> 0x0294 }
        L_0x0409:
            java.lang.Object r3 = r6.get(r5)     // Catch:{ Exception -> 0x0294 }
            if (r3 == 0) goto L_0x0416
            java.lang.Object r3 = r6.get(r5)     // Catch:{ Exception -> 0x0294 }
            r2.put(r10, r3)     // Catch:{ Exception -> 0x0294 }
        L_0x0416:
            r0.b((java.util.Map<java.lang.String, java.lang.Object>) r2)     // Catch:{ Exception -> 0x0294 }
            r3 = r18
            r2 = 0
            r1.a(r0, r3, r2)     // Catch:{ Exception -> 0x0294 }
            r1.b((com.webengage.sdk.android.l) r0)     // Catch:{ Exception -> 0x0294 }
            goto L_0x082a
        L_0x0424:
            java.lang.String r4 = "notification_control_group"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x04e3
            java.util.Map r2 = r0.k()
            java.lang.Object r4 = r2.get(r15)
            java.lang.String r4 = (java.lang.String) r4
            com.webengage.sdk.android.actions.rules.c r6 = new com.webengage.sdk.android.actions.rules.c     // Catch:{ Exception -> 0x0294 }
            android.content.Context r7 = r1.f5359b     // Catch:{ Exception -> 0x0294 }
            r6.<init>((android.content.Context) r7)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r7 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0294 }
            java.util.Map r6 = r6.a((java.lang.String) r4, (com.webengage.sdk.android.utils.WebEngageConstant.a) r7)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r7 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r9 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0294 }
            java.lang.String r7 = r7.e((java.util.Map<java.lang.String, java.lang.Object>) r6, (com.webengage.sdk.android.utils.WebEngageConstant.a) r9)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r9 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0294 }
            r11.<init>()     // Catch:{ Exception -> 0x0294 }
            r11.append(r7)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r13 = "_hide_session"
            r11.append(r13)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r11 = r11.toString()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r13 = java.lang.Long.valueOf(r16)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.f r14 = com.webengage.sdk.android.actions.database.f.SCOPES     // Catch:{ Exception -> 0x0294 }
            r9.a((java.lang.String) r8, (java.lang.String) r11, (java.lang.Number) r13, (com.webengage.sdk.android.actions.database.f) r14)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.DataHolder r9 = com.webengage.sdk.android.actions.database.DataHolder.get()     // Catch:{ Exception -> 0x0294 }
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0294 }
            r11.<init>()     // Catch:{ Exception -> 0x0294 }
            r11.append(r7)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r13 = "_hide"
            r11.append(r13)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r11 = r11.toString()     // Catch:{ Exception -> 0x0294 }
            java.lang.Long r13 = java.lang.Long.valueOf(r16)     // Catch:{ Exception -> 0x0294 }
            com.webengage.sdk.android.actions.database.f r14 = com.webengage.sdk.android.actions.database.f.SCOPES     // Catch:{ Exception -> 0x0294 }
            r9.a((java.lang.String) r8, (java.lang.String) r11, (java.lang.Number) r13, (com.webengage.sdk.android.actions.database.f) r14)     // Catch:{ Exception -> 0x0294 }
            r1.a((com.webengage.sdk.android.l) r0)     // Catch:{ Exception -> 0x0294 }
            r9 = 91
            int r9 = r7.indexOf(r9)     // Catch:{ Exception -> 0x0294 }
            r11 = -1
            if (r9 == r11) goto L_0x04a4
            int r11 = r9 + 1
            r13 = 93
            int r9 = r7.indexOf(r13, r9)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r7 = r7.substring(r11, r9)     // Catch:{ Exception -> 0x0294 }
            r2.put(r12, r7)     // Catch:{ Exception -> 0x0294 }
        L_0x04a4:
            java.lang.Object r7 = r6.get(r5)     // Catch:{ Exception -> 0x0294 }
            if (r7 == 0) goto L_0x04b1
            java.lang.Object r5 = r6.get(r5)     // Catch:{ Exception -> 0x0294 }
            r2.put(r10, r5)     // Catch:{ Exception -> 0x0294 }
        L_0x04b1:
            r0.b((java.util.Map<java.lang.String, java.lang.Object>) r2)     // Catch:{ Exception -> 0x0294 }
            r2 = 0
            r1.a(r0, r3, r2)     // Catch:{ Exception -> 0x0294 }
            java.util.Map r2 = r0.j()     // Catch:{ Exception -> 0x0294 }
            if (r2 != 0) goto L_0x04c3
            java.util.HashMap r2 = new java.util.HashMap     // Catch:{ Exception -> 0x0294 }
            r2.<init>()     // Catch:{ Exception -> 0x0294 }
        L_0x04c3:
            java.lang.String r3 = "control_group"
            java.lang.String r5 = "controlGroup"
            java.lang.Object r5 = r6.get(r5)     // Catch:{ Exception -> 0x0294 }
            r2.put(r3, r5)     // Catch:{ Exception -> 0x0294 }
            java.lang.String r3 = "bucket_value"
            double r4 = com.webengage.sdk.android.utils.k.a((java.lang.String) r4, (java.lang.String) r8)     // Catch:{ Exception -> 0x0294 }
            java.lang.Double r4 = java.lang.Double.valueOf(r4)     // Catch:{ Exception -> 0x0294 }
            r2.put(r3, r4)     // Catch:{ Exception -> 0x0294 }
            r0.a((java.util.Map<java.lang.String, java.lang.Object>) r2)     // Catch:{ Exception -> 0x0294 }
            r1.b((com.webengage.sdk.android.l) r0)     // Catch:{ Exception -> 0x0294 }
            goto L_0x082a
        L_0x04e3:
            java.lang.String r4 = "push_notification_received"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x04f5
        L_0x04eb:
            com.webengage.sdk.android.utils.WebEngageConstant$a r2 = com.webengage.sdk.android.utils.WebEngageConstant.a.PUSH
            r1.a((com.webengage.sdk.android.l) r0, (com.webengage.sdk.android.utils.WebEngageConstant.a) r2)
        L_0x04f0:
            r1.a((com.webengage.sdk.android.l) r0)
            goto L_0x0823
        L_0x04f5:
            java.lang.String r4 = "push_notification_close"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0526
            java.util.Map r2 = r0.k()
            r1.c = r2
            java.lang.Object r2 = r1.c
            java.util.Map r2 = (java.util.Map) r2
            java.lang.String r4 = "id"
            java.lang.Object r2 = r2.get(r4)
            java.lang.String r2 = (java.lang.String) r2
            com.webengage.sdk.android.utils.WebEngageConstant$a r4 = com.webengage.sdk.android.utils.WebEngageConstant.a.PUSH
            r1.a((com.webengage.sdk.android.l) r0, (com.webengage.sdk.android.utils.WebEngageConstant.a) r4)
            r1.a((com.webengage.sdk.android.l) r0)
            r4 = 0
            r1.a(r0, r3, r4)
            r1.b((com.webengage.sdk.android.l) r0)
        L_0x051e:
            r1.a((java.lang.String) r2)
            r1.g(r2)
            goto L_0x082a
        L_0x0526:
            java.lang.String r4 = "push_notification_view"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x052f
        L_0x052e:
            goto L_0x04eb
        L_0x052f:
            java.lang.String r4 = "push_notification_click"
            boolean r4 = r4.equals(r2)
            r5 = 1
            if (r4 != 0) goto L_0x078e
            java.lang.String r4 = "push_notification_rating_submitted"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0542
            goto L_0x078e
        L_0x0542:
            java.lang.String r4 = "push_notification_item_view"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x054b
            goto L_0x052e
        L_0x054b:
            java.lang.String r4 = "we_wk_activity_start"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0574
            java.util.Map r0 = r0.k()
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.Map r2 = r2.r()
            if (r2 != 0) goto L_0x0566
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
        L_0x0566:
            if (r0 == 0) goto L_0x056b
            r2.putAll(r0)
        L_0x056b:
            com.webengage.sdk.android.actions.database.DataHolder r0 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r0.b((java.util.Map<java.lang.String, java.lang.Object>) r2)
            goto L_0x082a
        L_0x0574:
            java.lang.String r4 = "we_wk_screen_navigated"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x05cd
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r2.a()
            java.util.Map r2 = r0.k()
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.Map r3 = r3.r()
            if (r3 != 0) goto L_0x0596
            java.util.HashMap r3 = new java.util.HashMap
            r3.<init>()
        L_0x0596:
            if (r2 == 0) goto L_0x059b
            r3.putAll(r2)
        L_0x059b:
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r2.b((java.util.Map<java.lang.String, java.lang.Object>) r3)
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.Long r3 = java.lang.Long.valueOf(r16)
            com.webengage.sdk.android.actions.database.f r4 = com.webengage.sdk.android.actions.database.f.ANDROID
            java.lang.String r5 = "page_view_count_session"
            r2.a((java.lang.String) r8, (java.lang.String) r5, (java.lang.Number) r3, (com.webengage.sdk.android.actions.database.f) r4)
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.Long r3 = java.lang.Long.valueOf(r16)
            com.webengage.sdk.android.actions.database.f r4 = com.webengage.sdk.android.actions.database.f.ANDROID
            java.lang.String r5 = "total_page_view_count"
            r2.a((java.lang.String) r8, (java.lang.String) r5, (java.lang.Number) r3, (com.webengage.sdk.android.actions.database.f) r4)
            java.util.Map r0 = r0.j()
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r2.c((java.util.Map<java.lang.String, java.lang.Object>) r0)
            goto L_0x082a
        L_0x05cd:
            java.lang.String r4 = "visitor_new_session"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x06ec
            java.lang.String r2 = r19.h()
            android.content.Context r4 = r1.f5359b
            com.webengage.sdk.android.actions.database.y r4 = com.webengage.sdk.android.actions.database.y.a((android.content.Context) r4)
            boolean r6 = r2.isEmpty()
            if (r6 == 0) goto L_0x05e9
            java.lang.String r2 = r19.i()
        L_0x05e9:
            java.util.Map r2 = r4.a((java.lang.String) r2)
            if (r2 == 0) goto L_0x05fc
            int r4 = r2.size()
            if (r4 <= 0) goto L_0x05fc
            com.webengage.sdk.android.actions.database.DataHolder r4 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r4.a((java.util.Map<java.lang.String, java.lang.Object>) r2)
        L_0x05fc:
            java.util.Map r2 = r0.k()
            com.webengage.sdk.android.actions.database.DataHolder r4 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r4.b((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r2)
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.String r2 = r2.b()
            java.lang.String r4 = "online"
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto L_0x0674
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            java.lang.Long r4 = java.lang.Long.valueOf(r16)
            java.lang.String r6 = "session_count"
            r2.put(r6, r4)
            com.webengage.sdk.android.actions.database.DataHolder r4 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r4.f(r8, r2)
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.Long r2 = r2.l()
            if (r2 == 0) goto L_0x0683
            long r6 = r2.longValue()
            int r2 = (r6 > r16 ? 1 : (r6 == r16 ? 0 : -1))
            if (r2 != 0) goto L_0x0683
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.util.Date r4 = new java.util.Date
            r4.<init>()
            com.webengage.sdk.android.actions.database.f r6 = com.webengage.sdk.android.actions.database.f.ANDROID
            java.lang.String r7 = "first_session_start_time"
            r2.a((java.lang.String) r8, (java.lang.String) r7, (java.lang.Object) r4, (com.webengage.sdk.android.actions.database.f) r6)
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            com.webengage.sdk.android.am r4 = com.webengage.sdk.android.am.CREATED_AT
            java.lang.String r4 = r4.toString()
            java.util.Date r6 = new java.util.Date
            r6.<init>()
            com.webengage.sdk.android.actions.database.f r7 = com.webengage.sdk.android.actions.database.f.USER
            r2.a((java.lang.String) r8, (java.lang.String) r4, (java.lang.Object) r6, (com.webengage.sdk.android.actions.database.f) r7)
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            com.webengage.sdk.android.am r4 = com.webengage.sdk.android.am.REFERRER_TYPE
            java.lang.String r4 = r4.toString()
            com.webengage.sdk.android.actions.database.f r6 = com.webengage.sdk.android.actions.database.f.USER
            java.lang.String r7 = "direct"
            r2.a((java.lang.String) r8, (java.lang.String) r4, (java.lang.Object) r7, (com.webengage.sdk.android.actions.database.f) r6)
            goto L_0x0683
        L_0x0674:
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.Long r4 = java.lang.Long.valueOf(r16)
            com.webengage.sdk.android.actions.database.f r6 = com.webengage.sdk.android.actions.database.f.ANDROID
            java.lang.String r7 = "b_session_count"
            r2.a((java.lang.String) r8, (java.lang.String) r7, (java.lang.Number) r4, (com.webengage.sdk.android.actions.database.f) r6)
        L_0x0683:
            com.webengage.sdk.android.AbstractWebEngage r2 = com.webengage.sdk.android.WebEngage.get()
            com.webengage.sdk.android.WebEngageConfig r2 = r2.getWebEngageConfig()
            boolean r2 = r2.isLocationTrackingEnabled()
            if (r2 == 0) goto L_0x06dc
            android.content.Context r2 = r1.f5359b
            com.webengage.sdk.android.o r2 = com.webengage.sdk.android.p.a(r2)
            android.location.Location r2 = r2.b()
            if (r2 == 0) goto L_0x06dc
            java.util.HashMap r4 = new java.util.HashMap
            r4.<init>()
            double r6 = r2.getLatitude()
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "latitude"
            r4.put(r7, r6)
            double r6 = r2.getLongitude()
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            java.lang.String r7 = "longitude"
            r4.put(r7, r6)
            double r6 = r2.getLatitude()
            java.lang.Double r6 = java.lang.Double.valueOf(r6)
            double r9 = r2.getLongitude()
            java.lang.Double r2 = java.lang.Double.valueOf(r9)
            java.util.Map r2 = r3.a((java.lang.Double) r6, (java.lang.Double) r2)
            if (r2 == 0) goto L_0x06d5
            r4.putAll(r2)
        L_0x06d5:
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r2.a((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r4)
        L_0x06dc:
            java.util.Map r2 = r3.a()
            com.webengage.sdk.android.actions.database.DataHolder r4 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r4.b((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r2)
            r1.a(r0, r3, r5)
            goto L_0x082a
        L_0x06ec:
            java.lang.String r4 = "visitor_session_close"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0720
            com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
            java.lang.String r2 = r2.b()
            java.lang.String r4 = "online"
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto L_0x071a
            java.util.HashMap r2 = new java.util.HashMap
            r2.<init>()
            java.util.Date r4 = new java.util.Date
            r4.<init>()
            java.lang.String r5 = "last_seen"
            r2.put(r5, r4)
            com.webengage.sdk.android.actions.database.DataHolder r4 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r4.a((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r2)
        L_0x071a:
            r2 = 0
            r1.a(r0, r3, r2)
            goto L_0x082a
        L_0x0720:
            java.lang.String r4 = "app_installed"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0735
            java.util.Map r2 = r0.k()
            com.webengage.sdk.android.actions.database.DataHolder r4 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r4.a((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r2)
            goto L_0x04f0
        L_0x0735:
            java.lang.String r4 = "app_upgraded"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L_0x0781
            java.lang.String r4 = "app_crashed"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0746
            goto L_0x0781
        L_0x0746:
            java.lang.String r4 = "gcm_registered"
            boolean r4 = r4.equals(r2)
            if (r4 == 0) goto L_0x0754
            r4 = 0
        L_0x074f:
            r1.a(r0, r3, r4)
            goto L_0x082a
        L_0x0754:
            r4 = 0
            java.lang.String r5 = "push_ping"
            boolean r5 = r5.equals(r2)
            if (r5 == 0) goto L_0x075e
            goto L_0x074f
        L_0x075e:
            java.lang.String r3 = "we_wk_session_delay"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L_0x0768
        L_0x0766:
            goto L_0x0827
        L_0x0768:
            java.lang.String r3 = "we_wk_page_delay"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L_0x0771
            goto L_0x0766
        L_0x0771:
            java.lang.String r3 = "we_wk_leave_intent"
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L_0x077a
            goto L_0x0766
        L_0x077a:
            java.lang.String r0 = "geofence_transition"
            r0.equals(r2)
            goto L_0x082a
        L_0x0781:
            java.util.Map r2 = r3.a()
            com.webengage.sdk.android.actions.database.DataHolder r4 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r4.b((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r2)
            goto L_0x04f0
        L_0x078e:
            java.util.Map r2 = r0.k()
            r1.c = r2
            java.lang.Object r2 = r1.c
            java.util.Map r2 = (java.util.Map) r2
            java.lang.String r4 = "id"
            java.lang.Object r2 = r2.get(r4)
            java.lang.String r2 = (java.lang.String) r2
            java.util.Map r4 = r0.l()
            if (r4 == 0) goto L_0x07b2
            java.lang.String r5 = "dismiss_flag"
            java.lang.Object r4 = r4.get(r5)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r5 = r4.booleanValue()
        L_0x07b2:
            com.webengage.sdk.android.utils.WebEngageConstant$a r4 = com.webengage.sdk.android.utils.WebEngageConstant.a.PUSH
            r1.a((com.webengage.sdk.android.l) r0, (com.webengage.sdk.android.utils.WebEngageConstant.a) r4)
            r1.a((com.webengage.sdk.android.l) r0)
            r4 = 0
            r1.a(r0, r3, r4)
            r1.b((com.webengage.sdk.android.l) r0)
            if (r5 == 0) goto L_0x082a
            goto L_0x051e
        L_0x07c5:
            java.util.Map r4 = r0.k()
            com.webengage.sdk.android.actions.database.DataHolder r5 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r5.a((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r4)
            java.lang.String r5 = "user_update_geo_info"
            boolean r5 = r5.equals(r2)
            if (r5 == 0) goto L_0x07ff
            java.lang.String r5 = "latitude"
            java.lang.Object r5 = r4.get(r5)
            java.lang.Double r5 = (java.lang.Double) r5
            java.lang.String r6 = "longitude"
            java.lang.Object r6 = r4.get(r6)
            java.lang.Double r6 = (java.lang.Double) r6
            if (r5 == 0) goto L_0x07ff
            if (r6 == 0) goto L_0x07ff
            java.util.Map r3 = r3.a((java.lang.Double) r5, (java.lang.Double) r6)
            com.webengage.sdk.android.actions.database.DataHolder r5 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r5.a((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r3)
            if (r3 == 0) goto L_0x07ff
            r4.putAll(r3)
            r0.b((java.util.Map<java.lang.String, java.lang.Object>) r4)
        L_0x07ff:
            java.util.Map r0 = r0.j()
            com.webengage.sdk.android.actions.database.DataHolder r3 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r3.c((java.lang.String) r8, (java.util.Map<java.lang.String, java.lang.Object>) r0)
            java.lang.String r0 = "user_update"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x0818
            java.lang.String r0 = "User attributes successfully saved"
        L_0x0814:
            com.webengage.sdk.android.Logger.d(r7, r0)
            goto L_0x082a
        L_0x0818:
            java.lang.String r0 = "user_delete_attributes"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x082a
            java.lang.String r0 = "User attributes successfully removed"
            goto L_0x0814
        L_0x0823:
            r2 = 0
            r1.a(r0, r3, r2)
        L_0x0827:
            r1.b((com.webengage.sdk.android.l) r0)
        L_0x082a:
            r2 = 0
        L_0x082b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.h.a(java.lang.Object):java.lang.Object");
    }

    public Object a(Map<String, Object> map) {
        return map;
    }

    public void b(Object obj) {
    }
}
