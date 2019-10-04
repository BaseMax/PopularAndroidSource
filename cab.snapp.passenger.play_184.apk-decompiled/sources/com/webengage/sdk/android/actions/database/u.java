package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.a;
import com.webengage.sdk.android.l;
import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import io.fabric.sdk.android.services.network.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class u extends a {

    /* renamed from: b  reason: collision with root package name */
    private Context f5378b = null;
    private String c = null;
    private Object d = null;

    protected u(Context context) {
        super(context);
        this.f5378b = context.getApplicationContext();
    }

    private String a(ArrayList<l> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        try {
            return DataType.convert(arrayList, DataType.STRING, true).toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public Object a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (!r.e()) {
            return new g.a().a();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(c.HEADER_CONTENT_TYPE, "application/transit+json");
        return new f.a(this.c, e.POST, this.f5378b).a(obj).a((Map<String, String>) hashMap).a().i();
    }

    public Object a(Map<String, Object> map) {
        this.d = map.get("action_data");
        this.c = (String) map.get("server_url");
        return a((ArrayList<l>) (ArrayList) this.d);
    }

    public void b(Object obj) {
        if (obj != null) {
            g gVar = (g) obj;
            ArrayList arrayList = (ArrayList) this.d;
            if (gVar.a() != null || gVar.d() < 200 || gVar.d() >= 500) {
                if (r.e()) {
                    r.b(false);
                    q.f5372a.b().a(false);
                    q.f5372a.b().b();
                }
                ArrayList arrayList2 = new ArrayList();
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(Integer.toString(((l) it.next()).c().intValue()));
                    }
                }
                i.a(this.f5378b).b(arrayList2);
                Logger.d("WebEngage", "Event Logging failed, scheduling next sync");
                if (gVar.a() != null) {
                    Logger.e("WebEngage", "Event sync failed due to Exception: " + String.valueOf(gVar.a()), gVar.a());
                }
            } else {
                q.f5372a.b().a(true);
                q.f5372a.b().d();
                Logger.d("WebEngage", "Events successfully Logged to server, scheduling next sync");
                ArrayList arrayList3 = new ArrayList();
                if (arrayList != null) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(Integer.toString(((l) it2.next()).c().intValue()));
                    }
                }
                i.a(this.f5378b).a((List<String>) arrayList3);
            }
            if (gVar.i()) {
                gVar.m();
                return;
            }
            gVar.n();
        }
    }
}
