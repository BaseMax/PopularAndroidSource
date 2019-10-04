package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class iu {

    /* renamed from: a  reason: collision with root package name */
    private Context f6169a;

    public iu(Context context) {
        this.f6169a = context;
    }

    public void a() {
        SharedPreferences a2 = jf.a(this.f6169a, "_bidoptpreferences");
        if (a2.getAll().size() > 0) {
            String string = a2.getString(jc.c.a(), null);
            jc jcVar = new jc(this.f6169a);
            if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(jcVar.a((String) null))) {
                jcVar.j(string).j();
                a2.edit().remove(jc.c.a()).apply();
            }
            Map<String, ?> all = a2.getAll();
            if (all.size() > 0) {
                for (String next : a(all, jc.d.a())) {
                    String string2 = a2.getString(new je(jc.d.a(), next).b(), null);
                    jc jcVar2 = new jc(this.f6169a, next);
                    if (!TextUtils.isEmpty(string2) && TextUtils.isEmpty(jcVar2.b(null))) {
                        jcVar2.i(string2).j();
                    }
                }
            }
            a2.edit().clear().apply();
        }
    }

    private static List<String> a(Map<String, ?> map, String str) {
        ArrayList arrayList = new ArrayList();
        for (String next : map.keySet()) {
            if (next.startsWith(str)) {
                arrayList.add(next.replace(str, ""));
            }
        }
        return arrayList;
    }

    public void b() {
        fr e = fq.a(this.f6169a).e();
        SharedPreferences a2 = jf.a(this.f6169a, "_startupserviceinfopreferences");
        gg ggVar = new gg(e, null);
        String string = a2.getString(jc.c.a(), null);
        if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(ggVar.a().f6417b)) {
            ggVar.b(string).i();
            a2.edit().remove(jc.c.a()).apply();
        }
        gg ggVar2 = new gg(e, this.f6169a.getPackageName());
        boolean z = a2.getBoolean(jc.e.a(), false);
        if (z) {
            ggVar2.a(z).i();
        }
        a(e, this.f6169a.getPackageName());
        for (String a3 : a(a2.getAll(), jc.d.a())) {
            a(e, a3);
        }
    }

    private void a(fr frVar, String str) {
        gg ggVar = new gg(frVar, str);
        jc jcVar = new jc(this.f6169a, str);
        String b2 = jcVar.b(null);
        if (!TextUtils.isEmpty(b2)) {
            ggVar.a(b2);
        }
        String a2 = jcVar.a();
        if (!TextUtils.isEmpty(a2)) {
            ggVar.h(a2);
        }
        String d = jcVar.d(null);
        if (!TextUtils.isEmpty(d)) {
            ggVar.g(d);
        }
        String f = jcVar.f(null);
        if (!TextUtils.isEmpty(f)) {
            ggVar.e(f);
        }
        String g = jcVar.g(null);
        if (!TextUtils.isEmpty(g)) {
            ggVar.d(g);
        }
        String c = jcVar.c(null);
        if (!TextUtils.isEmpty(c)) {
            ggVar.f(c);
        }
        long a3 = jcVar.a(-1);
        if (a3 != -1) {
            ggVar.a(a3);
        }
        String e = jcVar.e(null);
        if (!TextUtils.isEmpty(e)) {
            ggVar.c(e);
        }
        ggVar.i();
        jcVar.b();
    }
}
