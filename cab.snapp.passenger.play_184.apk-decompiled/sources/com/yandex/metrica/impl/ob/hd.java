package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.hc;
import java.util.ArrayList;
import java.util.List;

class hd {

    /* renamed from: a  reason: collision with root package name */
    private final hb f6091a;

    /* renamed from: b  reason: collision with root package name */
    private final hh f6092b;
    private int c;
    private final List<hc> d = new ArrayList();
    private final List<hc> e = new ArrayList();
    private final List<hc> f = new ArrayList();

    /* renamed from: com.yandex.metrica.impl.ob.hd$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6093a = new int[hc.a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                com.yandex.metrica.impl.ob.hc$a[] r0 = com.yandex.metrica.impl.ob.hc.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f6093a = r0
                int[] r0 = f6093a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.yandex.metrica.impl.ob.hc$a r1 = com.yandex.metrica.impl.ob.hc.a.THIS     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f6093a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.yandex.metrica.impl.ob.hc$a r1 = com.yandex.metrica.impl.ob.hc.a.OTHER     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.hd.AnonymousClass1.<clinit>():void");
        }
    }

    hd(hb hbVar, hh hhVar) {
        this.f6091a = hbVar;
        this.f6092b = hhVar;
    }

    public void a(hc hcVar) {
        this.c += hcVar.c().f5781b;
        this.d.add(hcVar);
        int i = AnonymousClass1.f6093a[hcVar.a(this.f6092b).ordinal()];
        if (i != 1) {
            if (i == 2) {
                this.f.add(hcVar);
            }
            return;
        }
        this.e.add(hcVar);
    }

    public boolean a() {
        return !this.f.isEmpty();
    }

    public int b() {
        return this.d.size();
    }

    public hb c() {
        return this.f6091a;
    }

    public List<hc> d() {
        return this.d;
    }

    public Long e() {
        long j = Long.MAX_VALUE;
        for (hc c2 : this.d) {
            Long valueOf = Long.valueOf(c2.c().c);
            if (valueOf.compareTo(j) < 0) {
                j = valueOf;
            }
        }
        return j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f6091a.equals(((hd) obj).f6091a);
    }

    public int hashCode() {
        return this.f6091a.hashCode();
    }
}
