package com.webengage.sdk.android.actions.rules;

import com.webengage.sdk.android.actions.database.DataHolder;
import com.webengage.sdk.android.actions.database.f;
import com.webengage.sdk.android.actions.rules.a.c;
import com.webengage.sdk.android.actions.rules.a.d;
import com.webengage.sdk.android.actions.rules.a.e;
import com.webengage.sdk.android.actions.rules.a.g;
import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.k;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

class i extends RuleExecutor {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f5463a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private List<String> f5464b;
    private Map<String, e> c;
    private Map<String, List<d>> d;

    /* renamed from: com.webengage.sdk.android.actions.rules.i$18  reason: invalid class name */
    static /* synthetic */ class AnonymousClass18 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5474a = new int[WebEngageConstant.c.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        static {
            /*
                com.webengage.sdk.android.utils.WebEngageConstant$c[] r0 = com.webengage.sdk.android.utils.WebEngageConstant.c.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5474a = r0
                int[] r0 = f5474a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.utils.WebEngageConstant$c r1 = com.webengage.sdk.android.utils.WebEngageConstant.c.SESSION_RULE     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5474a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.utils.WebEngageConstant$c r1 = com.webengage.sdk.android.utils.WebEngageConstant.c.PAGE_RULE     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5474a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.webengage.sdk.android.utils.WebEngageConstant$c r1 = com.webengage.sdk.android.utils.WebEngageConstant.c.EVENT_RULE     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.i.AnonymousClass18.<clinit>():void");
        }
    }

    i() {
        this.c = null;
        this.f5464b = new ArrayList();
        this.c = new LinkedHashMap();
        this.d = new HashMap();
        a();
    }

    private void a() {
        c.a().a((g) new g("->", -2147483647) {
            public Object a(Object obj, Object obj2) {
                boolean z = obj2 instanceof List;
                if (z && (obj instanceof List)) {
                    ((List) obj).addAll((List) obj2);
                    return obj;
                } else if (z) {
                    ((List) obj2).add(0, obj);
                    return obj2;
                } else if (obj instanceof List) {
                    ((List) obj).add(obj2);
                    return obj;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(obj);
                    arrayList.add(obj2);
                    return arrayList;
                }
            }
        });
        c.a().a((g) new g("$we_between", 100) {
            public Object a(Object obj, Object obj2) {
                if (obj == null) {
                    return Boolean.FALSE;
                }
                if (!(obj2 instanceof List)) {
                    return Boolean.FALSE;
                }
                List list = (List) obj2;
                if (list.size() < 2) {
                    return Boolean.FALSE;
                }
                double doubleValue = ((Number) obj).doubleValue();
                boolean z = false;
                if (list.get(0) == null || list.get(1) == null) {
                    return Boolean.FALSE;
                }
                double doubleValue2 = ((Number) list.get(0)).doubleValue();
                double doubleValue3 = ((Number) list.get(1)).doubleValue();
                if (doubleValue >= doubleValue2 && doubleValue <= doubleValue3) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
        c.a().a((g) new g("$we_in", 100) {
            public Object a(Object obj, Object obj2) {
                if (obj == null && obj2 == null) {
                    return Boolean.FALSE;
                }
                if (!(obj2 instanceof List)) {
                    return h.a().getOperator("==").a(obj, obj2);
                }
                for (Object a2 : (List) obj2) {
                    if (((Boolean) h.a().getOperator("$we_in").a(obj, a2)).booleanValue()) {
                        return Boolean.TRUE;
                    }
                }
                return Boolean.FALSE;
            }
        });
        c.a().a((g) new g("$we_nin", 100) {
            public Object a(Object obj, Object obj2) {
                return Boolean.valueOf(!((Boolean) h.a().getOperator("$we_in").a(obj, obj2)).booleanValue());
            }
        });
        c.a().a((g) new g("$we_contains_all", 100) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return Boolean.FALSE;
                }
                if (!(obj instanceof List)) {
                    return obj2 instanceof List ? Boolean.FALSE : h.a().getOperator("==").a(obj, obj2);
                }
                if (!(obj2 instanceof List)) {
                    return h.a().getOperator("$we_in").a(obj2, obj);
                }
                Iterator it = ((List) obj2).iterator();
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    if (!it.hasNext()) {
                        z = z2;
                        break;
                    }
                    if (!((Boolean) h.a().getOperator("$we_contains_all").a(obj, it.next())).booleanValue()) {
                        break;
                    }
                    z2 = true;
                }
                return Boolean.valueOf(z);
            }
        });
        c.a().a((g) new g("$we_contains_any", 100) {
            public Object a(Object obj, Object obj2) {
                if (obj == null || obj2 == null) {
                    return Boolean.FALSE;
                }
                boolean z = false;
                if (obj instanceof List) {
                    if (!(obj2 instanceof List)) {
                        return h.a().getOperator("$we_in").a(obj2, obj);
                    }
                    Iterator it = ((List) obj2).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (((Boolean) h.a().getOperator("$we_contains_any").a(obj, it.next())).booleanValue()) {
                            z = true;
                            break;
                        }
                    }
                    return Boolean.valueOf(z);
                } else if (!(obj2 instanceof List)) {
                    return h.a().getOperator("==").a(obj, obj2);
                } else {
                    Iterator it2 = ((List) obj2).iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        if (((Boolean) h.a().getOperator("$we_contains_any").a(obj, it2.next())).booleanValue()) {
                            z = true;
                            break;
                        }
                    }
                    return Boolean.valueOf(z);
                }
            }
        });
        c.a().a((g) new g("$we_exclude_all", 100) {
            public Object a(Object obj, Object obj2) {
                return Boolean.valueOf(!((Boolean) h.a().getOperator("$we_contains_any").a(obj, obj2)).booleanValue());
            }
        });
        c.a().a((e) new e("$we_matches") {
            public Object a(List<Object> list) {
                if (list.size() <= 1) {
                    return Boolean.FALSE;
                }
                if (list.get(0) != null) {
                    String obj = list.get(0).toString();
                    if (list.get(1) instanceof List) {
                        for (Object next : (List) list.get(1)) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(obj);
                            arrayList.add(next);
                            if (((Boolean) h.a().getFunction("$we_matches").a(arrayList)).booleanValue()) {
                                return Boolean.TRUE;
                            }
                        }
                    } else if (list.get(1) != null) {
                        return Boolean.valueOf(Pattern.compile(list.get(1).toString()).matcher(obj).find());
                    }
                }
                return Boolean.FALSE;
            }
        });
        c.a().a((e) new e("$we_getData") {
            public Object a(List<Object> list) {
                Object a2 = DataHolder.get().a((List<? extends Object>) list);
                return (a2 == null || !(a2 instanceof Date)) ? a2 : Long.valueOf(((Date) a2).getTime());
            }
        });
        c.a().a((e) new e("$we_escapeRegex") {
            public Object a(List<Object> list) {
                if (list.size() == 0 || list.size() == 0) {
                    return null;
                }
                return k.a(list.get(0).toString());
            }
        });
        c.a().a((e) new e("$we_exists") {
            public Object a(List<Object> list) {
                if (list == null) {
                    return Boolean.FALSE;
                }
                boolean z = false;
                if (list.get(0) != null) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
        c.a().a((e) new e("$we_default") {
            public Object a(List<Object> list) {
                if (list.size() <= 1) {
                    return null;
                }
                return list.get(0) == null ? list.get(1) : list.get(0);
            }
        });
        c.a().a((e) new e("$we_event_criteria") {
            public Object a(List<Object> list) {
                if (list == null || list.size() == 0) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(f.EVENT_CRITERIA.toString());
                arrayList.add(list.get(0));
                arrayList.add("val");
                return h.a().getFunction("$we_getData").a(arrayList);
            }
        });
        c.a().a((e) new e("SUM") {
            public Object a(List<Object> list) {
                if (list == null || list.size() == 0) {
                    return null;
                }
                Integer.valueOf(0);
                Number number = (Number) list.get(0);
                Map map = (Map) list.get(1);
                if (map != null) {
                    Number number2 = (Number) map.get("val");
                    if (number2 == null) {
                        map.put("val", number);
                        return map;
                    }
                    number = Double.valueOf(number2.doubleValue() + number.doubleValue());
                } else {
                    map = new HashMap();
                }
                map.put("val", number);
                return map;
            }
        });
        c.a().a((e) new e("AVG") {
            public Object a(List<Object> list) {
                long j;
                if (list == null || list.size() == 0) {
                    return null;
                }
                Integer.valueOf(0);
                Number number = (Number) list.get(0);
                Map map = (Map) list.get(1);
                if (map != null) {
                    Number number2 = (Number) map.get("val");
                    Number number3 = (Number) map.get("count");
                    if (!(number2 == null || number3 == null)) {
                        double doubleValue = number2.doubleValue();
                        double longValue = (double) number3.longValue();
                        Double.isNaN(longValue);
                        double doubleValue2 = (doubleValue * longValue) + number.doubleValue();
                        double longValue2 = (double) (number3.longValue() + 1);
                        Double.isNaN(longValue2);
                        map.put("val", Double.valueOf(doubleValue2 / longValue2));
                        j = Long.valueOf(number3.longValue() + 1);
                    }
                    map.put("val", number);
                    j = 1L;
                } else {
                    map = new HashMap();
                    map.put("val", number);
                    j = 1L;
                }
                map.put("count", j);
                return map;
            }
        });
        c.a().a((e) new e("COUNT") {
            public Object a(List<Object> list) {
                long j;
                if (list == null || list.size() == 0) {
                    return null;
                }
                Integer.valueOf(0);
                Map map = (Map) list.get(1);
                if (map != null) {
                    Number number = (Number) map.get("val");
                    if (number != null) {
                        j = Long.valueOf(number.longValue() + 1);
                        map.put("val", j);
                        return map;
                    }
                } else {
                    map = new HashMap();
                }
                j = 1L;
                map.put("val", j);
                return map;
            }
        });
        c.a().a((e) new e("MIN") {
            public Object a(List<Object> list) {
                if (list == null || list.size() == 0) {
                    return null;
                }
                Object obj = list.get(0);
                Map map = (Map) list.get(1);
                if (map == null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("val", obj);
                    return hashMap;
                } else if (obj instanceof Date) {
                    Object obj2 = map.get("val");
                    if (!(obj2 instanceof Date)) {
                        try {
                            obj2 = DataType.convert(obj2, DataType.DATE, true);
                        } catch (Exception unused) {
                            map.put("val", obj);
                            return map;
                        }
                    }
                    if (((Date) obj).getTime() < ((Date) obj2).getTime()) {
                        map.put("val", obj);
                    }
                    return map;
                } else if (!(obj instanceof Number)) {
                    return null;
                } else {
                    Number number = (Number) map.get("val");
                    if (number == null) {
                        map.put("val", obj);
                        return map;
                    }
                    if (((Number) obj).doubleValue() < number.doubleValue()) {
                        map.put("val", obj);
                    }
                    return map;
                }
            }
        });
        c.a().a((e) new e("MAX") {
            public Object a(List<Object> list) {
                if (list == null || list.size() == 0) {
                    return null;
                }
                Object obj = list.get(0);
                Map map = (Map) list.get(1);
                if (map == null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("val", obj);
                    return hashMap;
                } else if (obj instanceof Date) {
                    Object obj2 = map.get("val");
                    if (!(obj2 instanceof Date)) {
                        try {
                            obj2 = DataType.convert(obj2, DataType.DATE, true);
                        } catch (Exception unused) {
                            map.put("val", obj);
                            return map;
                        }
                    }
                    if (((Date) obj).getTime() > ((Date) obj2).getTime()) {
                        map.put("val", obj);
                    }
                    return map;
                } else if (!(obj instanceof Number)) {
                    return null;
                } else {
                    Number number = (Number) map.get("val");
                    if (number == null) {
                        map.put("val", obj);
                        return map;
                    }
                    if (((Number) obj).doubleValue() > number.doubleValue()) {
                        map.put("val", obj);
                    }
                    return map;
                }
            }
        });
        c.a().a((e) new e("$we_date") {
            public Object a(List<Object> list) {
                if (!(list == null || list.size() == 0)) {
                    try {
                        return Long.valueOf(((Date) DataType.convert(list.get(0), DataType.DATE, false)).getTime());
                    } catch (Exception unused) {
                    }
                }
                return null;
            }
        });
        c.a().a((e) new e("$we_ms") {
            public Object a(List<Object> list) {
                if (list.size() == 0 || list.size() < 2) {
                    return null;
                }
                return Long.valueOf(TimeUnit.MILLISECONDS.convert((long) ((Integer) list.get(0)).intValue(), TimeUnit.valueOf(((String) list.get(1)).toUpperCase())));
            }
        });
        c.a().a((e) new e("$we_now") {
            public Object a(List<Object> list) {
                return Long.valueOf(new Date().getTime());
            }
        });
        c.a().a((e) new e("$we_boolean") {
            public Object a(List<Object> list) {
                return list.size() < 2 ? Boolean.FALSE : h.a().getOperator("==").a(list.get(0), list.get(1));
            }
        });
        c.a().a((e) new e("$we_ref_date") {
            public Object a(List<Object> list) {
                if (!(list == null || list.size() < 2 || list.get(0) == null || list.get(1) == null)) {
                    Date a2 = new com.webengage.sdk.android.utils.i(((Long) list.get(0)).longValue(), (String) list.get(1)).a();
                    if (a2 != null) {
                        return Long.valueOf(a2.getTime());
                    }
                }
                return null;
            }
        });
        c.a().a((e) new e("$we_getResolvedData") {
            /* JADX WARNING: Removed duplicated region for block: B:121:0x0295  */
            /* JADX WARNING: Removed duplicated region for block: B:126:0x02b7  */
            /* JADX WARNING: Removed duplicated region for block: B:129:0x02c0 A[RETURN] */
            /* JADX WARNING: Removed duplicated region for block: B:130:0x02c1 A[RETURN] */
            /* JADX WARNING: Removed duplicated region for block: B:131:0x02c2 A[RETURN] */
            /* JADX WARNING: Removed duplicated region for block: B:74:0x0193  */
            /* JADX WARNING: Removed duplicated region for block: B:77:0x019d  */
            /* JADX WARNING: Removed duplicated region for block: B:79:0x01b1  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public java.lang.Object a(java.util.List<java.lang.Object> r11) {
                /*
                    r10 = this;
                    r0 = 0
                    if (r11 == 0) goto L_0x02c2
                    int r1 = r11.size()
                    if (r1 == 0) goto L_0x02c2
                    r1 = 0
                    java.lang.Object r2 = r11.get(r1)
                    if (r2 != 0) goto L_0x0012
                    goto L_0x02c2
                L_0x0012:
                    java.lang.Object r1 = r11.get(r1)
                    java.lang.String r1 = (java.lang.String) r1
                    if (r1 == 0) goto L_0x02c2
                    java.lang.String r2 = "user"
                    boolean r2 = r2.equals(r1)
                    java.lang.String r3 = "custom"
                    java.lang.String r4 = "system"
                    r5 = 1
                    r6 = 2
                    if (r2 == 0) goto L_0x0104
                    int r1 = r11.size()
                    if (r1 <= r5) goto L_0x00b6
                    java.lang.Object r1 = r11.get(r5)
                    java.lang.String r1 = (java.lang.String) r1
                    boolean r2 = r4.equals(r1)
                    if (r2 == 0) goto L_0x0075
                    java.util.ArrayList r1 = new java.util.ArrayList
                    r1.<init>()
                    com.webengage.sdk.android.actions.database.f r2 = com.webengage.sdk.android.actions.database.f.USER
                    java.lang.String r2 = r2.toString()
                    r1.add(r2)
                    int r2 = r11.size()
                    if (r2 <= r6) goto L_0x0062
                    int r0 = r11.size()
                    java.util.List r11 = r11.subList(r6, r0)
                    r1.addAll(r11)
                    com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    java.lang.Object r11 = r11.a((java.util.List<? extends java.lang.Object>) r1)
                    return r11
                L_0x0062:
                    com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    java.lang.Object r11 = r11.a((java.util.List<? extends java.lang.Object>) r1)
                    java.util.Map r11 = (java.util.Map) r11
                    if (r11 == 0) goto L_0x02c2
                    int r1 = r11.size()
                    if (r1 <= 0) goto L_0x02c2
                    return r11
                L_0x0075:
                    boolean r1 = r3.equals(r1)
                    if (r1 == 0) goto L_0x02c2
                    java.util.ArrayList r1 = new java.util.ArrayList
                    r1.<init>()
                    com.webengage.sdk.android.actions.database.f r2 = com.webengage.sdk.android.actions.database.f.ATTR
                    java.lang.String r2 = r2.toString()
                    r1.add(r2)
                    int r2 = r11.size()
                    if (r2 <= r6) goto L_0x00a3
                    int r0 = r11.size()
                    java.util.List r11 = r11.subList(r6, r0)
                    r1.addAll(r11)
                    com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    java.lang.Object r11 = r11.a((java.util.List<? extends java.lang.Object>) r1)
                    return r11
                L_0x00a3:
                    com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    java.lang.Object r11 = r11.a((java.util.List<? extends java.lang.Object>) r1)
                    java.util.Map r11 = (java.util.Map) r11
                    if (r11 == 0) goto L_0x02c2
                    int r1 = r11.size()
                    if (r1 <= 0) goto L_0x02c2
                    return r11
                L_0x00b6:
                    java.util.HashMap r11 = new java.util.HashMap
                    r11.<init>()
                    com.webengage.sdk.android.actions.database.DataHolder r1 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    com.webengage.sdk.android.actions.database.f r2 = com.webengage.sdk.android.actions.database.f.USER
                    java.lang.String r2 = r2.toString()
                    java.lang.Object r1 = r1.a((java.lang.String) r2)
                    java.util.Map r1 = (java.util.Map) r1
                    com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    com.webengage.sdk.android.actions.database.f r5 = com.webengage.sdk.android.actions.database.f.ATTR
                    java.lang.String r5 = r5.toString()
                    java.lang.Object r2 = r2.a((java.lang.String) r5)
                    java.util.Map r2 = (java.util.Map) r2
                    if (r1 == 0) goto L_0x00e3
                    boolean r5 = r1.isEmpty()
                    if (r5 == 0) goto L_0x00ec
                L_0x00e3:
                    if (r2 == 0) goto L_0x0103
                    boolean r5 = r2.isEmpty()
                    if (r5 == 0) goto L_0x00ec
                    goto L_0x0103
                L_0x00ec:
                    if (r1 == 0) goto L_0x00f7
                    boolean r0 = r1.isEmpty()
                    if (r0 != 0) goto L_0x00f7
                    r11.put(r4, r1)
                L_0x00f7:
                    if (r2 == 0) goto L_0x0102
                    boolean r0 = r2.isEmpty()
                    if (r0 != 0) goto L_0x0102
                    r11.put(r3, r2)
                L_0x0102:
                    return r11
                L_0x0103:
                    return r0
                L_0x0104:
                    java.lang.String r2 = "screen"
                    boolean r2 = r2.equals(r1)
                    if (r2 == 0) goto L_0x0134
                    java.util.ArrayList r0 = new java.util.ArrayList
                    r0.<init>()
                    com.webengage.sdk.android.actions.database.f r1 = com.webengage.sdk.android.actions.database.f.PAGE
                    java.lang.String r1 = r1.toString()
                    r0.add(r1)
                    int r1 = r11.size()
                    if (r1 <= r5) goto L_0x012b
                    int r1 = r11.size()
                    java.util.List r11 = r11.subList(r5, r1)
                    r0.addAll(r11)
                L_0x012b:
                    com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    java.lang.Object r11 = r11.a((java.util.List<? extends java.lang.Object>) r0)
                    return r11
                L_0x0134:
                    java.lang.String r2 = "event"
                    boolean r1 = r2.equals(r1)
                    if (r1 == 0) goto L_0x02c2
                    int r1 = r11.size()
                    if (r1 > r6) goto L_0x0143
                    return r0
                L_0x0143:
                    int r1 = r11.size()
                    java.lang.String r2 = "we_"
                    java.lang.String r7 = "we_wk_sys"
                    r8 = 3
                    if (r1 <= r8) goto L_0x021e
                    java.util.ArrayList r1 = new java.util.ArrayList
                    r1.<init>()
                    com.webengage.sdk.android.actions.database.f r9 = com.webengage.sdk.android.actions.database.f.LATEST_EVENT
                    java.lang.String r9 = r9.toString()
                    r1.add(r9)
                    java.lang.Object r9 = r11.get(r5)
                    boolean r9 = r4.equals(r9)
                    if (r9 == 0) goto L_0x017a
                    java.lang.StringBuilder r5 = new java.lang.StringBuilder
                    r5.<init>(r2)
                    java.lang.Object r2 = r11.get(r6)
                    r5.append(r2)
                    java.lang.String r2 = r5.toString()
                L_0x0176:
                    r1.add(r2)
                    goto L_0x0189
                L_0x017a:
                    java.lang.Object r2 = r11.get(r5)
                    boolean r2 = r3.equals(r2)
                    if (r2 == 0) goto L_0x0189
                    java.lang.Object r2 = r11.get(r6)
                    goto L_0x0176
                L_0x0189:
                    java.lang.Object r2 = r11.get(r8)
                    boolean r2 = r4.equals(r2)
                    if (r2 == 0) goto L_0x0196
                    r1.add(r7)
                L_0x0196:
                    int r2 = r11.size()
                    r5 = 4
                    if (r2 <= r5) goto L_0x01b1
                    int r0 = r11.size()
                    java.util.List r11 = r11.subList(r5, r0)
                    r1.addAll(r11)
                    com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    java.lang.Object r11 = r11.a((java.util.List<? extends java.lang.Object>) r1)
                    return r11
                L_0x01b1:
                    java.lang.Object r2 = r11.get(r8)
                    boolean r2 = r4.equals(r2)
                    if (r2 == 0) goto L_0x01d0
                    com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    java.lang.Object r11 = r11.a((java.util.List<? extends java.lang.Object>) r1)
                    java.util.Map r11 = (java.util.Map) r11
                    if (r11 == 0) goto L_0x01cf
                    boolean r1 = r11.isEmpty()
                    if (r1 == 0) goto L_0x01ce
                    goto L_0x01cf
                L_0x01ce:
                    return r11
                L_0x01cf:
                    return r0
                L_0x01d0:
                    java.lang.Object r11 = r11.get(r8)
                    boolean r11 = r3.equals(r11)
                    if (r11 == 0) goto L_0x02c2
                    com.webengage.sdk.android.actions.database.DataHolder r11 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    java.lang.Object r11 = r11.a((java.util.List<? extends java.lang.Object>) r1)
                    java.util.Map r11 = (java.util.Map) r11
                    java.util.HashMap r1 = new java.util.HashMap
                    r1.<init>()
                    if (r11 != 0) goto L_0x01ec
                    return r0
                L_0x01ec:
                    java.util.Set r11 = r11.entrySet()
                    java.util.Iterator r11 = r11.iterator()
                L_0x01f4:
                    boolean r2 = r11.hasNext()
                    if (r2 == 0) goto L_0x0216
                    java.lang.Object r2 = r11.next()
                    java.util.Map$Entry r2 = (java.util.Map.Entry) r2
                    java.lang.Object r3 = r2.getKey()
                    boolean r3 = r7.equals(r3)
                    if (r3 != 0) goto L_0x01f4
                    java.lang.Object r3 = r2.getKey()
                    java.lang.Object r2 = r2.getValue()
                    r1.put(r3, r2)
                    goto L_0x01f4
                L_0x0216:
                    boolean r11 = r1.isEmpty()
                    if (r11 == 0) goto L_0x021d
                    return r0
                L_0x021d:
                    return r1
                L_0x021e:
                    java.util.ArrayList r1 = new java.util.ArrayList
                    r1.<init>()
                    com.webengage.sdk.android.actions.database.f r8 = com.webengage.sdk.android.actions.database.f.LATEST_EVENT
                    java.lang.String r8 = r8.toString()
                    r1.add(r8)
                    java.lang.Object r8 = r11.get(r5)
                    boolean r8 = r4.equals(r8)
                    if (r8 == 0) goto L_0x024a
                    java.lang.StringBuilder r5 = new java.lang.StringBuilder
                    r5.<init>(r2)
                    java.lang.Object r11 = r11.get(r6)
                    r5.append(r11)
                    java.lang.String r11 = r5.toString()
                L_0x0246:
                    r1.add(r11)
                    goto L_0x0259
                L_0x024a:
                    java.lang.Object r2 = r11.get(r5)
                    boolean r2 = r3.equals(r2)
                    if (r2 == 0) goto L_0x0259
                    java.lang.Object r11 = r11.get(r6)
                    goto L_0x0246
                L_0x0259:
                    java.util.HashMap r11 = new java.util.HashMap
                    r11.<init>()
                    com.webengage.sdk.android.actions.database.DataHolder r2 = com.webengage.sdk.android.actions.database.DataHolder.get()
                    java.lang.Object r1 = r2.a((java.util.List<? extends java.lang.Object>) r1)
                    java.util.Map r1 = (java.util.Map) r1
                    if (r1 == 0) goto L_0x02c2
                    boolean r2 = r1.isEmpty()
                    if (r2 == 0) goto L_0x0271
                    goto L_0x02c2
                L_0x0271:
                    java.lang.Object r2 = r1.get(r7)
                    java.util.Map r2 = (java.util.Map) r2
                    if (r2 == 0) goto L_0x0282
                    boolean r5 = r2.isEmpty()
                    if (r5 != 0) goto L_0x0282
                    r11.put(r4, r2)
                L_0x0282:
                    java.util.HashMap r2 = new java.util.HashMap
                    r2.<init>()
                    java.util.Set r1 = r1.entrySet()
                    java.util.Iterator r1 = r1.iterator()
                L_0x028f:
                    boolean r4 = r1.hasNext()
                    if (r4 == 0) goto L_0x02b1
                    java.lang.Object r4 = r1.next()
                    java.util.Map$Entry r4 = (java.util.Map.Entry) r4
                    java.lang.Object r5 = r4.getKey()
                    boolean r5 = r7.equals(r5)
                    if (r5 != 0) goto L_0x028f
                    java.lang.Object r5 = r4.getKey()
                    java.lang.Object r4 = r4.getValue()
                    r2.put(r5, r4)
                    goto L_0x028f
                L_0x02b1:
                    boolean r1 = r2.isEmpty()
                    if (r1 != 0) goto L_0x02ba
                    r11.put(r3, r2)
                L_0x02ba:
                    boolean r1 = r11.isEmpty()
                    if (r1 == 0) goto L_0x02c1
                    return r0
                L_0x02c1:
                    return r11
                L_0x02c2:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.i.AnonymousClass17.a(java.util.List):java.lang.Object");
            }
        });
    }

    public Object evaluateInfixRule(String str) {
        try {
            return new d(str).a();
        } catch (Exception unused) {
            return null;
        }
    }

    public Object evaluatePostfixRule(List<String> list) {
        try {
            return new d(list).a();
        } catch (Exception unused) {
            return null;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0068 A[SYNTHETIC, Splitter:B:22:0x0068] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x000e A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<java.lang.String> evaluateRulesByCategory(com.webengage.sdk.android.utils.WebEngageConstant.c r8) {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.Object r1 = f5463a
            monitor-enter(r1)
            java.util.List<java.lang.String> r2 = r7.f5464b     // Catch:{ all -> 0x0074 }
            java.util.Iterator r2 = r2.iterator()     // Catch:{ all -> 0x0074 }
        L_0x000e:
            boolean r3 = r2.hasNext()     // Catch:{ all -> 0x0074 }
            if (r3 == 0) goto L_0x0072
            java.lang.Object r3 = r2.next()     // Catch:{ all -> 0x0074 }
            java.lang.String r3 = (java.lang.String) r3     // Catch:{ all -> 0x0074 }
            java.lang.Boolean r4 = java.lang.Boolean.FALSE     // Catch:{ all -> 0x0074 }
            int[] r5 = com.webengage.sdk.android.actions.rules.i.AnonymousClass18.f5474a     // Catch:{ Exception -> 0x0065 }
            int r6 = r8.ordinal()     // Catch:{ Exception -> 0x0065 }
            r5 = r5[r6]     // Catch:{ Exception -> 0x0065 }
            r6 = 1
            if (r5 == r6) goto L_0x0052
            r6 = 2
            if (r5 == r6) goto L_0x003f
            r6 = 3
            if (r5 == r6) goto L_0x002e
            goto L_0x0066
        L_0x002e:
            java.util.Map<java.lang.String, com.webengage.sdk.android.actions.rules.e> r5 = r7.c     // Catch:{ Exception -> 0x0065 }
            java.lang.Object r5 = r5.get(r3)     // Catch:{ Exception -> 0x0065 }
            com.webengage.sdk.android.actions.rules.e r5 = (com.webengage.sdk.android.actions.rules.e) r5     // Catch:{ Exception -> 0x0065 }
            com.webengage.sdk.android.actions.rules.a.d r5 = r5.c()     // Catch:{ Exception -> 0x0065 }
            java.lang.Object r5 = r5.a()     // Catch:{ Exception -> 0x0065 }
            goto L_0x004f
        L_0x003f:
            java.util.Map<java.lang.String, com.webengage.sdk.android.actions.rules.e> r5 = r7.c     // Catch:{ Exception -> 0x0065 }
            java.lang.Object r5 = r5.get(r3)     // Catch:{ Exception -> 0x0065 }
            com.webengage.sdk.android.actions.rules.e r5 = (com.webengage.sdk.android.actions.rules.e) r5     // Catch:{ Exception -> 0x0065 }
            com.webengage.sdk.android.actions.rules.a.d r5 = r5.b()     // Catch:{ Exception -> 0x0065 }
            java.lang.Object r5 = r5.a()     // Catch:{ Exception -> 0x0065 }
        L_0x004f:
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ Exception -> 0x0065 }
            goto L_0x0063
        L_0x0052:
            java.util.Map<java.lang.String, com.webengage.sdk.android.actions.rules.e> r5 = r7.c     // Catch:{ Exception -> 0x0065 }
            java.lang.Object r5 = r5.get(r3)     // Catch:{ Exception -> 0x0065 }
            com.webengage.sdk.android.actions.rules.e r5 = (com.webengage.sdk.android.actions.rules.e) r5     // Catch:{ Exception -> 0x0065 }
            com.webengage.sdk.android.actions.rules.a.d r5 = r5.a()     // Catch:{ Exception -> 0x0065 }
            java.lang.Object r5 = r5.a()     // Catch:{ Exception -> 0x0065 }
            goto L_0x004f
        L_0x0063:
            r4 = r5
            goto L_0x0066
        L_0x0065:
        L_0x0066:
            if (r4 == 0) goto L_0x000e
            boolean r4 = r4.booleanValue()     // Catch:{ all -> 0x0074 }
            if (r4 == 0) goto L_0x000e
            r0.add(r3)     // Catch:{ all -> 0x0074 }
            goto L_0x000e
        L_0x0072:
            monitor-exit(r1)     // Catch:{ all -> 0x0074 }
            return r0
        L_0x0074:
            r8 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0074 }
            goto L_0x0078
        L_0x0077:
            throw r8
        L_0x0078:
            goto L_0x0077
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.i.evaluateRulesByCategory(com.webengage.sdk.android.utils.WebEngageConstant$c):java.util.List");
    }

    /* access modifiers changed from: protected */
    public List<String> filterRenderingIds(List<String> list, WebEngageConstant.c cVar) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            synchronized (f5463a) {
                for (String next : list) {
                    if (this.c.get(next).d().compareTo(cVar) <= 0) {
                        arrayList.add(next);
                    }
                }
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public List<d> getEventCriteriasForEvent(String str) {
        List<d> list;
        synchronized (f5463a) {
            list = this.d.get(str);
        }
        return list;
    }

    public e getFunction(String str) {
        return c.a().e(str);
    }

    public g getOperator(String str) {
        return c.a().d(str);
    }

    /* access modifiers changed from: protected */
    public void reset() {
        synchronized (f5463a) {
            this.f5464b.clear();
            if (this.c != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.c.keySet());
                this.f5464b.addAll(arrayList);
            }
        }
    }

    public void setCompetingIds(List<String> list) {
        synchronized (f5463a) {
            this.f5464b.clear();
            if (list != null) {
                this.f5464b.addAll(list);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void setEventCriteriaMap(Map<String, List<d>> map) {
        synchronized (f5463a) {
            this.d.clear();
            if (map != null) {
                this.d.putAll(map);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void setRuleMap(Map<String, e> map) {
        synchronized (f5463a) {
            this.c.clear();
            this.f5464b.clear();
            if (map != null) {
                this.c.putAll(map);
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(map.keySet());
                this.f5464b.addAll(arrayList);
            }
        }
    }
}
