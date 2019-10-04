package com.yandex.metrica.impl.ob;

import org.a.b;
import org.a.c;

public class ff {

    /* renamed from: a  reason: collision with root package name */
    public final fi f6006a;

    /* renamed from: b  reason: collision with root package name */
    public final fe f6007b;
    public final String c;
    public final boolean d;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public ff(android.os.Bundle r6) {
        /*
            r5 = this;
            java.lang.String r0 = "package_name"
            java.lang.String r0 = r6.getString(r0)
            java.lang.String r1 = "clte"
            boolean r1 = r6.getBoolean(r1)
            java.lang.String r2 = "flcc"
            android.os.Bundle r2 = r6.getBundle(r2)
            r3 = 0
            if (r2 != 0) goto L_0x0017
            r4 = r3
            goto L_0x001c
        L_0x0017:
            com.yandex.metrica.impl.ob.fi r4 = new com.yandex.metrica.impl.ob.fi
            r4.<init>((android.os.Bundle) r2)
        L_0x001c:
            java.lang.String r2 = "blcc"
            android.os.Bundle r6 = r6.getBundle(r2)
            if (r6 != 0) goto L_0x0025
            goto L_0x002a
        L_0x0025:
            com.yandex.metrica.impl.ob.fe r3 = new com.yandex.metrica.impl.ob.fe
            r3.<init>((android.os.Bundle) r6)
        L_0x002a:
            r5.<init>(r0, r1, r4, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.ff.<init>(android.os.Bundle):void");
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public ff(org.a.c r6) {
        /*
            r5 = this;
            r0 = 0
            java.lang.String r1 = "package_name"
            java.lang.String r1 = r6.optString(r1, r0)
            java.lang.String r2 = "clte"
            r3 = 1
            boolean r2 = r6.optBoolean(r2, r3)
            java.lang.String r3 = "flcc"
            org.a.c r3 = r6.optJSONObject(r3)
            if (r3 == 0) goto L_0x001c
            com.yandex.metrica.impl.ob.fi r4 = new com.yandex.metrica.impl.ob.fi
            r4.<init>((org.a.c) r3)
            goto L_0x001d
        L_0x001c:
            r4 = r0
        L_0x001d:
            java.lang.String r3 = "blcc"
            org.a.c r6 = r6.optJSONObject(r3)
            if (r6 == 0) goto L_0x002a
            com.yandex.metrica.impl.ob.fe r0 = new com.yandex.metrica.impl.ob.fe
            r0.<init>((org.a.c) r6)
        L_0x002a:
            r5.<init>(r1, r2, r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.ff.<init>(org.a.c):void");
    }

    public c a() {
        c cVar = new c();
        try {
            cVar.putOpt("package_name", this.c);
            cVar.putOpt("clte", Boolean.valueOf(this.d));
            if (this.f6007b != null) {
                cVar.putOpt("blcc", this.f6007b.a());
            }
            if (this.f6006a != null) {
                cVar.putOpt("flcc", this.f6006a.a());
            }
        } catch (b unused) {
        }
        return cVar;
    }

    public String toString() {
        return "ClientConfig{foregroundConfig=" + this.f6006a + ", backgroundConfig=" + this.f6007b + ", packageName='" + this.c + '\'' + ", mLocationTrackingEnabled=" + this.d + '}';
    }

    public ff(String str, boolean z, fi fiVar, fe feVar) {
        this.c = str;
        this.d = z;
        this.f6006a = fiVar;
        this.f6007b = feVar;
    }
}
