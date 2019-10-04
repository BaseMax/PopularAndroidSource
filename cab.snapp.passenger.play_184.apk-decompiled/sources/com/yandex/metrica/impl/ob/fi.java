package com.yandex.metrica.impl.ob;

import org.a.b;
import org.a.c;

public class fi {
    public final Long c;
    public final Float d;
    public final Integer e;
    public final Integer f;
    public final Long g;
    public final Integer h;
    public final boolean i;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    fi(android.os.Bundle r10) {
        /*
            r9 = this;
            java.lang.String r0 = "sputi"
            java.lang.Long r2 = com.yandex.metrica.impl.ob.fj.a((android.os.Bundle) r10, (java.lang.String) r0)
            r0 = 1
            java.lang.String r1 = "spudi"
            float r1 = r10.getFloat(r1, r0)
            java.lang.Float r1 = java.lang.Float.valueOf(r1)
            float r3 = r1.floatValue()
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 != 0) goto L_0x001c
            r0 = 0
            r3 = r0
            goto L_0x001d
        L_0x001c:
            r3 = r1
        L_0x001d:
            java.lang.String r0 = "sbs"
            java.lang.Integer r4 = com.yandex.metrica.impl.ob.fj.b((android.os.Bundle) r10, (java.lang.String) r0)
            java.lang.String r0 = "mbs"
            java.lang.Integer r5 = com.yandex.metrica.impl.ob.fj.b((android.os.Bundle) r10, (java.lang.String) r0)
            java.lang.String r0 = "maff"
            java.lang.Long r6 = com.yandex.metrica.impl.ob.fj.a((android.os.Bundle) r10, (java.lang.String) r0)
            java.lang.String r0 = "mrtsl"
            java.lang.Integer r7 = com.yandex.metrica.impl.ob.fj.b((android.os.Bundle) r10, (java.lang.String) r0)
            r0 = 0
            java.lang.String r1 = "ce"
            boolean r8 = r10.getBoolean(r1, r0)
            r1 = r9
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fi.<init>(android.os.Bundle):void");
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    fi(org.a.c r10) {
        /*
            r9 = this;
            java.lang.String r0 = "sputi"
            java.lang.Long r2 = com.yandex.metrica.impl.ob.fj.a((org.a.c) r10, (java.lang.String) r0)
            java.lang.String r0 = "spudi"
            r3 = 3936146074321813504(0x36a0000000000000, double:1.401298464324817E-45)
            double r0 = r10.optDouble(r0, r3)
            float r0 = (float) r0
            r1 = 1
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 != 0) goto L_0x0016
            r0 = 0
            goto L_0x001a
        L_0x0016:
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
        L_0x001a:
            r3 = r0
            java.lang.String r0 = "sbs"
            java.lang.Integer r4 = com.yandex.metrica.impl.ob.fj.b((org.a.c) r10, (java.lang.String) r0)
            java.lang.String r0 = "mbs"
            java.lang.Integer r5 = com.yandex.metrica.impl.ob.fj.b((org.a.c) r10, (java.lang.String) r0)
            java.lang.String r0 = "maff"
            java.lang.Long r6 = com.yandex.metrica.impl.ob.fj.a((org.a.c) r10, (java.lang.String) r0)
            java.lang.String r0 = "mrtsl"
            java.lang.Integer r7 = com.yandex.metrica.impl.ob.fj.b((org.a.c) r10, (java.lang.String) r0)
            r0 = 0
            java.lang.String r1 = "ce"
            boolean r8 = r10.optBoolean(r1, r0)
            r1 = r9
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fi.<init>(org.a.c):void");
    }

    public c a() throws b {
        c cVar = new c();
        cVar.putOpt("sputi", this.c);
        cVar.putOpt("spudi", this.d);
        cVar.putOpt("sbs", this.e);
        cVar.putOpt("mbs", this.f);
        cVar.putOpt("maff", this.g);
        cVar.putOpt("mrtsl", this.h);
        cVar.putOpt("ce", Boolean.valueOf(this.i));
        return cVar;
    }

    public String toString() {
        return "ForegroundLocationConfig{updateTimeInterval=" + this.c + ", updateDistanceInterval=" + this.d + ", sendBatchSize=" + this.e + ", maxBatchSize=" + this.f + ", maxAgeToForceFlush=" + this.g + ", maxRecordsToStoreLocally=" + this.h + ", collectionEnabled=" + this.i + '}';
    }

    public fi(Long l, Float f2, Integer num, Integer num2, Long l2, Integer num3, boolean z) {
        this.c = l;
        this.d = f2;
        this.e = num;
        this.f = num2;
        this.g = l2;
        this.h = num3;
        this.i = z;
    }
}
