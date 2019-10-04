package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.a.b;

public class fg {

    /* renamed from: a  reason: collision with root package name */
    private static volatile fg f6008a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f6009b = new Object();
    private fh c;
    private a d;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        private Map<String, ff> f6010a = new HashMap();

        public a() {
        }

        public a(org.a.a aVar) {
            for (int i = 0; i < aVar.length(); i++) {
                try {
                    a(new ff(aVar.getJSONObject(i)));
                } catch (b unused) {
                }
            }
        }

        public org.a.a a() {
            org.a.a aVar = new org.a.a();
            for (ff a2 : this.f6010a.values()) {
                aVar.put((Object) a2.a());
            }
            return aVar;
        }

        public void a(ff ffVar) {
            this.f6010a.put(ffVar.c, ffVar);
        }

        public ff a(String str) {
            return this.f6010a.get(str);
        }
    }

    public static fg a(Context context) {
        if (f6008a == null) {
            synchronized (f6009b) {
                if (f6008a == null) {
                    f6008a = new fg(context);
                }
            }
        }
        return f6008a;
    }

    private fg(Context context) {
        this(new fh(context));
    }

    public void a(ff ffVar) {
        this.d.a(ffVar);
        this.c.a(this.d.a().toString());
    }

    public ff a(String str) {
        return this.d.a(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:7:0x001c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    fg(com.yandex.metrica.impl.ob.fh r3) {
        /*
            r2 = this;
            r2.<init>()
            r2.c = r3
            com.yandex.metrica.impl.ob.fh r3 = r2.c
            r0 = 0
            java.lang.String r3 = r3.b((java.lang.String) r0)
            if (r3 == 0) goto L_0x0019
            org.a.a r1 = new org.a.a     // Catch:{ b -> 0x0019 }
            r1.<init>((java.lang.String) r3)     // Catch:{ b -> 0x0019 }
            com.yandex.metrica.impl.ob.fg$a r3 = new com.yandex.metrica.impl.ob.fg$a     // Catch:{ b -> 0x0019 }
            r3.<init>(r1)     // Catch:{ b -> 0x0019 }
            goto L_0x001a
        L_0x0019:
            r3 = r0
        L_0x001a:
            if (r3 != 0) goto L_0x0021
            com.yandex.metrica.impl.ob.fg$a r3 = new com.yandex.metrica.impl.ob.fg$a
            r3.<init>()
        L_0x0021:
            r2.d = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fg.<init>(com.yandex.metrica.impl.ob.fh):void");
    }
}
