package com.webengage.sdk.android.actions.rules;

import android.content.Context;
import com.adjust.sdk.Constants;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.actions.database.DataHolder;
import com.webengage.sdk.android.actions.database.f;
import com.webengage.sdk.android.actions.database.y;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.n;
import com.webengage.sdk.android.p;
import com.webengage.sdk.android.utils.a.b;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

class a extends com.webengage.sdk.android.a {

    /* renamed from: b  reason: collision with root package name */
    private Context f5419b = null;
    private af c = null;

    /* renamed from: com.webengage.sdk.android.actions.rules.a$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5420a = new int[af.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                com.webengage.sdk.android.af[] r0 = com.webengage.sdk.android.af.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5420a = r0
                int[] r0 = f5420a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.BOOT_UP     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5420a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.af r1 = com.webengage.sdk.android.af.CONFIG_REFRESH     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.rules.a.AnonymousClass1.<clinit>():void");
        }
    }

    a(Context context) {
        super(context);
        this.f5419b = context.getApplicationContext();
    }

    private void a(c cVar, Set<String> set) {
        Set<String> a2 = cVar.a();
        Set<String> b2 = b.a(this.f5419b).b();
        b2.removeAll(a2);
        b.a(this.f5419b).a(b2);
        Set<String> e = cVar.e();
        Map<String, Set<String>> a3 = y.a(this.f5419b).a();
        if (a3 != null) {
            for (Map.Entry next : a3.entrySet()) {
                String str = (String) next.getKey();
                Set<String> set2 = (Set) next.getValue();
                set2.removeAll(e);
                if (set2.size() > 0) {
                    for (String a4 : set2) {
                        DataHolder.get().a(str, a4, null);
                    }
                }
            }
        }
        Map<String, Set<String>> b3 = y.a(this.f5419b).b();
        if (b3 != null) {
            for (Map.Entry next2 : b3.entrySet()) {
                String str2 = (String) next2.getKey();
                Set<String> set3 = (Set) next2.getValue();
                HashSet<String> hashSet = new HashSet<>();
                for (String str3 : set3) {
                    int indexOf = str3.indexOf(91);
                    if (indexOf == -1) {
                        indexOf = str3.indexOf(95);
                    }
                    if (indexOf != -1) {
                        hashSet.add(str3.substring(0, indexOf));
                    }
                }
                hashSet.removeAll(set);
                if (hashSet.size() > 0) {
                    for (String str4 : hashSet) {
                        for (String str5 : set3) {
                            if (str5.startsWith(str4)) {
                                DataHolder.get().a(str2, str5, (Object) null, f.SCOPES);
                            }
                        }
                    }
                }
            }
        }
    }

    private void a(Map<String, Object> map, Map<String, Object> map2) {
        e(map2);
        if (map != null) {
            ArrayList arrayList = new ArrayList(map.keySet());
            if (map2 != null) {
                arrayList.removeAll(map2.keySet());
            }
            if (!arrayList.isEmpty()) {
                p.a(this.f5419b).a((List<String>) arrayList);
            }
        }
    }

    private void e(Map<String, Object> map) {
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                Map map2 = (Map) next.getValue();
                if (map2 != null) {
                    p.a(this.f5419b).a(((Double) map2.get("lat")).doubleValue(), ((Double) map2.get(Constants.LONG)).doubleValue(), Float.parseFloat(map2.get("radius").toString()), (String) next.getKey(), WebEngage.get().getWebEngageConfig());
                }
            }
        }
    }

    public Object a(Object obj) {
        g gVar = (g) obj;
        if (gVar.i()) {
            int i = AnonymousClass1.f5420a[this.c.ordinal()];
            if (i == 1) {
                try {
                    new c(com.webengage.sdk.android.utils.f.a(gVar.e(), false)).a(h.a(), DataHolder.get());
                    e(DataHolder.get().C());
                } catch (Exception e) {
                    d(e);
                }
            } else if (i == 2) {
                try {
                    if (gVar.d() == 200) {
                        Map<String, Object> C = DataHolder.get().C();
                        c cVar = new c(com.webengage.sdk.android.utils.f.a(gVar.e(), false));
                        a(cVar, cVar.a(h.a(), DataHolder.get()));
                        com.webengage.sdk.android.utils.f.a(cVar.c(), this.f5419b);
                        a(C, DataHolder.get().C());
                    }
                } catch (Exception e2) {
                    d(e2);
                } catch (Throwable th) {
                    gVar.m();
                    throw th;
                }
                gVar.m();
            }
            return gVar;
        }
        gVar.n();
        return null;
    }

    public Object a(Map<String, Object> map) {
        String str = (String) map.get("config_url");
        this.c = (af) map.get("topic");
        int i = 2;
        if (AnonymousClass1.f5420a[this.c.ordinal()] == 1) {
            i = 4;
        }
        return new f.a(str, e.GET, this.f5419b).b(i).a().i();
    }

    public void b(Object obj) {
        if (obj != null && af.CONFIG_REFRESH.equals(this.c) && ((g) obj).d() == 200) {
            WebEngage.startService(n.a(af.FETCH_PROFILE, null, this.f5419b), this.f5419b);
            WebEngage.startService(n.a(af.JOURNEY_CONTEXT, null, this.f5419b), this.f5419b);
        }
    }
}
