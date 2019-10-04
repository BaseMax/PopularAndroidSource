package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.bs;
import com.yandex.metrica.impl.ob.ka;
import com.yandex.metrica.impl.s;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class bp {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<Integer, Integer> f5895a = Collections.unmodifiableMap(new HashMap<Integer, Integer>() {
        {
            put(Integer.valueOf(s.a.EVENT_TYPE_DIAGNOSTIC.a()), 22);
            put(Integer.valueOf(s.a.EVENT_TYPE_DIAGNOSTIC_STATBOX.a()), 23);
            put(Integer.valueOf(s.a.EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING.a()), 24);
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private final i f5896b;
    private final bq c;
    private final bs d;
    private final op e;
    private final op f;
    private final nq g;

    public static class a {
        public bp a(i iVar, bq bqVar, bs bsVar) {
            return new bp(iVar, bqVar, bsVar);
        }
    }

    public bp(i iVar, bq bqVar, bs bsVar) {
        this(iVar, bqVar, bsVar, new op(1024, "diagnostic event name"), new op(204800, "diagnostic event value"), new np());
    }

    public bp(i iVar, bq bqVar, bs bsVar, op opVar, op opVar2, nq nqVar) {
        this.f5896b = iVar;
        this.c = bqVar;
        this.d = bsVar;
        this.f = opVar;
        this.e = opVar2;
        this.g = nqVar;
    }

    public byte[] a() {
        ka.c cVar = new ka.c();
        ka.c.e eVar = new ka.c.e();
        int i = 0;
        cVar.f6191b = new ka.c.e[]{eVar};
        bs.a a2 = this.d.a();
        eVar.f6197b = a2.f5902a;
        eVar.c = new ka.c.e.b();
        eVar.c.d = 2;
        eVar.c.f6202b = new ka.c.g();
        eVar.c.f6202b.f6204b = a2.f5903b;
        eVar.c.f6202b.c = nr.a(a2.f5903b);
        eVar.c.c = this.c.y();
        ka.c.e.a aVar = new ka.c.e.a();
        eVar.d = new ka.c.e.a[]{aVar};
        aVar.f6198b = (long) a2.c;
        aVar.c = this.g.b() - a2.f5903b;
        aVar.d = f5895a.get(Integer.valueOf(this.f5896b.e())).intValue();
        if (!TextUtils.isEmpty(this.f5896b.b())) {
            aVar.e = this.f.a(this.f5896b.b());
        }
        if (!TextUtils.isEmpty(this.f5896b.c())) {
            String c2 = this.f5896b.c();
            String a3 = this.e.a(c2);
            if (!TextUtils.isEmpty(a3)) {
                aVar.f = a3.getBytes();
            }
            int length = c2.getBytes().length;
            if (aVar.f != null) {
                i = aVar.f.length;
            }
            aVar.k = length - i;
        }
        return e.a((e) cVar);
    }
}
