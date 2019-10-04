package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.s;

public class ej {

    /* renamed from: a  reason: collision with root package name */
    private final ac f5959a;

    /* renamed from: b  reason: collision with root package name */
    private final a f5960b;
    private final ed<ef> c;
    private final ed<ef> d;
    private ee e;
    private b f;

    /* renamed from: com.yandex.metrica.impl.ob.ej$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5961a = new int[b.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        static {
            /*
                com.yandex.metrica.impl.ob.ej$b[] r0 = com.yandex.metrica.impl.ob.ej.b.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5961a = r0
                int[] r0 = f5961a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.yandex.metrica.impl.ob.ej$b r1 = com.yandex.metrica.impl.ob.ej.b.FOREGROUND     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5961a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.yandex.metrica.impl.ob.ej$b r1 = com.yandex.metrica.impl.ob.ej.b.BACKGROUND     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5961a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.yandex.metrica.impl.ob.ej$b r1 = com.yandex.metrica.impl.ob.ej.b.EMPTY     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.ej.AnonymousClass1.<clinit>():void");
        }
    }

    public interface a {
        void a(i iVar, ek ekVar);
    }

    public enum b {
        EMPTY,
        BACKGROUND,
        FOREGROUND
    }

    public ej(ac acVar, a aVar) {
        this(acVar, aVar, new ec(acVar), new eb(acVar));
    }

    public ej(ac acVar, a aVar, ed<ef> edVar, ed<ef> edVar2) {
        this.f = null;
        this.f5959a = acVar;
        this.f5960b = aVar;
        this.c = edVar;
        this.d = edVar2;
    }

    public void a(i iVar) {
        f(iVar);
        int i = AnonymousClass1.f5961a[this.f.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    this.e = e(iVar);
                }
                return;
            }
            b(this.e, iVar);
            this.e = e(iVar);
        } else if (a(this.e, iVar)) {
            this.e.b(iVar.v());
        } else {
            this.e = e(iVar);
        }
    }

    public void b(i iVar) {
        f(iVar);
        if (this.f != b.EMPTY) {
            b(this.e, iVar);
        }
        this.f = b.EMPTY;
    }

    public ee c(i iVar) {
        f(iVar);
        if (this.f != b.EMPTY && !a(this.e, iVar)) {
            this.f = b.EMPTY;
            this.e = null;
        }
        int i = AnonymousClass1.f5961a[this.f.ordinal()];
        if (i == 1) {
            return this.e;
        }
        if (i != 2) {
            this.f = b.BACKGROUND;
            long v = iVar.v();
            ee a2 = this.d.a(new ef(v, iVar.w()));
            if (this.f5959a.A().d()) {
                this.f5960b.a(i.a(iVar, s.a.EVENT_TYPE_START), a(a2, iVar.v()));
            } else if (iVar.e() == s.a.EVENT_TYPE_FIRST_ACTIVATION.a()) {
                this.f5960b.a(iVar, a(a2, v));
                this.f5960b.a(i.a(iVar, s.a.EVENT_TYPE_START), a(a2, v));
            }
            this.e = a2;
            return this.e;
        }
        this.e.b(iVar.v());
        return this.e;
    }

    public ek d(i iVar) {
        return a(c(iVar), iVar.v());
    }

    public ee a() {
        return this.e;
    }

    public void a(i iVar, boolean z) {
        c(iVar).a(z);
    }

    /* access modifiers changed from: package-private */
    public ee e(i iVar) {
        long v = iVar.v();
        ee a2 = this.c.a(new ef(v, iVar.w()));
        this.f = b.FOREGROUND;
        this.f5959a.a(true);
        this.f5960b.a(i.a(iVar, s.a.EVENT_TYPE_START), a(a2, v));
        return a2;
    }

    private void f(i iVar) {
        if (this.f == null) {
            ee a2 = this.c.a();
            if (a(a2, iVar)) {
                this.e = a2;
                this.f = b.FOREGROUND;
                return;
            }
            ee a3 = this.d.a();
            if (a(a3, iVar)) {
                this.e = a3;
                this.f = b.BACKGROUND;
                return;
            }
            this.e = null;
            this.f = b.EMPTY;
        }
    }

    private boolean a(ee eeVar, i iVar) {
        if (eeVar == null) {
            return false;
        }
        if (eeVar.a(iVar.v())) {
            return true;
        }
        b(eeVar, iVar);
        return false;
    }

    private void b(ee eeVar, i iVar) {
        if (eeVar.g()) {
            this.f5960b.a(i.a(iVar, s.a.EVENT_TYPE_ALIVE), a(eeVar));
            eeVar.a(false);
        }
        eeVar.e();
    }

    /* access modifiers changed from: package-private */
    public ek a(ee eeVar) {
        return new ek().a(eeVar.c()).a(eeVar.a()).b(eeVar.f()).c(eeVar.d());
    }

    private static ek a(ee eeVar, long j) {
        return new ek().a(eeVar.c()).b(eeVar.f()).c(eeVar.c(j)).a(eeVar.a());
    }

    public ek b() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        this.f5959a.l().a(currentTimeMillis, en.BACKGROUND, currentTimeMillis);
        return new ek().a(currentTimeMillis).a(en.BACKGROUND).b(0).c(0);
    }
}
