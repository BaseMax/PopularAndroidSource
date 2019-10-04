package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.ab;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

class ad {

    /* renamed from: b  reason: collision with root package name */
    private static volatile ad f5490b;

    /* renamed from: a  reason: collision with root package name */
    Map<af, LinkedHashSet<ab>> f5491a = null;
    private Context c = null;
    private List<ag> d = null;

    private ad(Context context) {
        this.c = context.getApplicationContext();
        this.f5491a = new HashMap();
        b();
    }

    static ad a(Context context) {
        if (f5490b == null) {
            synchronized (ad.class) {
                if (f5490b == null) {
                    f5490b = new ad(context);
                }
            }
        }
        return f5490b;
    }

    private LinkedHashSet<ab> a(ab.a[] aVarArr) {
        LinkedHashSet<ab> linkedHashSet = new LinkedHashSet<>();
        if (aVarArr != null) {
            for (ab.a aVar : aVarArr) {
                if (aVar != null) {
                    linkedHashSet.add(aVar.a(this.c));
                }
            }
        }
        return linkedHashSet;
    }

    private void b() {
        for (af afVar : af.values()) {
            this.f5491a.put(afVar, a(afVar.a()));
        }
    }

    /* access modifiers changed from: protected */
    public LinkedHashSet<ab> a(af afVar) {
        return this.f5491a.get(afVar);
    }

    /* access modifiers changed from: protected */
    public List<ag> a() {
        return this.d;
    }

    /* access modifiers changed from: protected */
    public void a(af afVar, Object obj) {
        List<ag> a2 = a(this.c).a();
        if (a(afVar, obj, a2)) {
            LinkedHashSet<ab> a3 = a(this.c).a(afVar);
            if (a3 != null) {
                Iterator it = a3.iterator();
                while (it.hasNext()) {
                    ((ab) it.next()).a(afVar, obj);
                }
            }
            b(afVar, obj, a2);
        }
    }

    /* access modifiers changed from: protected */
    public void a(ag agVar) {
        if (this.d == null) {
            this.d = new ArrayList();
        }
        this.d.add(agVar);
    }

    /* access modifiers changed from: protected */
    public boolean a(af afVar, Object obj, List<ag> list) {
        if (list == null) {
            return true;
        }
        Iterator<ag> it = list.iterator();
        while (true) {
            boolean z = true;
            while (true) {
                if (!it.hasNext()) {
                    return z;
                }
                ag next = it.next();
                if (!z || !next.a(afVar, obj)) {
                    z = false;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(af afVar, Object obj, List<ag> list) {
        if (list != null) {
            for (ag b2 : list) {
                b2.b(afVar, obj);
            }
        }
    }
}
