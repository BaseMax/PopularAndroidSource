package com.webengage.sdk.android.actions.database;

import com.webengage.sdk.android.ai;
import com.webengage.sdk.android.am;
import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.WebEngageConstant;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class DataHolder {

    /* renamed from: a  reason: collision with root package name */
    private static DataHolder f5341a;
    private static final Object c = new Object();

    /* renamed from: b  reason: collision with root package name */
    private List<n> f5342b;
    public Map<String, Object> container;
    private List<Object> d;

    /* renamed from: com.webengage.sdk.android.actions.database.DataHolder$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5343a = new int[WebEngageConstant.a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        static {
            /*
                com.webengage.sdk.android.utils.WebEngageConstant$a[] r0 = com.webengage.sdk.android.utils.WebEngageConstant.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5343a = r0
                int[] r0 = f5343a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.utils.WebEngageConstant$a r1 = com.webengage.sdk.android.utils.WebEngageConstant.a.NOTIFICATION     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5343a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.utils.WebEngageConstant$a r1 = com.webengage.sdk.android.utils.WebEngageConstant.a.PUSH     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5343a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.webengage.sdk.android.utils.WebEngageConstant$a r1 = com.webengage.sdk.android.utils.WebEngageConstant.a.SURVEY     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.DataHolder.AnonymousClass1.<clinit>():void");
        }
    }

    private DataHolder() {
        this.container = null;
        this.d = null;
        this.container = new HashMap();
        this.f5342b = new ArrayList();
        this.d = new ArrayList();
    }

    private void a(List<Object> list, Object obj, String str, o oVar) {
        List<n> list2 = this.f5342b;
        if (list2 != null) {
            for (n a2 : list2) {
                a2.a(list, obj, str, oVar);
            }
        }
    }

    private void b(List<Object> list, Object obj, String str, o oVar) {
        Object obj2;
        int intValue;
        int intValue2;
        synchronized (c) {
            Object obj3 = this.container;
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                if (obj3 instanceof Map) {
                    obj2 = ((Map) obj3).get(list.get(i).toString());
                } else {
                    if (obj3 instanceof List) {
                        Integer valueOf = Integer.valueOf(Integer.parseInt(list.get(i).toString()));
                        if (valueOf.intValue() < ((List) obj3).size()) {
                            obj2 = ((List) obj3).get(valueOf.intValue());
                        }
                    }
                    obj2 = null;
                }
                if (i != list.size() - 1) {
                    if (obj2 == null) {
                        int i2 = i + 1;
                        Object hashMap = (i2 >= list.size() || !(list.get(i2) instanceof Number)) ? new HashMap() : new ArrayList();
                        if (obj3 instanceof Map) {
                            ((Map) obj3).put(list.get(i).toString(), hashMap);
                        } else if (obj3 instanceof List) {
                            List list2 = (List) obj3;
                            Integer valueOf2 = Integer.valueOf(Integer.parseInt(list.get(i).toString()));
                            if (list2.size() > valueOf2.intValue()) {
                                intValue = valueOf2.intValue();
                            } else {
                                for (int size = list2.size() + 1; size <= valueOf2.intValue() + 1; size++) {
                                    list2.add(null);
                                }
                                intValue = valueOf2.intValue();
                            }
                            list2.set(intValue, hashMap);
                        }
                    }
                    if (obj3 instanceof Map) {
                        obj3 = ((Map) obj3).get(list.get(i).toString());
                    } else if (obj3 instanceof List) {
                        obj3 = ((List) obj3).get(Integer.parseInt(list.get(i).toString()));
                    }
                } else if (!o.OPT_UPDATE.equals(oVar) || obj2 == null) {
                    if (obj3 instanceof Map) {
                        ((Map) obj3).put(list.get(i).toString(), obj);
                    } else if (obj3 instanceof List) {
                        List list3 = (List) obj3;
                        Integer valueOf3 = Integer.valueOf(Integer.parseInt(list.get(i).toString()));
                        if (list3.size() > valueOf3.intValue()) {
                            intValue2 = valueOf3.intValue();
                        } else {
                            for (int size2 = list3.size() + 1; size2 <= valueOf3.intValue() + 1; size2++) {
                                list3.add(null);
                            }
                            intValue2 = valueOf3.intValue();
                        }
                        list3.set(intValue2, obj);
                    }
                    z = true;
                }
            }
            if (z) {
                a(list, obj, str, oVar);
            }
        }
    }

    public static DataHolder get() {
        if (f5341a == null) {
            synchronized (c) {
                if (f5341a == null) {
                    f5341a = new DataHolder();
                }
            }
        }
        return f5341a;
    }

    public Map<String, List<Object>> A() {
        Map<String, List<Object>> map;
        synchronized (c) {
            this.d.clear();
            this.d.add("config");
            this.d.add("tokens");
            map = (Map) a((List<? extends Object>) this.d);
        }
        return map;
    }

    public Map<String, Object> B() {
        Map<String, Object> map;
        synchronized (c) {
            this.d.clear();
            this.d.add("config");
            this.d.add("upfc");
            map = (Map) a((List<? extends Object>) this.d);
        }
        return map;
    }

    public Map<String, Object> C() {
        Map<String, Object> map;
        synchronized (c) {
            this.d.clear();
            this.d.add("config");
            this.d.add("geoFences");
            map = (Map) a((List<? extends Object>) this.d);
        }
        return map;
    }

    public List<Object> D() {
        List<Object> list;
        synchronized (c) {
            this.d.clear();
            this.d.add("config");
            this.d.add("events");
            this.d.add("we_wk_session_delay");
            list = (List) a((List<? extends Object>) this.d);
        }
        return list;
    }

    public Long a(Map<String, Object> map, WebEngageConstant.a aVar) {
        Long valueOf;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.SCOPES.toString());
            List<Object> list = this.d;
            list.add(e(map, aVar) + "_view");
            Long l = (Long) a((List<? extends Object>) this.d);
            valueOf = Long.valueOf(l == null ? 0 : l.longValue());
        }
        return valueOf;
    }

    public Object a(String str) {
        Object obj;
        synchronized (c) {
            obj = this.container.get(str);
        }
        try {
            return DataType.cloneInternal(obj);
        } catch (Exception unused) {
            return null;
        }
    }

    public Object a(List<? extends Object> list) {
        Object obj;
        if (list == null) {
            return null;
        }
        synchronized (c) {
            obj = this.container.containsKey(list.get(0).toString()) ? this.container.get(list.get(0).toString()) : null;
            for (int i = 1; i < list.size(); i++) {
                if (obj != null) {
                    if (obj instanceof Map) {
                        Iterator it = ((Map) obj).entrySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry entry = (Map.Entry) it.next();
                            if (((String) entry.getKey()).equalsIgnoreCase(list.get(i).toString())) {
                                obj = entry.getValue();
                                break;
                            }
                        }
                    } else if (obj instanceof List) {
                        List list2 = (List) obj;
                        if (list.get(i) != null && list2.size() > Integer.parseInt(list.get(i).toString())) {
                            obj = list2.get(Integer.parseInt(list.get(i).toString()));
                        }
                    }
                    obj = null;
                }
            }
        }
        try {
            return DataType.cloneInternal(obj);
        } catch (Exception unused) {
            return null;
        }
    }

    public void a() {
        synchronized (c) {
            Map map = (Map) a(f.EVENT.toString());
            HashMap hashMap = null;
            if (map != null) {
                hashMap = new HashMap();
                for (Map.Entry entry : map.entrySet()) {
                    if (((String) entry.getKey()).equals("we_wk_session_delay")) {
                        hashMap.put("we_wk_session_delay", entry.getValue());
                    }
                }
            }
            this.d.clear();
            this.d.add(f.EVENT.toString());
            a(this.d, (Object) hashMap);
        }
    }

    public void a(long j) {
        synchronized (c) {
            this.container.put("f_activity_start_ep", Long.valueOf(j));
        }
    }

    public void a(n nVar) {
        if (this.f5342b == null) {
            this.f5342b = new ArrayList();
        }
        this.f5342b.add(nVar);
    }

    public void a(String str, f fVar) {
        synchronized (c) {
            Map map = (Map) a(fVar.toString());
            if (map != null) {
                for (Map.Entry key : map.entrySet()) {
                    String str2 = (String) key.getKey();
                    if (str2 != null && str2.endsWith("_session")) {
                        a(str, str2, (Object) null, fVar);
                    }
                }
            }
        }
    }

    public void a(String str, Object obj) {
        synchronized (c) {
            this.container.put(str, obj);
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't wrap try/catch for region: R(2:13|14) */
    /* JADX WARNING: Code restructure failed: missing block: B:14:?, code lost:
        b(r5.d, r7, r6, com.webengage.sdk.android.actions.database.o.f5369a);
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0045 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.lang.String r6, java.lang.String r7, java.lang.Number r8, com.webengage.sdk.android.actions.database.f r9) {
        /*
            r5 = this;
            java.lang.Object r0 = c
            monitor-enter(r0)
            java.util.List<java.lang.Object> r1 = r5.d     // Catch:{ all -> 0x004e }
            r1.clear()     // Catch:{ all -> 0x004e }
            java.util.List<java.lang.Object> r1 = r5.d     // Catch:{ all -> 0x004e }
            java.lang.String r9 = r9.toString()     // Catch:{ all -> 0x004e }
            r1.add(r9)     // Catch:{ all -> 0x004e }
            java.util.List<java.lang.Object> r9 = r5.d     // Catch:{ all -> 0x004e }
            r9.add(r7)     // Catch:{ all -> 0x004e }
            java.util.List<java.lang.Object> r7 = r5.d     // Catch:{ all -> 0x004e }
            java.lang.Object r7 = r5.a((java.util.List<? extends java.lang.Object>) r7)     // Catch:{ all -> 0x004e }
            java.lang.Number r7 = (java.lang.Number) r7     // Catch:{ all -> 0x004e }
            r9 = 0
            if (r7 != 0) goto L_0x0025
            java.lang.Integer r7 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x004e }
        L_0x0025:
            double r1 = r7.doubleValue()     // Catch:{ all -> 0x004e }
            double r3 = r8.doubleValue()     // Catch:{ all -> 0x004e }
            double r1 = r1 + r3
            java.lang.Double r7 = java.lang.Double.valueOf(r1)     // Catch:{ all -> 0x004e }
            com.webengage.sdk.android.utils.DataType r8 = com.webengage.sdk.android.utils.DataType.detect(r8)     // Catch:{ Exception -> 0x0045 }
            java.lang.Object r8 = com.webengage.sdk.android.utils.DataType.convert(r7, r8, r9)     // Catch:{ Exception -> 0x0045 }
            java.lang.Number r8 = (java.lang.Number) r8     // Catch:{ Exception -> 0x0045 }
            java.util.List<java.lang.Object> r7 = r5.d     // Catch:{ Exception -> 0x0044 }
            com.webengage.sdk.android.actions.database.o r9 = com.webengage.sdk.android.actions.database.o.INCREMENT     // Catch:{ Exception -> 0x0044 }
            r5.b(r7, r8, r6, r9)     // Catch:{ Exception -> 0x0044 }
            goto L_0x004c
        L_0x0044:
            r7 = r8
        L_0x0045:
            java.util.List<java.lang.Object> r8 = r5.d     // Catch:{ all -> 0x004e }
            com.webengage.sdk.android.actions.database.o r9 = com.webengage.sdk.android.actions.database.o.INCREMENT     // Catch:{ all -> 0x004e }
            r5.b(r8, r7, r6, r9)     // Catch:{ all -> 0x004e }
        L_0x004c:
            monitor-exit(r0)     // Catch:{ all -> 0x004e }
            return
        L_0x004e:
            r6 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x004e }
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.DataHolder.a(java.lang.String, java.lang.String, java.lang.Number, com.webengage.sdk.android.actions.database.f):void");
    }

    public void a(String str, String str2, Object obj, f fVar) {
        synchronized (c) {
            a(str, str2, obj, fVar, o.FORCE_UPDATE);
        }
    }

    /* access modifiers changed from: protected */
    public void a(String str, String str2, Object obj, f fVar, o oVar) {
        synchronized (c) {
            this.d.clear();
            this.d.add(fVar.toString());
            this.d.add(str2);
            b(this.d, obj, str, oVar);
        }
    }

    public void a(String str, String str2, Map<String, Object> map) {
        synchronized (c) {
            a(str, str2, (Object) map, f.EVENT_CRITERIA);
        }
    }

    /* access modifiers changed from: protected */
    public void a(String str, Map<String, Object> map) {
        synchronized (c) {
            if (map != null) {
                for (Map.Entry next : map.entrySet()) {
                    String str2 = (String) next.getKey();
                    if (am.a(str2) != null) {
                        a(str, str2, next.getValue(), f.USER);
                    }
                    if (ai.a(str2)) {
                        a(str, str2, next.getValue(), f.ANDROID);
                    }
                }
            }
        }
    }

    public void a(List<Object> list, Object obj) {
        b(list, obj, null, o.FORCE_UPDATE);
    }

    public void a(Map<String, Object> map) {
        synchronized (c) {
            this.container.putAll(map);
        }
    }

    public void a(boolean z) {
        AtomicBoolean atomicBoolean = (AtomicBoolean) a("entity_is_running");
        if (atomicBoolean == null) {
            atomicBoolean = new AtomicBoolean(false);
        }
        atomicBoolean.set(z);
        a("entity_is_running", (Object) atomicBoolean);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0050, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0061, code lost:
        return r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(com.webengage.sdk.android.utils.WebEngageConstant.a r4) {
        /*
            r3 = this;
            java.lang.Object r0 = c
            monitor-enter(r0)
            r1 = 1
            if (r4 == 0) goto L_0x0062
            int[] r2 = com.webengage.sdk.android.actions.database.DataHolder.AnonymousClass1.f5343a     // Catch:{ all -> 0x0064 }
            int r4 = r4.ordinal()     // Catch:{ all -> 0x0064 }
            r4 = r2[r4]     // Catch:{ all -> 0x0064 }
            if (r4 == r1) goto L_0x0051
            r2 = 2
            if (r4 == r2) goto L_0x0015
            monitor-exit(r0)     // Catch:{ all -> 0x0064 }
            return r1
        L_0x0015:
            com.webengage.sdk.android.am r4 = com.webengage.sdk.android.am.PUSH_OPT_IN     // Catch:{ all -> 0x0064 }
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x0064 }
            java.lang.Object r4 = r3.f(r4)     // Catch:{ all -> 0x0064 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ all -> 0x0064 }
            if (r4 != 0) goto L_0x0025
            r4 = 1
            goto L_0x0029
        L_0x0025:
            boolean r4 = r4.booleanValue()     // Catch:{ all -> 0x0064 }
        L_0x0029:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)     // Catch:{ all -> 0x0064 }
            java.lang.String r2 = "opt_in_push"
            java.lang.Object r2 = r3.e(r2)     // Catch:{ all -> 0x0064 }
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch:{ all -> 0x0064 }
            if (r2 != 0) goto L_0x0039
            r2 = 1
            goto L_0x003d
        L_0x0039:
            boolean r2 = r2.booleanValue()     // Catch:{ all -> 0x0064 }
        L_0x003d:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)     // Catch:{ all -> 0x0064 }
            boolean r4 = r4.booleanValue()     // Catch:{ all -> 0x0064 }
            if (r4 == 0) goto L_0x004e
            boolean r4 = r2.booleanValue()     // Catch:{ all -> 0x0064 }
            if (r4 == 0) goto L_0x004e
            goto L_0x004f
        L_0x004e:
            r1 = 0
        L_0x004f:
            monitor-exit(r0)     // Catch:{ all -> 0x0064 }
            return r1
        L_0x0051:
            java.lang.String r4 = "opt_in_inapp"
            java.lang.Object r4 = r3.e(r4)     // Catch:{ all -> 0x0064 }
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch:{ all -> 0x0064 }
            if (r4 != 0) goto L_0x005c
            goto L_0x0060
        L_0x005c:
            boolean r1 = r4.booleanValue()     // Catch:{ all -> 0x0064 }
        L_0x0060:
            monitor-exit(r0)     // Catch:{ all -> 0x0064 }
            return r1
        L_0x0062:
            monitor-exit(r0)     // Catch:{ all -> 0x0064 }
            return r1
        L_0x0064:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0064 }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.DataHolder.a(com.webengage.sdk.android.utils.WebEngageConstant$a):boolean");
    }

    public boolean a(boolean z, boolean z2) {
        AtomicBoolean atomicBoolean = (AtomicBoolean) a("entity_is_running");
        if (atomicBoolean == null) {
            atomicBoolean = new AtomicBoolean(false);
        }
        boolean compareAndSet = atomicBoolean.compareAndSet(z, z2);
        a("entity_is_running", (Object) atomicBoolean);
        return compareAndSet;
    }

    public Long b(String str) {
        Long valueOf;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.SCOPES.toString());
            List<Object> list = this.d;
            list.add(str + "_view");
            Long l = (Long) a((List<? extends Object>) this.d);
            valueOf = Long.valueOf(l == null ? 0 : l.longValue());
        }
        return valueOf;
    }

    public Long b(Map<String, Object> map, WebEngageConstant.a aVar) {
        Long valueOf;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.SCOPES.toString());
            List<Object> list = this.d;
            list.add(e(map, aVar) + "_close_session");
            Long l = (Long) a((List<? extends Object>) this.d);
            valueOf = Long.valueOf(l == null ? 0 : l.longValue());
        }
        return valueOf;
    }

    public String b() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("session_type");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }

    public void b(String str, Object obj) {
        synchronized (c) {
            this.d.clear();
            this.d.add(str);
            a(this.d, obj);
        }
    }

    /* access modifiers changed from: protected */
    public void b(String str, Map<String, Object> map) {
        synchronized (c) {
            if (map != null) {
                for (Map.Entry next : map.entrySet()) {
                    a(str, (String) next.getKey(), next.getValue(), f.ANDROID);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(Map<String, Object> map) {
        synchronized (c) {
            this.d.clear();
            this.d.add(f.PAGE.toString());
            this.d.add("system");
            a(this.d, (Object) map);
        }
    }

    public void b(boolean z) {
        synchronized (c) {
            this.container.put("app_foreground", Boolean.valueOf(z));
        }
    }

    public Double c() {
        Double d2;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("latitude");
            d2 = (Double) a((List<? extends Object>) this.d);
        }
        return d2;
    }

    public Long c(String str) {
        Long valueOf;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.SCOPES.toString());
            List<Object> list = this.d;
            list.add(str + "_view_session");
            Long l = (Long) a((List<? extends Object>) this.d);
            valueOf = Long.valueOf(l == null ? 0 : l.longValue());
        }
        return valueOf;
    }

    public Long c(Map<String, Object> map, WebEngageConstant.a aVar) {
        Long valueOf;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.SCOPES.toString());
            List<Object> list = this.d;
            list.add(e(map, aVar) + "_hide_session");
            Long l = (Long) a((List<? extends Object>) this.d);
            valueOf = Long.valueOf(l == null ? 0 : l.longValue());
        }
        return valueOf;
    }

    /* access modifiers changed from: protected */
    public void c(String str, Map<String, Object> map) {
        synchronized (c) {
            if (map != null) {
                for (Map.Entry next : map.entrySet()) {
                    a(str, (String) next.getKey(), next.getValue(), f.ATTR);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void c(Map<String, Object> map) {
        synchronized (c) {
            this.d.clear();
            this.d.add(f.PAGE.toString());
            this.d.add("custom");
            a(this.d, (Object) map);
        }
    }

    public void c(boolean z) {
        synchronized (c) {
            this.container.put("boot_up", Boolean.valueOf(z));
        }
    }

    public Double d() {
        Double d2;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("longitude");
            d2 = (Double) a((List<? extends Object>) this.d);
        }
        return d2;
    }

    public Long d(Map<String, Object> map, WebEngageConstant.a aVar) {
        this.d.clear();
        this.d.add(f.SCOPES.toString());
        List<Object> list = this.d;
        list.add(e(map, aVar) + "_click");
        Long l = (Long) a((List<? extends Object>) this.d);
        return Long.valueOf(l == null ? 0 : l.longValue());
    }

    public Map<String, Object> d(String str) {
        Map<String, Object> map;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.EVENT_CRITERIA.toString());
            this.d.add(str);
            map = (Map) a((List<? extends Object>) this.d);
        }
        return map;
    }

    /* access modifiers changed from: protected */
    public void d(String str, Map<String, Object> map) {
        synchronized (c) {
            this.d.clear();
            this.d.add(f.EVENT.toString());
            this.d.add(str);
            a(this.d, (Object) map);
        }
    }

    public Object e(String str) {
        Object a2;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add(str);
            a2 = a((List<? extends Object>) this.d);
        }
        return a2;
    }

    public String e() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("city");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0049  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String e(java.util.Map<java.lang.String, java.lang.Object> r6, com.webengage.sdk.android.utils.WebEngageConstant.a r7) {
        /*
            r5 = this;
            java.lang.Object r0 = c
            monitor-enter(r0)
            java.lang.String r1 = "journeyId"
            java.lang.Object r1 = r6.get(r1)     // Catch:{ all -> 0x0076 }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ all -> 0x0076 }
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$b> r2 = com.webengage.sdk.android.utils.WebEngageConstant.f5567b     // Catch:{ all -> 0x0076 }
            r3 = 0
            java.lang.Object r2 = r2.get(r3)     // Catch:{ all -> 0x0076 }
            com.webengage.sdk.android.utils.WebEngageConstant$b r2 = (com.webengage.sdk.android.utils.WebEngageConstant.b) r2     // Catch:{ all -> 0x0076 }
            java.lang.String r2 = r2.f5571b     // Catch:{ all -> 0x0076 }
            int[] r4 = com.webengage.sdk.android.actions.database.DataHolder.AnonymousClass1.f5343a     // Catch:{ all -> 0x0076 }
            int r7 = r7.ordinal()     // Catch:{ all -> 0x0076 }
            r7 = r4[r7]     // Catch:{ all -> 0x0076 }
            r4 = 1
            if (r7 == r4) goto L_0x0030
            r3 = 3
            if (r7 == r3) goto L_0x0025
            goto L_0x0039
        L_0x0025:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$b> r7 = com.webengage.sdk.android.utils.WebEngageConstant.f5567b     // Catch:{ all -> 0x0076 }
            java.lang.Object r7 = r7.get(r4)     // Catch:{ all -> 0x0076 }
            com.webengage.sdk.android.utils.WebEngageConstant$b r7 = (com.webengage.sdk.android.utils.WebEngageConstant.b) r7     // Catch:{ all -> 0x0076 }
        L_0x002d:
            java.lang.String r2 = r7.f5571b     // Catch:{ all -> 0x0076 }
            goto L_0x0039
        L_0x0030:
            java.util.List<com.webengage.sdk.android.utils.WebEngageConstant$b> r7 = com.webengage.sdk.android.utils.WebEngageConstant.f5567b     // Catch:{ all -> 0x0076 }
            java.lang.Object r7 = r7.get(r3)     // Catch:{ all -> 0x0076 }
            com.webengage.sdk.android.utils.WebEngageConstant$b r7 = (com.webengage.sdk.android.utils.WebEngageConstant.b) r7     // Catch:{ all -> 0x0076 }
            goto L_0x002d
        L_0x0039:
            java.lang.Object r6 = r6.get(r2)     // Catch:{ all -> 0x0076 }
            java.lang.String r6 = (java.lang.String) r6     // Catch:{ all -> 0x0076 }
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ all -> 0x0076 }
            r7.<init>()     // Catch:{ all -> 0x0076 }
            r7.append(r6)     // Catch:{ all -> 0x0076 }
            if (r1 == 0) goto L_0x0070
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch:{ all -> 0x0076 }
            r6.<init>()     // Catch:{ all -> 0x0076 }
            java.lang.String r2 = "journey"
            r6.add(r2)     // Catch:{ all -> 0x0076 }
            r6.add(r1)     // Catch:{ all -> 0x0076 }
            java.lang.String r1 = "id"
            r6.add(r1)     // Catch:{ all -> 0x0076 }
            java.lang.Object r6 = r5.a((java.util.List<? extends java.lang.Object>) r6)     // Catch:{ all -> 0x0076 }
            java.lang.String r6 = (java.lang.String) r6     // Catch:{ all -> 0x0076 }
            if (r6 == 0) goto L_0x0070
            java.lang.String r1 = "["
            r7.append(r1)     // Catch:{ all -> 0x0076 }
            r7.append(r6)     // Catch:{ all -> 0x0076 }
            java.lang.String r6 = "]"
            r7.append(r6)     // Catch:{ all -> 0x0076 }
        L_0x0070:
            java.lang.String r6 = r7.toString()     // Catch:{ all -> 0x0076 }
            monitor-exit(r0)     // Catch:{ all -> 0x0076 }
            return r6
        L_0x0076:
            r6 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0076 }
            goto L_0x007a
        L_0x0079:
            throw r6
        L_0x007a:
            goto L_0x0079
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.DataHolder.e(java.util.Map, com.webengage.sdk.android.utils.WebEngageConstant$a):java.lang.String");
    }

    /* access modifiers changed from: protected */
    public void e(String str, Map<String, Object> map) {
        synchronized (c) {
            this.d.clear();
            this.d.add(f.LATEST_EVENT.toString());
            this.d.add(str);
            a(this.d, (Object) map);
        }
    }

    public Object f(String str) {
        Object a2;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.USER.toString());
            this.d.add(str);
            a2 = a((List<? extends Object>) this.d);
        }
        return a2;
    }

    public String f() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("country");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }

    /* access modifiers changed from: protected */
    public void f(String str, Map<String, Object> map) {
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                String str2 = (String) next.getKey();
                if (am.a(str2) != null) {
                    a(str, str2, (Number) next.getValue(), f.USER);
                }
                if (ai.a(str2)) {
                    a(str, str2, (Number) next.getValue(), f.ANDROID);
                }
            }
        }
    }

    public String g() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("region");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }

    /* access modifiers changed from: protected */
    public void g(String str, Map<String, Object> map) {
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                a(str, (String) next.getKey(), (Number) next.getValue(), f.ATTR);
            }
        }
    }

    public String h() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("locality");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }

    public String i() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("postal_code");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }

    public Long j() {
        Long l;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("total_page_view_count");
            l = (Long) a((List<? extends Object>) this.d);
        }
        return l;
    }

    public Long k() {
        Long l;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("page_view_count_session");
            l = (Long) a((List<? extends Object>) this.d);
        }
        return l;
    }

    public Long l() {
        Long l;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("session_count");
            l = (Long) a((List<? extends Object>) this.d);
        }
        return l;
    }

    public Long m() {
        Long l;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("b_session_count");
            l = (Long) a((List<? extends Object>) this.d);
        }
        return l;
    }

    public String n() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.PAGE.toString());
            this.d.add("system");
            this.d.add("screen_path");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }

    public String o() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.PAGE.toString());
            this.d.add("system");
            this.d.add("screen_title");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }

    public String p() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.PAGE.toString());
            this.d.add("system");
            this.d.add("screen_name");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }

    public Map<String, Object> q() {
        Map<String, Object> map;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.PAGE.toString());
            this.d.add("custom");
            map = (Map) a((List<? extends Object>) this.d);
        }
        return map;
    }

    public Map<String, Object> r() {
        Map<String, Object> map;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.PAGE.toString());
            this.d.add("system");
            map = (Map) a((List<? extends Object>) this.d);
        }
        return map;
    }

    public Date s() {
        Date date;
        synchronized (c) {
            this.d.clear();
            this.d.add(f.ANDROID.toString());
            this.d.add("last_logged_in");
            date = (Date) a((List<? extends Object>) this.d);
        }
        return date;
    }

    public boolean t() {
        boolean z;
        synchronized (c) {
            z = this.container.get("app_foreground") != null && ((Boolean) this.container.get("app_foreground")).booleanValue();
        }
        return z;
    }

    public boolean u() {
        boolean z;
        synchronized (c) {
            z = this.container.get("boot_up") != null && ((Boolean) this.container.get("boot_up")).booleanValue();
        }
        return z;
    }

    public long v() {
        long longValue;
        synchronized (c) {
            longValue = this.container.containsKey("f_activity_start_ep") ? ((Long) this.container.get("f_activity_start_ep")).longValue() : -1;
        }
        return longValue;
    }

    public Long w() {
        Long l;
        synchronized (c) {
            this.d.clear();
            this.d.add("config");
            this.d.add("tzo");
            l = (Long) a((List<? extends Object>) this.d);
        }
        return l;
    }

    public Long x() {
        Long l;
        synchronized (c) {
            this.d.clear();
            this.d.add("config");
            this.d.add("jcxPollTime");
            l = (Long) a((List<? extends Object>) this.d);
        }
        return l;
    }

    public List<Object> y() {
        List<Object> list;
        synchronized (c) {
            this.d.clear();
            this.d.add("config");
            this.d.add("events");
            this.d.add("we_wk_page_delay");
            list = (List) a((List<? extends Object>) this.d);
        }
        return list;
    }

    public String z() {
        String str;
        synchronized (c) {
            this.d.clear();
            this.d.add("config");
            this.d.add("gbp");
            str = (String) a((List<? extends Object>) this.d);
        }
        return str;
    }
}
