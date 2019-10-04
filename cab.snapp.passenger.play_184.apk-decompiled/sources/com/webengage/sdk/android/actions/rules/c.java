package com.webengage.sdk.android.actions.rules;

import android.content.Context;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.actions.database.DataHolder;
import com.webengage.sdk.android.actions.rules.d;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class c {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f5449a;

    /* renamed from: b  reason: collision with root package name */
    private Context f5450b;

    /* renamed from: com.webengage.sdk.android.actions.rules.c$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5451a = new int[WebEngageConstant.a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                com.webengage.sdk.android.utils.WebEngageConstant$a[] r0 = com.webengage.sdk.android.utils.WebEngageConstant.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5451a = r0
                int[] r0 = f5451a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.utils.WebEngageConstant$a r1 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5451a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.utils.WebEngageConstant$a r1 = com.webengage.sdk.android.utils.WebEngageConstant.a.SURVEY     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.c.AnonymousClass1.<clinit>():void");
        }
    }

    public c(Context context) {
        this.f5450b = context.getApplicationContext();
        g i = new f.a(WebEngageConstant.d.a(WebEngage.get().getWebEngageConfig().getWebEngageKey()), e.GET, context.getApplicationContext()).b(4).a().i();
        if (i.i()) {
            this.f5449a = com.webengage.sdk.android.utils.f.a(i.e(), false);
        } else {
            i.n();
            throw new IOException("Some error during parsing config");
        }
    }

    public c(Map<String, Object> map) {
        this.f5449a = map;
    }

    private e b(Map<String, Object> map) {
        Map map2 = (Map) map.get("rules");
        if (map2 == null) {
            return new e("true", "true", "true");
        }
        String str = (String) map2.get(WebEngageConstant.c.SESSION_RULE.toString());
        String str2 = (String) map2.get(WebEngageConstant.c.PAGE_RULE.toString());
        String str3 = (String) map2.get(WebEngageConstant.c.EVENT_RULE.toString());
        if (str == null) {
            str = "true";
        }
        if (str2 == null) {
            str2 = "true";
        }
        if (str3 == null) {
            str3 = "true";
        }
        return new e(str, str2, str3);
    }

    private Set<String> f() {
        HashSet hashSet = new HashSet();
        List list = (List) this.f5449a.get(WebEngageConstant.f5567b.get(0).f5570a);
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                List list2 = (List) list.get(i);
                if (list2 != null) {
                    for (int i2 = 0; i2 < list2.size(); i2++) {
                        Map map = (Map) list2.get(i2);
                        if (map != null) {
                            hashSet.addAll(a((Map<String, Object>) map, WebEngageConstant.a.NOTIFICATION));
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    private Set<String> g() {
        return new HashSet();
    }

    private Map<String, List<d>> h() {
        HashMap hashMap = new HashMap();
        List<Object> d = d();
        if (d != null) {
            for (int i = 0; i < d.size(); i++) {
                Map map = (Map) d.get(i);
                if (!(map == null || map.get("function") == null)) {
                    d a2 = new d.a().a((String) map.get("criteria_id")).b(map.get("function").toString()).c((String) map.get("attribute")).d((String) map.get("attributeCategory")).a(new com.webengage.sdk.android.actions.rules.a.d((String) map.get("rule"))).a();
                    String str = (String) map.get("eventName");
                    if (hashMap.get(str) == null) {
                        hashMap.put(str, new ArrayList());
                    }
                    ((List) hashMap.get(str)).add(a2);
                }
            }
        }
        return hashMap;
    }

    public String a(String str) {
        return WebEngageConstant.d.a(b(), str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x003c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Map<java.lang.String, java.lang.Object> a(java.lang.String r9, com.webengage.sdk.android.utils.WebEngageConstant.a r10) {
        /*
            r8 = this;
            int[] r0 = com.webengage.sdk.android.actions.rules.c.AnonymousClass1.f5451a
            int r10 = r10.ordinal()
            r10 = r0[r10]
            r0 = 0
            r1 = 0
            r2 = 1
            if (r10 == r2) goto L_0x0019
            r3 = 2
            if (r10 == r3) goto L_0x0012
            r10 = r0
            goto L_0x0021
        L_0x0012:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$b> r10 = com.webengage.sdk.android.utils.WebEngageConstant.f5567b
            java.lang.Object r10 = r10.get(r2)
            goto L_0x001f
        L_0x0019:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$b> r10 = com.webengage.sdk.android.utils.WebEngageConstant.f5567b
            java.lang.Object r10 = r10.get(r1)
        L_0x001f:
            com.webengage.sdk.android.utils.WebEngageConstant$b r10 = (com.webengage.sdk.android.utils.WebEngageConstant.b) r10
        L_0x0021:
            java.util.Map<java.lang.String, java.lang.Object> r2 = r8.f5449a
            java.lang.String r3 = r10.f5570a
            java.lang.Object r2 = r2.get(r3)
            java.util.List r2 = (java.util.List) r2
            if (r2 == 0) goto L_0x006a
            if (r9 == 0) goto L_0x006a
            boolean r3 = r9.isEmpty()
            if (r3 != 0) goto L_0x006a
            r3 = 0
        L_0x0036:
            int r4 = r2.size()
            if (r3 >= r4) goto L_0x006a
            java.lang.Object r4 = r2.get(r3)
            java.util.List r4 = (java.util.List) r4
            if (r4 == 0) goto L_0x0067
            r5 = 0
        L_0x0045:
            int r6 = r4.size()
            if (r5 >= r6) goto L_0x0067
            java.lang.Object r6 = r4.get(r5)
            java.util.Map r6 = (java.util.Map) r6
            if (r6 == 0) goto L_0x0064
            java.lang.String r7 = r10.f5571b
            java.lang.Object r7 = r6.get(r7)
            java.lang.String r7 = (java.lang.String) r7
            if (r7 == 0) goto L_0x0064
            boolean r7 = r7.equals(r9)
            if (r7 == 0) goto L_0x0064
            return r6
        L_0x0064:
            int r5 = r5 + 1
            goto L_0x0045
        L_0x0067:
            int r3 = r3 + 1
            goto L_0x0036
        L_0x006a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.c.a(java.lang.String, com.webengage.sdk.android.utils.WebEngageConstant$a):java.util.Map");
    }

    public Set<String> a() {
        Set<String> c = c();
        c.addAll(f());
        c.addAll(g());
        c.add(WebEngageConstant.d.a(WebEngage.get().getWebEngageConfig().getWebEngageKey()));
        return c;
    }

    public Set<String> a(RuleExecutor ruleExecutor, DataHolder dataHolder) {
        c cVar = this;
        RuleExecutor ruleExecutor2 = ruleExecutor;
        HashMap hashMap = new HashMap();
        hashMap.put("tzo", cVar.f5449a.get("tzo"));
        hashMap.put("events", cVar.f5449a.get("events"));
        hashMap.put("gbp", b());
        hashMap.put("geoFences", cVar.f5449a.get("geoFences"));
        hashMap.put("upfc", cVar.f5449a.get("upfc"));
        hashMap.put("jcxPollTime", cVar.f5449a.get("jcxPollTime"));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashMap hashMap2 = new HashMap();
        HashSet hashSet = new HashSet();
        for (WebEngageConstant.b next : WebEngageConstant.f5567b) {
            String str = next.f5570a;
            String str2 = next.f5571b;
            List list = (List) cVar.f5449a.get(str);
            if (list != null) {
                int i = 0;
                while (i < list.size()) {
                    List list2 = (List) list.get(i);
                    if (list2 != null) {
                        int i2 = 0;
                        while (i2 < list2.size()) {
                            Map map = (Map) list2.get(i2);
                            if (map != null) {
                                String str3 = (String) map.get(str2);
                                if (str3 != null) {
                                    hashSet.add(str3);
                                    linkedHashMap.put(str3, cVar.b(map));
                                    List list3 = (List) map.get("variations");
                                    if (list3 != null) {
                                        int i3 = 0;
                                        while (i3 < list3.size()) {
                                            Map map2 = (Map) list3.get(i3);
                                            if (map2 != null) {
                                                String str4 = (String) map2.get("id");
                                                List list4 = (List) map2.get("tokens");
                                                if (!(list4 == null || str4 == null)) {
                                                    hashMap2.put(str4, list4);
                                                }
                                            }
                                            i3++;
                                        }
                                    }
                                }
                            }
                            i2++;
                            cVar = this;
                        }
                    }
                    i++;
                    cVar = this;
                }
            }
            cVar = this;
        }
        ruleExecutor2.setRuleMap(linkedHashMap);
        ruleExecutor2.setEventCriteriaMap(h());
        hashMap.put("tokens", hashMap2);
        dataHolder.a("config", (Object) hashMap);
        return hashSet;
    }

    public Set<String> a(String str, Map<String, Object> map) {
        HashSet hashSet = new HashSet();
        hashSet.add(a((String) map.get("layout")));
        hashSet.addAll(a(map));
        return hashSet;
    }

    public Set<String> a(Map<String, Object> map) {
        HashSet hashSet = new HashSet();
        try {
            ArrayList arrayList = (ArrayList) map.get("resources");
            if (arrayList != null) {
                hashSet.addAll(arrayList);
            }
        } catch (Exception unused) {
        }
        return hashSet;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0037 A[LOOP:0: B:10:0x0037->B:15:0x004c, LOOP_START, PHI: r0 
  PHI: (r0v2 int) = (r0v1 int), (r0v3 int) binds: [B:9:0x0035, B:15:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Set<java.lang.String> a(java.util.Map<java.lang.String, java.lang.Object> r4, com.webengage.sdk.android.utils.WebEngageConstant.a r5) {
        /*
            r3 = this;
            int[] r0 = com.webengage.sdk.android.actions.rules.c.AnonymousClass1.f5451a
            int r5 = r5.ordinal()
            r5 = r0[r5]
            r0 = 0
            r1 = 1
            if (r5 == r1) goto L_0x0018
            r2 = 2
            if (r5 == r2) goto L_0x0011
            r5 = 0
            goto L_0x0022
        L_0x0011:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$b> r5 = com.webengage.sdk.android.utils.WebEngageConstant.f5567b
            java.lang.Object r5 = r5.get(r1)
            goto L_0x001e
        L_0x0018:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$b> r5 = com.webengage.sdk.android.utils.WebEngageConstant.f5567b
            java.lang.Object r5 = r5.get(r0)
        L_0x001e:
            com.webengage.sdk.android.utils.WebEngageConstant$b r5 = (com.webengage.sdk.android.utils.WebEngageConstant.b) r5
            java.lang.String r5 = r5.f5571b
        L_0x0022:
            java.lang.Object r5 = r4.get(r5)
            java.lang.String r5 = (java.lang.String) r5
            java.lang.String r1 = "variations"
            java.lang.Object r4 = r4.get(r1)
            java.util.List r4 = (java.util.List) r4
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            if (r4 == 0) goto L_0x004f
        L_0x0037:
            int r2 = r4.size()
            if (r0 >= r2) goto L_0x004f
            java.lang.Object r2 = r4.get(r0)
            java.util.Map r2 = (java.util.Map) r2
            if (r2 == 0) goto L_0x004c
            java.util.Set r2 = r3.a((java.lang.String) r5, (java.util.Map<java.lang.String, java.lang.Object>) r2)
            r1.addAll(r2)
        L_0x004c:
            int r0 = r0 + 1
            goto L_0x0037
        L_0x004f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.c.a(java.util.Map, com.webengage.sdk.android.utils.WebEngageConstant$a):java.util.Set");
    }

    public String b() {
        return (String) this.f5449a.get("gbp");
    }

    public Map<String, Object> b(String str, Map<String, Object> map) {
        List list = (List) map.get("variations");
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                Map<String, Object> map2 = (Map) list.get(i);
                if (map2 != null && str.equals((String) map2.get("id"))) {
                    return map2;
                }
            }
        }
        return null;
    }

    public Set<String> c() {
        HashSet hashSet = new HashSet();
        String b2 = b();
        if (b2 != null) {
            List list = (List) this.f5449a.get("grs");
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    hashSet.add(b2 + ((String) it.next()));
                }
            }
        }
        return hashSet;
    }

    public List<Object> d() {
        return (List) this.f5449a.get("ecl");
    }

    public Set<String> e() {
        HashSet hashSet = new HashSet();
        List<Object> d = d();
        if (d != null) {
            for (int i = 0; i < d.size(); i++) {
                Map map = (Map) d.get(i);
                if (map != null) {
                    hashSet.add((String) map.get("criteria_id"));
                }
            }
        }
        return hashSet;
    }
}
