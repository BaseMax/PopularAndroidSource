package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.b;
import java.util.LinkedList;
import java.util.List;

public class ab {

    /* renamed from: a  reason: collision with root package name */
    private final ac f5851a;

    /* renamed from: b  reason: collision with root package name */
    private final iv f5852b;
    private List<f> c = new LinkedList();

    static class a extends f {

        /* renamed from: a  reason: collision with root package name */
        private final iz f5853a;

        /* renamed from: b  reason: collision with root package name */
        private final gd f5854b;

        a(ac acVar) {
            super(acVar);
            this.f5853a = new iz(acVar.c(), acVar.b().toString());
            this.f5854b = acVar.C();
        }

        /* access modifiers changed from: protected */
        public boolean a() {
            return this.f5853a.e();
        }

        /* access modifiers changed from: protected */
        public void b() {
            d();
            c();
            b.a a2 = this.f5853a.a();
            if (a2 != null) {
                this.f5854b.a(a2);
            }
            String a3 = this.f5853a.a((String) null);
            if (!TextUtils.isEmpty(a3) && TextUtils.isEmpty(this.f5854b.a((String) null))) {
                this.f5854b.b(a3);
            }
            CounterConfiguration.a b2 = this.f5853a.b();
            CounterConfiguration.a c = this.f5854b.c();
            if (b2 != CounterConfiguration.a.UNDEFINED && c == CounterConfiguration.a.UNDEFINED) {
                this.f5854b.a(b2);
            }
            long c2 = this.f5853a.c(Long.MIN_VALUE);
            if (c2 != Long.MIN_VALUE && this.f5854b.a(Long.MIN_VALUE) == Long.MIN_VALUE) {
                this.f5854b.c(c2);
            }
            this.f5854b.i();
            this.f5853a.g();
        }

        /* access modifiers changed from: package-private */
        public void c() {
            em emVar = new em(this.f5854b, "foreground");
            if (!emVar.i()) {
                long d = this.f5853a.d(-1);
                if (-1 != d) {
                    emVar.d(d);
                }
                boolean booleanValue = this.f5853a.a(true).booleanValue();
                if (booleanValue) {
                    emVar.a(booleanValue);
                }
                long a2 = this.f5853a.a(Long.MIN_VALUE);
                if (a2 != Long.MIN_VALUE) {
                    emVar.e(a2);
                }
                long f = this.f5853a.f(0);
                if (f != 0) {
                    emVar.a(f);
                }
                long h = this.f5853a.h(0);
                if (h != 0) {
                    emVar.b(h);
                }
                emVar.h();
            }
        }

        /* access modifiers changed from: package-private */
        public void d() {
            em emVar = new em(this.f5854b, "background");
            if (!emVar.i()) {
                long e = this.f5853a.e(-1);
                if (e != -1) {
                    emVar.d(e);
                }
                long b2 = this.f5853a.b(Long.MIN_VALUE);
                if (b2 != Long.MIN_VALUE) {
                    emVar.e(b2);
                }
                long g = this.f5853a.g(0);
                if (g != 0) {
                    emVar.a(g);
                }
                long i = this.f5853a.i(0);
                if (i != 0) {
                    emVar.b(i);
                }
                emVar.h();
            }
        }
    }

    static class b extends g {
        b(ac acVar, iv ivVar) {
            super(acVar, ivVar);
        }

        /* access modifiers changed from: protected */
        public boolean a() {
            return e() instanceof ao;
        }

        /* access modifiers changed from: protected */
        public void b() {
            c().a();
        }
    }

    static class c extends f {

        /* renamed from: a  reason: collision with root package name */
        private final iw f5855a;

        /* renamed from: b  reason: collision with root package name */
        private final gb f5856b;

        c(ac acVar, iw iwVar) {
            super(acVar);
            this.f5855a = iwVar;
            this.f5856b = acVar.A();
        }

        /* access modifiers changed from: protected */
        public boolean a() {
            return "DONE".equals(this.f5855a.c(null)) || "DONE".equals(this.f5855a.b(null));
        }

        /* access modifiers changed from: protected */
        public void b() {
            if ("DONE".equals(this.f5855a.c(null))) {
                this.f5856b.b();
            }
            String e = this.f5855a.e(null);
            if (!TextUtils.isEmpty(e)) {
                this.f5856b.c(e);
            }
            if ("DONE".equals(this.f5855a.b(null))) {
                this.f5856b.a();
            }
            this.f5855a.d();
            this.f5855a.e();
            this.f5855a.c();
        }
    }

    static class d extends g {
        d(ac acVar, iv ivVar) {
            super(acVar, ivVar);
        }

        /* access modifiers changed from: protected */
        public boolean a() {
            return e().A().a((String) null) == null;
        }

        /* access modifiers changed from: protected */
        public void b() {
            iv c = c();
            if (e() instanceof ao) {
                c.c();
            } else {
                c.b();
            }
        }
    }

    static class e extends f {
        @Deprecated

        /* renamed from: a  reason: collision with root package name */
        static final je f5857a = new je("SESSION_SLEEP_START");
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        static final je f5858b = new je("SESSION_ID");
        @Deprecated
        static final je c = new je("SESSION_COUNTER_ID");
        @Deprecated
        static final je d = new je("SESSION_INIT_TIME");
        @Deprecated
        static final je e = new je("SESSION_IS_ALIVE_REPORT_NEEDED");
        @Deprecated
        static final je f = new je("BG_SESSION_ID");
        @Deprecated
        static final je g = new je("BG_SESSION_SLEEP_START");
        @Deprecated
        static final je h = new je("BG_SESSION_COUNTER_ID");
        @Deprecated
        static final je i = new je("BG_SESSION_INIT_TIME");
        @Deprecated
        static final je j = new je("BG_SESSION_IS_ALIVE_REPORT_NEEDED");
        private final gd k;

        /* access modifiers changed from: protected */
        public boolean a() {
            return true;
        }

        e(ac acVar) {
            super(acVar);
            this.k = acVar.C();
        }

        /* access modifiers changed from: protected */
        public void b() {
            d();
            c();
            this.k.p(f5857a.b());
            this.k.p(f5858b.b());
            this.k.p(c.b());
            this.k.p(d.b());
            this.k.p(e.b());
            this.k.p(f.b());
            this.k.p(g.b());
            this.k.p(h.b());
            this.k.p(i.b());
            this.k.p(j.b());
        }

        /* access modifiers changed from: package-private */
        public void c() {
            long b2 = this.k.b(f5857a.b(), -2147483648L);
            if (b2 != -2147483648L) {
                em emVar = new em(this.k, "foreground");
                if (!emVar.i()) {
                    if (b2 != 0) {
                        emVar.b(b2);
                    }
                    long b3 = this.k.b(f5858b.b(), -1);
                    if (-1 != b3) {
                        emVar.d(b3);
                    }
                    boolean b4 = this.k.b(e.b(), true);
                    if (b4) {
                        emVar.a(b4);
                    }
                    long b5 = this.k.b(d.b(), Long.MIN_VALUE);
                    if (b5 != Long.MIN_VALUE) {
                        emVar.e(b5);
                    }
                    long b6 = this.k.b(c.b(), 0);
                    if (b6 != 0) {
                        emVar.a(b6);
                    }
                    emVar.h();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void d() {
            long b2 = this.k.b(g.b(), -2147483648L);
            if (b2 != -2147483648L) {
                em emVar = new em(this.k, "background");
                if (!emVar.i()) {
                    if (b2 != 0) {
                        emVar.b(b2);
                    }
                    long b3 = this.k.b(f.b(), -1);
                    if (b3 != -1) {
                        emVar.d(b3);
                    }
                    boolean b4 = this.k.b(j.b(), true);
                    if (b4) {
                        emVar.a(b4);
                    }
                    long b5 = this.k.b(i.b(), Long.MIN_VALUE);
                    if (b5 != Long.MIN_VALUE) {
                        emVar.e(b5);
                    }
                    long b6 = this.k.b(h.b(), 0);
                    if (b6 != 0) {
                        emVar.a(b6);
                    }
                    emVar.h();
                }
            }
        }
    }

    static abstract class f {

        /* renamed from: a  reason: collision with root package name */
        private final ac f5859a;

        /* access modifiers changed from: protected */
        public abstract boolean a();

        /* access modifiers changed from: protected */
        public abstract void b();

        f(ac acVar) {
            this.f5859a = acVar;
        }

        /* access modifiers changed from: package-private */
        public ac e() {
            return this.f5859a;
        }

        /* access modifiers changed from: package-private */
        public void f() {
            if (a()) {
                b();
            }
        }
    }

    static abstract class g extends f {

        /* renamed from: a  reason: collision with root package name */
        private iv f5860a;

        g(ac acVar, iv ivVar) {
            super(acVar);
            this.f5860a = ivVar;
        }

        public iv c() {
            return this.f5860a;
        }
    }

    ab(ac acVar, iv ivVar) {
        this.f5851a = acVar;
        this.f5852b = ivVar;
        this.c.add(new b(this.f5851a, this.f5852b));
        this.c.add(new d(this.f5851a, this.f5852b));
        List<f> list = this.c;
        ac acVar2 = this.f5851a;
        list.add(new c(acVar2, acVar2.B()));
        this.c.add(new a(this.f5851a));
        this.c.add(new e(this.f5851a));
    }

    /* access modifiers changed from: package-private */
    public void a() {
        if (!iv.f6170a.values().contains(this.f5851a.b().a())) {
            for (f f2 : this.c) {
                f2.f();
            }
        }
    }
}
