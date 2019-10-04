package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageItemInfo;
import com.yandex.metrica.impl.bo;
import com.yandex.metrica.impl.bt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class hi {

    /* renamed from: a  reason: collision with root package name */
    private hg f6103a;

    public hi(hg hgVar) {
        this.f6103a = hgVar;
    }

    public hb a(Context context) {
        return b(context);
    }

    /* access modifiers changed from: package-private */
    public hb b(Context context) {
        hh hhVar = new hh(context);
        List<bo.a> c = c(context);
        ArrayList<hc> arrayList = new ArrayList<>(c.size());
        LinkedList linkedList = new LinkedList();
        Iterator<bo.a> it = c.iterator();
        while (true) {
            Object obj = null;
            if (!it.hasNext()) {
                break;
            }
            bo.a next = it.next();
            if (bo.a((PackageItemInfo) next.d) < 29) {
                linkedList.add(next);
            } else {
                if (this.f6103a.e()) {
                    String str = next.d.applicationInfo.packageName;
                    hf a2 = this.f6103a.a(context, str);
                    hf b2 = this.f6103a.b(context, str);
                    if (!(a2 == null && b2 == null)) {
                        obj = new he(next, b2, a2);
                    }
                } else {
                    hf a3 = this.f6103a.a(context, next.d.applicationInfo.packageName);
                    if (a3 != null && !bt.a(a3.c().f6085a)) {
                        obj = new hc(next, a3);
                    }
                }
                if (obj != null) {
                    arrayList.add(obj);
                }
            }
        }
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            bo.a aVar = (bo.a) it2.next();
            String d = this.f6103a.d(context, aVar.d.packageName);
            if (!bt.a(d)) {
                arrayList.add(new hc(aVar, new hf(new hb(d, null), null, -1)));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (hc hcVar : arrayList) {
            hb a4 = hcVar.a();
            hd hdVar = (hd) hashMap.get(a4.f6085a);
            if (hdVar == null) {
                hdVar = new hd(a4, hhVar);
                hashMap.put(a4.f6085a, hdVar);
            }
            hdVar.a(hcVar);
        }
        if (hashMap.size() == 1) {
            Iterator it3 = hashMap.values().iterator();
            if (it3.hasNext()) {
                return ((hd) it3.next()).c();
            }
            final StringBuilder sb = new StringBuilder();
            sb.append("Smth wrong when iterate through initial candidates list");
            sb.append(10);
            lm.a(context).reportEvent("multiple_device_ids", (Map<String, Object>) new HashMap<String, Object>() {
                {
                    put("error", sb.toString());
                }
            });
            return null;
        }
        c(context, arrayList);
        return a(context, (Map<String, hd>) hashMap);
    }

    private hb a(Context context, Map<String, hd> map) {
        a(context, "method_carriers_count", map.size());
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (hd next : map.values()) {
            int b2 = next.b();
            if (b2 > i) {
                arrayList.clear();
                arrayList.add(next);
                i = b2;
            } else if (b2 == i) {
                arrayList.add(next);
            }
        }
        if (arrayList.size() == 1) {
            return ((hd) arrayList.get(0)).c();
        }
        hb a2 = ((hd) arrayList.get(0)).b() == 1 ? a(context, (ArrayList<hd>) arrayList) : null;
        if (a2 != null) {
            return a2;
        }
        List<hd> a3 = a((List<hd>) arrayList);
        if (a3 == null) {
            return a(context, (List<hd>) arrayList);
        }
        return a(context, a3);
    }

    private static List<hd> a(List<hd> list) {
        ArrayList arrayList = new ArrayList();
        for (hd next : list) {
            if (!next.a()) {
                arrayList.add(next);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    private static hb a(Context context, ArrayList<hd> arrayList) {
        String packageName = context.getPackageName();
        Iterator<hd> it = arrayList.iterator();
        hd hdVar = null;
        hd hdVar2 = null;
        while (it.hasNext()) {
            hd next = it.next();
            if (packageName.equals(next.d().get(0).c().e)) {
                hdVar = next;
            } else {
                hdVar2 = next;
            }
        }
        if (hdVar == null) {
            return null;
        }
        if (!hdVar2.a()) {
            return hdVar2.c();
        }
        if (hdVar.a()) {
            return hdVar2.c();
        }
        return hdVar.c();
    }

    /* access modifiers changed from: package-private */
    public hb a(Context context, List<hd> list) {
        a(context, "method_first_installed", list.size());
        ArrayList arrayList = new ArrayList();
        long j = Long.MAX_VALUE;
        for (hd next : list) {
            Long e = next.e();
            int compareTo = e.compareTo(j);
            if (compareTo < 0) {
                arrayList.clear();
                arrayList.add(next);
                j = e;
            } else if (compareTo == 0) {
                arrayList.add(next);
            }
        }
        if (arrayList.size() == 1) {
            return ((hd) arrayList.get(0)).c();
        }
        return b(context, arrayList);
    }

    private static hb b(Context context, List<hd> list) {
        a(context, "method_device_id_comparing", list.size());
        String str = "";
        hb hbVar = null;
        for (hd next : list) {
            if (next.c().f6085a.compareTo(str) > 0) {
                str = next.c().f6085a;
                hbVar = next.c();
            }
        }
        return hbVar;
    }

    private static void c(Context context, List<hc> list) {
        final StringBuilder sb = new StringBuilder();
        for (hc next : list) {
            sb.append(next.c().d.packageName);
            sb.append(" ");
            sb.append(next.toString());
            sb.append(10);
        }
        lm.a(context).reportEvent("multiple_device_ids", (Map<String, Object>) new HashMap<String, Object>() {
            {
                put("data", sb.toString());
            }
        });
    }

    /* access modifiers changed from: package-private */
    public List<bo.a> c(Context context) {
        return bo.b(context, bo.a(context));
    }

    private static void a(Context context, final String str, final int i) {
        lm.a(context).reportEvent("multiple_device_ids", (Map<String, Object>) new HashMap<String, Object>() {
            {
                put(str, new HashMap<String, Object>() {
                    {
                        put("candidates_count", Integer.valueOf(i));
                    }
                });
            }
        });
    }
}
