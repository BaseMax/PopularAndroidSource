package com.webengage.sdk.android.actions.rules;

import android.content.Context;
import com.webengage.sdk.android.a;
import com.webengage.sdk.android.actions.database.DataHolder;
import com.webengage.sdk.android.actions.rules.a.e;
import com.webengage.sdk.android.l;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.k;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

class f extends a {

    /* renamed from: b  reason: collision with root package name */
    String f5458b = null;
    private Context c = null;
    private List<WebEngageConstant.c> d = null;

    protected f(Context context) {
        super(context);
        this.c = context.getApplicationContext();
    }

    private String a(String str, Map<String, Object> map) {
        double a2 = k.a(str, this.f5458b);
        if (map != null) {
            List list = (List) map.get("variations");
            if (list != null) {
                double d2 = 0.0d;
                for (int i = 0; i < list.size(); i++) {
                    Map map2 = (Map) list.get(i);
                    if (map2 != null) {
                        double doubleValue = map2.get("sampling") == null ? 100.0d : ((Double) map2.get("sampling")).doubleValue();
                        if (a2 >= d2 && a2 < d2 + doubleValue) {
                            return (String) map2.get("id");
                        }
                        d2 += doubleValue;
                    }
                }
            }
        }
        return null;
    }

    private boolean a(String str, Map<String, Object> map, Map<String, Object> map2, WebEngageConstant.a aVar) {
        Long l = (Long) map.get("maxTimesPerUser");
        boolean z = (l == null || (DataHolder.get().a(map, aVar).longValue() > l.longValue() ? 1 : (DataHolder.get().a(map, aVar).longValue() == l.longValue() ? 0 : -1)) < 0) && DataHolder.get().d(map, aVar).longValue() < 1 && DataHolder.get().b(map, aVar).longValue() < 1 && DataHolder.get().c(map, aVar).longValue() < 1;
        if (map2 != null) {
            List list = (List) map2.get("targetActivities");
            boolean booleanValue = map.containsKey("skipTargetPage") ? Boolean.valueOf(map.get("skipTargetPage").toString()).booleanValue() : false;
            if (list != null && !list.isEmpty() && booleanValue) {
                z = z && !list.contains(DataHolder.get().n());
            }
        }
        Long valueOf = Long.valueOf(map.get("startTimestamp") == null ? Long.MIN_VALUE : ((Long) map.get("startTimestamp")).longValue());
        Long valueOf2 = Long.valueOf(map.get("endTimestamp") == null ? Long.MAX_VALUE : ((Long) map.get("endTimestamp")).longValue());
        Long valueOf3 = Long.valueOf(System.currentTimeMillis());
        return z && valueOf3.longValue() >= valueOf.longValue() && valueOf3.longValue() <= valueOf2.longValue();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0062, code lost:
        if (r0.d.get(1) == com.webengage.sdk.android.utils.WebEngageConstant.c.PAGE_RULE) goto L_0x0073;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object a(java.lang.Object r19) {
        /*
            r18 = this;
            r0 = r18
            java.lang.String r1 = "order"
            java.lang.String r2 = r18.h()
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L_0x0013
            java.lang.String r2 = r18.i()
            goto L_0x0017
        L_0x0013:
            java.lang.String r2 = r18.h()
        L_0x0017:
            r0.f5458b = r2
            r2 = r19
            java.util.Map r2 = (java.util.Map) r2
            java.lang.String r3 = "execution_chain"
            java.lang.Object r3 = r2.get(r3)
            java.util.List r3 = (java.util.List) r3
            r0.d = r3
            java.lang.String r3 = "event_state_data"
            java.lang.Object r2 = r2.get(r3)
            com.webengage.sdk.android.l r2 = (com.webengage.sdk.android.l) r2
            if (r2 == 0) goto L_0x0073
            boolean r3 = r0.a((com.webengage.sdk.android.l) r2)
            if (r3 == 0) goto L_0x0073
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$c> r3 = r0.d
            int r3 = r3.size()
            r4 = 0
            r5 = 1
            if (r3 <= 0) goto L_0x0065
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$c> r3 = r0.d
            java.lang.Object r3 = r3.get(r4)
            com.webengage.sdk.android.utils.WebEngageConstant$c r6 = com.webengage.sdk.android.utils.WebEngageConstant.c.SESSION_RULE
            if (r3 == r6) goto L_0x0052
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$c> r3 = r0.d
            com.webengage.sdk.android.utils.WebEngageConstant$c r6 = com.webengage.sdk.android.utils.WebEngageConstant.c.SESSION_RULE
            r3.add(r4, r6)
        L_0x0052:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$c> r3 = r0.d
            int r3 = r3.size()
            if (r3 <= r5) goto L_0x006c
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$c> r3 = r0.d
            java.lang.Object r3 = r3.get(r5)
            com.webengage.sdk.android.utils.WebEngageConstant$c r4 = com.webengage.sdk.android.utils.WebEngageConstant.c.PAGE_RULE
            if (r3 == r4) goto L_0x0073
            goto L_0x006c
        L_0x0065:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$c> r3 = r0.d
            com.webengage.sdk.android.utils.WebEngageConstant$c r6 = com.webengage.sdk.android.utils.WebEngageConstant.c.SESSION_RULE
            r3.add(r4, r6)
        L_0x006c:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$c> r3 = r0.d
            com.webengage.sdk.android.utils.WebEngageConstant$c r4 = com.webengage.sdk.android.utils.WebEngageConstant.c.PAGE_RULE
            r3.add(r5, r4)
        L_0x0073:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$c> r3 = r0.d
            java.util.Iterator r3 = r3.iterator()
            r5 = 0
        L_0x007a:
            boolean r6 = r3.hasNext()
            if (r6 == 0) goto L_0x01de
            java.lang.Object r6 = r3.next()
            com.webengage.sdk.android.utils.WebEngageConstant$c r6 = (com.webengage.sdk.android.utils.WebEngageConstant.c) r6
            com.webengage.sdk.android.utils.WebEngageConstant$c r7 = com.webengage.sdk.android.utils.WebEngageConstant.c.PAGE_RULE
            boolean r7 = r6.equals(r7)
            if (r7 == 0) goto L_0x013c
            com.webengage.sdk.android.actions.rules.RuleExecutor r6 = com.webengage.sdk.android.actions.rules.h.a()
            java.util.List r7 = r18.a()
            r6.setCompetingIds(r7)
            java.util.Map r6 = r18.b()
            com.webengage.sdk.android.actions.rules.RuleExecutor r7 = com.webengage.sdk.android.actions.rules.h.a()
            com.webengage.sdk.android.utils.WebEngageConstant$c r8 = com.webengage.sdk.android.utils.WebEngageConstant.c.PAGE_RULE
            java.util.List r7 = r7.evaluateRulesByCategory(r8)
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch:{ Exception -> 0x0139 }
            r8.<init>()     // Catch:{ Exception -> 0x0139 }
            int r5 = r7.size()     // Catch:{ Exception -> 0x0136 }
            if (r5 <= 0) goto L_0x012f
            com.webengage.sdk.android.actions.rules.c r5 = new com.webengage.sdk.android.actions.rules.c     // Catch:{ Exception -> 0x0136 }
            android.content.Context r9 = r0.c     // Catch:{ Exception -> 0x0136 }
            r5.<init>((android.content.Context) r9)     // Catch:{ Exception -> 0x0136 }
            java.util.Iterator r7 = r7.iterator()     // Catch:{ Exception -> 0x0136 }
            r9 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r11 = r9
        L_0x00c3:
            boolean r13 = r7.hasNext()     // Catch:{ Exception -> 0x0136 }
            if (r13 == 0) goto L_0x012f
            java.lang.Object r13 = r7.next()     // Catch:{ Exception -> 0x0136 }
            java.lang.String r13 = (java.lang.String) r13     // Catch:{ Exception -> 0x0136 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r14 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0136 }
            java.util.Map r14 = r5.a((java.lang.String) r13, (com.webengage.sdk.android.utils.WebEngageConstant.a) r14)     // Catch:{ Exception -> 0x0136 }
            java.lang.Object r15 = r14.get(r1)     // Catch:{ Exception -> 0x0136 }
            if (r15 != 0) goto L_0x00e1
            r15 = 0
        L_0x00dd:
            r17 = r5
            r4 = r15
            goto L_0x00ec
        L_0x00e1:
            java.lang.Object r15 = r14.get(r1)     // Catch:{ Exception -> 0x0136 }
            java.lang.Long r15 = (java.lang.Long) r15     // Catch:{ Exception -> 0x0136 }
            long r15 = r15.longValue()     // Catch:{ Exception -> 0x0136 }
            goto L_0x00dd
        L_0x00ec:
            int r15 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
            if (r15 == 0) goto L_0x00f8
            int r15 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r15 != 0) goto L_0x00f5
            goto L_0x00f8
        L_0x00f5:
            r9 = r17
            goto L_0x0128
        L_0x00f8:
            java.lang.Object r15 = r6.get(r13)     // Catch:{ Exception -> 0x0136 }
            java.util.Map r15 = (java.util.Map) r15     // Catch:{ Exception -> 0x0136 }
            if (r15 == 0) goto L_0x0115
            java.util.Set r15 = r15.keySet()     // Catch:{ Exception -> 0x0136 }
            java.util.Iterator r15 = r15.iterator()     // Catch:{ Exception -> 0x0136 }
            java.lang.Object r15 = r15.next()     // Catch:{ Exception -> 0x0136 }
            java.lang.String r15 = (java.lang.String) r15     // Catch:{ Exception -> 0x0136 }
            r9 = r17
            java.util.Map r10 = r9.b(r15, r14)     // Catch:{ Exception -> 0x0136 }
            goto L_0x0118
        L_0x0115:
            r9 = r17
            r10 = 0
        L_0x0118:
            com.webengage.sdk.android.utils.WebEngageConstant$a r15 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0136 }
            boolean r10 = r0.a(r13, r14, r10, r15)     // Catch:{ Exception -> 0x0136 }
            if (r10 == 0) goto L_0x0128
            long r4 = java.lang.Math.min(r4, r11)     // Catch:{ Exception -> 0x0136 }
            r8.add(r13)     // Catch:{ Exception -> 0x0136 }
            r11 = r4
        L_0x0128:
            r5 = r9
            r9 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L_0x00c3
        L_0x012f:
            com.webengage.sdk.android.actions.rules.RuleExecutor r4 = com.webengage.sdk.android.actions.rules.h.a()     // Catch:{ Exception -> 0x0136 }
            r4.setCompetingIds(r8)     // Catch:{ Exception -> 0x0136 }
        L_0x0136:
            r5 = r8
            goto L_0x007a
        L_0x0139:
            goto L_0x007a
        L_0x013c:
            com.webengage.sdk.android.utils.WebEngageConstant$c r4 = com.webengage.sdk.android.utils.WebEngageConstant.c.SESSION_RULE
            boolean r4 = r6.equals(r4)
            if (r4 == 0) goto L_0x01c9
            com.webengage.sdk.android.actions.rules.c r4 = new com.webengage.sdk.android.actions.rules.c     // Catch:{ Exception -> 0x0139 }
            android.content.Context r6 = r0.c     // Catch:{ Exception -> 0x0139 }
            r4.<init>((android.content.Context) r6)     // Catch:{ Exception -> 0x0139 }
            com.webengage.sdk.android.actions.rules.RuleExecutor r6 = com.webengage.sdk.android.actions.rules.h.a()     // Catch:{ Exception -> 0x0139 }
            r6.reset()     // Catch:{ Exception -> 0x0139 }
            com.webengage.sdk.android.actions.rules.RuleExecutor r6 = com.webengage.sdk.android.actions.rules.h.a()     // Catch:{ Exception -> 0x0139 }
            com.webengage.sdk.android.utils.WebEngageConstant$c r7 = com.webengage.sdk.android.utils.WebEngageConstant.c.SESSION_RULE     // Catch:{ Exception -> 0x0139 }
            java.util.List r5 = r6.evaluateRulesByCategory(r7)     // Catch:{ Exception -> 0x0139 }
            java.util.Iterator r6 = r5.iterator()     // Catch:{ Exception -> 0x0139 }
            java.util.HashMap r7 = new java.util.HashMap     // Catch:{ Exception -> 0x0139 }
            r7.<init>()     // Catch:{ Exception -> 0x0139 }
            java.util.HashSet r8 = new java.util.HashSet     // Catch:{ Exception -> 0x0139 }
            r8.<init>()     // Catch:{ Exception -> 0x0139 }
        L_0x016a:
            boolean r9 = r6.hasNext()     // Catch:{ Exception -> 0x0139 }
            if (r9 == 0) goto L_0x01a1
            java.lang.Object r9 = r6.next()     // Catch:{ Exception -> 0x0139 }
            java.lang.String r9 = (java.lang.String) r9     // Catch:{ Exception -> 0x0139 }
            com.webengage.sdk.android.utils.WebEngageConstant$a r10 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ Exception -> 0x0139 }
            java.util.Map r10 = r4.a((java.lang.String) r9, (com.webengage.sdk.android.utils.WebEngageConstant.a) r10)     // Catch:{ Exception -> 0x0139 }
            java.lang.String r11 = r0.a(r9, r10)     // Catch:{ Exception -> 0x0139 }
            if (r11 == 0) goto L_0x016a
            java.util.Map r10 = r4.b(r11, r10)     // Catch:{ Exception -> 0x0139 }
            java.lang.String r12 = "layout"
            java.lang.Object r10 = r10.get(r12)     // Catch:{ Exception -> 0x0139 }
            java.lang.String r10 = (java.lang.String) r10     // Catch:{ Exception -> 0x0139 }
            java.lang.String r12 = r4.a((java.lang.String) r10)     // Catch:{ Exception -> 0x0139 }
            r8.add(r12)     // Catch:{ Exception -> 0x0139 }
            java.util.HashMap r12 = new java.util.HashMap     // Catch:{ Exception -> 0x0139 }
            r12.<init>()     // Catch:{ Exception -> 0x0139 }
            r12.put(r11, r10)     // Catch:{ Exception -> 0x0139 }
            r7.put(r9, r12)     // Catch:{ Exception -> 0x0139 }
            goto L_0x016a
        L_0x01a1:
            boolean r4 = r8.isEmpty()     // Catch:{ Exception -> 0x0139 }
            if (r4 != 0) goto L_0x01ba
            if (r2 == 0) goto L_0x01ba
            java.lang.String r4 = "visitor_new_session"
            java.lang.String r6 = r2.h()     // Catch:{ Exception -> 0x0139 }
            boolean r4 = r4.equals(r6)     // Catch:{ Exception -> 0x0139 }
            if (r4 == 0) goto L_0x01ba
            android.content.Context r4 = r0.c     // Catch:{ Exception -> 0x0139 }
            com.webengage.sdk.android.utils.f.a((java.util.Set<java.lang.String>) r8, (android.content.Context) r4)     // Catch:{ Exception -> 0x0139 }
        L_0x01ba:
            com.webengage.sdk.android.actions.rules.RuleExecutor r4 = com.webengage.sdk.android.actions.rules.h.a()     // Catch:{ Exception -> 0x0139 }
            r4.setCompetingIds(r5)     // Catch:{ Exception -> 0x0139 }
            r0.a((java.util.List<java.lang.String>) r5)     // Catch:{ Exception -> 0x0139 }
            r0.d(r7)     // Catch:{ Exception -> 0x0139 }
            goto L_0x007a
        L_0x01c9:
            com.webengage.sdk.android.utils.WebEngageConstant$c r4 = com.webengage.sdk.android.utils.WebEngageConstant.c.EVENT_RULE
            boolean r4 = r6.equals(r4)
            if (r4 == 0) goto L_0x007a
            com.webengage.sdk.android.actions.rules.RuleExecutor r4 = com.webengage.sdk.android.actions.rules.h.a()
            com.webengage.sdk.android.utils.WebEngageConstant$c r5 = com.webengage.sdk.android.utils.WebEngageConstant.c.EVENT_RULE
            java.util.List r4 = r4.evaluateRulesByCategory(r5)
            r5 = r4
            goto L_0x007a
        L_0x01de:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.f.a(java.lang.Object):java.lang.Object");
    }

    public Object a(Map<String, Object> map) {
        return map;
    }

    public boolean a(l lVar) {
        String h = lVar.h();
        boolean z = false;
        if (h != null) {
            if ("system".equals(lVar.f()) && !h.startsWith("we_")) {
                h = "we_".concat(String.valueOf(h));
            }
            List<d> eventCriteriasForEvent = h.a().getEventCriteriasForEvent(h);
            if (eventCriteriasForEvent != null) {
                for (d next : eventCriteriasForEvent) {
                    Object a2 = next.e().a();
                    if (a2 != null && ((Boolean) a2).booleanValue()) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(com.webengage.sdk.android.actions.database.f.EVENT.toString());
                        arrayList.add(h);
                        if ("system".equals(next.d())) {
                            arrayList.add("we_wk_sys");
                        }
                        arrayList.add(next.c());
                        Object a3 = DataHolder.get().a((List<? extends Object>) arrayList);
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(a3);
                        arrayList2.add(DataHolder.get().d(next.a()));
                        e function = h.a().getFunction(next.b());
                        Object a4 = function != null ? function.a(arrayList2) : null;
                        if (a4 != null) {
                            z = true;
                            DataHolder.get().a(this.f5458b, next.a(), (Map) a4);
                        }
                    }
                }
            }
        }
        return z;
    }

    public void b(Object obj) {
        List list = (List) obj;
        if (list != null) {
            RuleExecutor a2 = h.a();
            List<WebEngageConstant.c> list2 = this.d;
            List<String> filterRenderingIds = a2.filterRenderingIds(list, list2.get(list2.size() - 1));
            if (filterRenderingIds.size() > 0) {
                e(filterRenderingIds);
            }
        }
    }
}
