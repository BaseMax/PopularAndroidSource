package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.bv;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class ba {

    /* renamed from: a  reason: collision with root package name */
    private final Object f5880a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final bf f5881b;
    private final HashMap<az, bb> c = new HashMap<>();
    private final nu<a, az> d = new nu<>();
    private final Context e;
    private volatile int f = 0;

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f5882a;

        /* renamed from: b  reason: collision with root package name */
        private final Integer f5883b;
        private final String c;

        a(String str, Integer num, String str2) {
            this.f5882a = str;
            this.f5883b = num;
            this.c = str2;
        }

        a(az azVar) {
            this(azVar.c(), azVar.d(), azVar.e());
        }

        public final int hashCode() {
            int hashCode = this.f5882a.hashCode() * 31;
            Integer num = this.f5883b;
            int i = 0;
            int hashCode2 = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
            String str = this.c;
            if (str != null) {
                i = str.hashCode();
            }
            return hashCode2 + i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                a aVar = (a) obj;
                if (!this.f5882a.equals(aVar.f5882a)) {
                    return false;
                }
                Integer num = this.f5883b;
                if (num == null ? aVar.f5883b != null : !num.equals(aVar.f5883b)) {
                    return false;
                }
                String str = this.c;
                String str2 = aVar.c;
                if (str != null) {
                    return str.equals(str2);
                }
                if (str2 == null) {
                    return true;
                }
            }
            return false;
        }
    }

    public ba(Context context) {
        this.e = context.getApplicationContext();
        this.f5881b = new bf(context);
    }

    public bb a(az azVar, t tVar) {
        bb bbVar;
        synchronized (this.f5880a) {
            bbVar = this.c.get(azVar);
            if (bbVar == null) {
                bbVar = azVar.a().a(this.e, this.f5881b, azVar, tVar);
                this.c.put(azVar, bbVar);
                this.d.a(new a(azVar), azVar);
                this.f++;
            }
        }
        return bbVar;
    }

    public void a(String str, int i, String str2) {
        Integer valueOf = Integer.valueOf(i);
        synchronized (this.f5880a) {
            Collection<az> b2 = this.d.b(new a(str, valueOf, str2));
            if (!bv.a((Collection) b2)) {
                this.f -= b2.size();
                ArrayList arrayList = new ArrayList(b2.size());
                for (az remove : b2) {
                    arrayList.add(this.c.remove(remove));
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((bb) it.next()).a();
                }
            }
        }
    }

    public int a() {
        return this.f;
    }
}
