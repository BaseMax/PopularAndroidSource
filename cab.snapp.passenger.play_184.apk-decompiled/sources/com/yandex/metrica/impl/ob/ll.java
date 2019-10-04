package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.yandex.metrica.impl.av;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.ob.ki;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.a.b;
import org.a.c;

public class ll {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<ki.a.b.C0121a, String> f6378a = Collections.unmodifiableMap(new HashMap<ki.a.b.C0121a, String>() {
        {
            put(ki.a.b.C0121a.COMPLETE, "complete");
            put(ki.a.b.C0121a.ERROR, "error");
            put(ki.a.b.C0121a.OFFLINE, "offline");
            put(ki.a.b.C0121a.INCOMPATIBLE_NETWORK_TYPE, "incompatible_network_type");
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private static final Map<av.a, String> f6379b = Collections.unmodifiableMap(new HashMap<av.a, String>() {
        {
            put(av.a.WIFI, "wifi");
            put(av.a.CELL, "cell");
            put(av.a.OFFLINE, "offline");
            put(av.a.UNDEFINED, "undefined");
        }
    });

    public String a(ki.a.b bVar) {
        String str;
        try {
            c cVar = new c();
            cVar.putOpt("id", bVar.a().f6235a);
            cVar.putOpt("url", bVar.a().f6236b);
            cVar.putOpt("status", f6378a.get(bVar.b()));
            cVar.putOpt("code", bVar.d());
            if (!bv.a(bVar.e())) {
                cVar.putOpt("body", Base64.encodeToString(bVar.e(), 0));
            } else if (!bv.a(bVar.h())) {
                cVar.putOpt("body", Base64.encodeToString(bVar.h(), 0));
            }
            cVar.putOpt("headers", a(bVar.f()));
            if (bVar.g() != null) {
                str = r2.toString() + "\n" + Log.getStackTraceString(r2);
            } else {
                str = null;
            }
            cVar.putOpt("error", str);
            cVar.putOpt("network_type", f6379b.get(bVar.c()));
            return cVar.toString();
        } catch (Exception e) {
            return e.toString();
        }
    }

    public String a(ki.a.C0120a aVar) {
        try {
            return new c().put("id", (Object) aVar.f6235a).toString();
        } catch (Exception e) {
            return e.toString();
        }
    }

    private static c a(Map<String, List<String>> map) throws b {
        if (bv.a((Map) map)) {
            return null;
        }
        c cVar = new c();
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            if (!bv.a((Collection) next.getValue())) {
                List<String> a2 = bv.a((List) next.getValue(), 10);
                ArrayList arrayList = new ArrayList();
                for (String str2 : a2) {
                    if (!TextUtils.isEmpty(str2)) {
                        if (str2.length() > 100) {
                            str2 = str2.substring(0, 100);
                        }
                        arrayList.add(str2);
                    }
                }
                cVar.putOpt(str, TextUtils.join(",", arrayList));
            }
        }
        return cVar;
    }
}
