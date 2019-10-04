package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.s;
import java.util.ArrayList;

public class bu extends bz<cb> {

    /* renamed from: a  reason: collision with root package name */
    private final dg f5905a;

    /* renamed from: com.yandex.metrica.impl.ob.bu$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5906a = new int[s.a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                com.yandex.metrica.impl.s$a[] r0 = com.yandex.metrica.impl.s.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5906a = r0
                int[] r0 = f5906a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_REFERRER_RECEIVED_FROM_BROADCAST     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5906a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_STARTUP     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5906a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_REFERRER_OBTAINED_FROM_SERVICES     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f5906a     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_UPDATE_PRE_ACTIVATION_CONFIG     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.bu.AnonymousClass1.<clinit>():void");
        }
    }

    public bu(x xVar) {
        this.f5905a = new dg(xVar);
    }

    public bw<cb> a(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = AnonymousClass1.f5906a[s.a.a(i).ordinal()];
        if (i2 == 1) {
            arrayList.add(this.f5905a.a());
        } else if (i2 == 2) {
            arrayList.add(this.f5905a.b());
        } else if (i2 == 3) {
            arrayList.add(this.f5905a.c());
        } else if (i2 == 4) {
            arrayList.add(this.f5905a.d());
        }
        return new bv(arrayList);
    }
}
