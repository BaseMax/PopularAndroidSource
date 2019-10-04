package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;
import java.util.WeakHashMap;

public class kv {

    /* renamed from: a  reason: collision with root package name */
    private static final EnumSet<b> f6337a = EnumSet.of(b.HAS_FROM_PLAY_SERVICES, b.HAS_FROM_RECEIVER_ONLY, b.RECEIVER);

    /* renamed from: b  reason: collision with root package name */
    private static final EnumSet<b> f6338b = EnumSet.of(b.HAS_FROM_PLAY_SERVICES, b.HAS_FROM_RECEIVER_ONLY);
    private final Set<a> c;
    private kw d;
    private kw e;
    private boolean f;
    private final gf g;
    private b h;

    /* renamed from: com.yandex.metrica.impl.ob.kv$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6339a = new int[b.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|12) */
        /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        static {
            /*
                com.yandex.metrica.impl.ob.kv$b[] r0 = com.yandex.metrica.impl.ob.kv.b.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f6339a = r0
                int[] r0 = f6339a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.yandex.metrica.impl.ob.kv$b r1 = com.yandex.metrica.impl.ob.kv.b.EMPTY     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f6339a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.yandex.metrica.impl.ob.kv$b r1 = com.yandex.metrica.impl.ob.kv.b.RECEIVER     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f6339a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.yandex.metrica.impl.ob.kv$b r1 = com.yandex.metrica.impl.ob.kv.b.WAIT_FOR_RECEIVER_ONLY     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f6339a     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.yandex.metrica.impl.ob.kv$b r1 = com.yandex.metrica.impl.ob.kv.b.HAS_FROM_PLAY_SERVICES     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = f6339a     // Catch:{ NoSuchFieldError -> 0x0040 }
                com.yandex.metrica.impl.ob.kv$b r1 = com.yandex.metrica.impl.ob.kv.b.HAS_FROM_RECEIVER_ONLY     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.kv.AnonymousClass1.<clinit>():void");
        }
    }

    public interface a {
        boolean a(kw kwVar);
    }

    enum b {
        EMPTY,
        RECEIVER,
        WAIT_FOR_RECEIVER_ONLY,
        HAS_FROM_PLAY_SERVICES,
        HAS_FROM_RECEIVER_ONLY
    }

    public kv(Context context) {
        this(new gf(fq.a(context).c()));
    }

    kv(gf gfVar) {
        this.c = Collections.newSetFromMap(new WeakHashMap());
        this.h = b.EMPTY;
        this.g = gfVar;
        this.f = this.g.d();
        if (!this.f) {
            String b2 = this.g.b();
            if (!TextUtils.isEmpty(b2)) {
                kw kwVar = new kw(b2, 0, 0);
                this.d = kwVar;
            }
            this.e = this.g.c();
            this.h = b.values()[this.g.d(0)];
        }
    }

    public synchronized void a(kw kwVar) {
        b bVar;
        if (!f6338b.contains(this.h)) {
            this.e = kwVar;
            this.g.a(kwVar).i();
            int i = AnonymousClass1.f6339a[this.h.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    bVar = this.h;
                } else {
                    bVar = kwVar == null ? b.HAS_FROM_RECEIVER_ONLY : b.HAS_FROM_PLAY_SERVICES;
                }
            } else if (kwVar == null) {
                bVar = b.WAIT_FOR_RECEIVER_ONLY;
            } else {
                bVar = b.HAS_FROM_PLAY_SERVICES;
            }
            a(bVar);
        }
    }

    public synchronized void a(String str) {
        b bVar;
        if (!f6337a.contains(this.h) && !TextUtils.isEmpty(str)) {
            kw kwVar = new kw(str, 0, 0);
            this.d = kwVar;
            this.g.a(str).i();
            int i = AnonymousClass1.f6339a[this.h.ordinal()];
            if (i == 1) {
                bVar = b.RECEIVER;
            } else if (i != 3) {
                bVar = this.h;
            } else {
                bVar = b.HAS_FROM_RECEIVER_ONLY;
            }
            a(bVar);
        }
    }

    public synchronized void a(a aVar) {
        if (!this.f) {
            this.c.add(aVar);
            a();
        }
    }

    public synchronized void b(a aVar) {
        this.c.remove(aVar);
    }

    private void a(b bVar) {
        if (bVar != this.h) {
            this.h = bVar;
            this.g.e(this.h.ordinal()).i();
            a();
        }
    }

    private void a() {
        int i = AnonymousClass1.f6339a[this.h.ordinal()];
        if (i != 4) {
            if (i == 5) {
                b(this.d);
            }
            return;
        }
        b(this.e);
    }

    private synchronized void b(kw kwVar) {
        if (kwVar != null) {
            if (!this.c.isEmpty() && !this.f) {
                boolean z = false;
                for (a a2 : this.c) {
                    if (a2.a(kwVar)) {
                        z = true;
                    }
                }
                if (z) {
                    this.f = true;
                    this.g.e().f().i();
                    this.c.clear();
                }
            }
        }
    }
}
