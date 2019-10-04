package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.a;
import com.webengage.sdk.android.actions.rules.c;
import com.webengage.sdk.android.am;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import java.util.List;
import java.util.Map;
import java.util.Set;

class z extends a {

    /* renamed from: b  reason: collision with root package name */
    Context f5384b = null;
    String c = null;
    c d = null;

    z(Context context) {
        super(context);
        this.f5384b = context;
    }

    private void a(f fVar, Map<String, Object> map) {
        switch (fVar) {
            case USER:
                for (String next : map.keySet()) {
                    am a2 = am.a(next);
                    if (!"event_criterias".equals(next) && !"devices".equals(next) && !"user_attributes".equals(next) && !"journey".equals(next)) {
                        try {
                            DataHolder.get().a(this.c, next, map.get(next), fVar, a2 == null ? o.FORCE_UPDATE : a2.a());
                        } catch (Exception unused) {
                        }
                    }
                }
                break;
            case EVENT_CRITERIA:
                Set<String> e = this.d.e();
                List list = (List) map.get("event_criterias");
                if (list != null) {
                    for (int i = 0; i < list.size(); i++) {
                        Map map2 = (Map) list.get(i);
                        if (map2 != null) {
                            try {
                                String str = (String) map2.get("criteria_id");
                                if (e != null && e.contains(str)) {
                                    DataHolder.get().a(this.c, str, map2);
                                }
                            } catch (Exception unused2) {
                            }
                        }
                    }
                    return;
                }
                break;
            case ATTR:
                try {
                    DataHolder.get().c(this.c, (Map<String, Object>) (Map) map.get("user_attributes"));
                } catch (Exception unused3) {
                }
                return;
            case ANDROID:
                return;
            case IOS:
            case WEB:
                a(map, fVar);
                break;
        }
    }

    private void a(am amVar, Map<String, Object> map) {
        if (map != null && amVar != null) {
            String amVar2 = amVar.toString();
            Object obj = map.get(amVar2);
            if (obj != null) {
                DataHolder.get().a(this.c, amVar2, obj, f.USER, o.FORCE_UPDATE);
            }
        }
    }

    private void a(Map<String, Object> map, f fVar) {
        Map map2 = (Map) map.get("devices");
        if (map2 != null) {
            List list = (List) map2.get(fVar.d());
            if (list != null && list.size() > 0) {
                Map map3 = (Map) list.get(0);
                if (map3 != null) {
                    for (String str : map3.keySet()) {
                        try {
                            DataHolder.get().a(this.c, str, map3.get(str), fVar);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
    }

    public Object a(Object obj) {
        Map<String, Object> map;
        if (((Boolean) obj).booleanValue()) {
            g i = new f.a(WebEngageConstant.d.a(i(), h(), WebEngage.get().getWebEngageConfig().getWebEngageKey()), e.GET, this.f5384b).b(3).a().i();
            if (i != null && i.i()) {
                this.c = h().isEmpty() ? i() : h();
                try {
                    map = com.webengage.sdk.android.utils.f.a(i.e(), true);
                } catch (Exception e) {
                    d(e);
                    map = null;
                }
                if (map != null) {
                    Map map2 = (Map) map.get("upf");
                    if (map2 != null) {
                        int i2 = 0;
                        if (h().isEmpty()) {
                            f[] values = f.values();
                            int length = values.length;
                            while (i2 < length) {
                                f fVar = values[i2];
                                if (fVar.c()) {
                                    a(fVar, (Map<String, Object>) map2);
                                }
                                i2++;
                            }
                            a(am.CITY, (Map<String, Object>) map2);
                            a(am.COUNTRY, (Map<String, Object>) map2);
                            a(am.REGION, (Map<String, Object>) map2);
                            a(am.LOCALITY, (Map<String, Object>) map2);
                            a(am.POSTAL_CODE, (Map<String, Object>) map2);
                        } else if (h().equals(map2.get("cuid"))) {
                            f[] values2 = f.values();
                            int length2 = values2.length;
                            while (i2 < length2) {
                                f fVar2 = values2[i2];
                                if (fVar2.a()) {
                                    a(fVar2, (Map<String, Object>) map2);
                                }
                                i2++;
                            }
                        }
                    }
                }
            } else if (i != null) {
                i.n();
            }
        }
        return null;
    }

    public Object a(Map<String, Object> map) {
        try {
            this.d = new c(this.f5384b);
            List<Object> d2 = this.d.d();
            return (d2 == null || d2.size() <= 0) ? Boolean.valueOf(!h().isEmpty()) : Boolean.TRUE;
        } catch (Exception unused) {
            return Boolean.FALSE;
        }
    }

    public void b(Object obj) {
    }
}
