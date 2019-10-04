package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.s;
import java.util.LinkedList;

public class by extends bz<cm> {

    /* renamed from: a  reason: collision with root package name */
    private final cv f5910a;

    /* renamed from: b  reason: collision with root package name */
    private final du f5911b;
    private final cs c;

    /* renamed from: com.yandex.metrica.impl.ob.by$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5912a = new int[s.a.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        static {
            /*
                com.yandex.metrica.impl.s$a[] r0 = com.yandex.metrica.impl.s.a.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5912a = r0
                int[] r0 = f5912a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_START     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5912a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_INIT     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5912a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.yandex.metrica.impl.s$a r1 = com.yandex.metrica.impl.s.a.EVENT_TYPE_UPDATE_FOREGROUND_TIME     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.by.AnonymousClass1.<clinit>():void");
        }
    }

    public by(ac acVar) {
        this.f5910a = new cv(acVar);
        this.f5911b = new du(acVar);
        this.c = new cs(acVar);
    }

    public bw<cm> a(int i) {
        LinkedList linkedList = new LinkedList();
        int i2 = AnonymousClass1.f5912a[s.a.a(i).ordinal()];
        if (i2 == 1) {
            linkedList.add(this.f5911b);
            linkedList.add(this.f5910a);
        } else if (i2 == 2) {
            linkedList.add(this.f5910a);
        } else if (i2 == 3) {
            linkedList.add(this.c);
        }
        return new bv(linkedList);
    }
}
