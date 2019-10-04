package c.c.a.e.d.m;

import c.c.a.e.j.b;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PaymentEntities.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5275a = new a(null);
    @c.e.d.a.c("packageName")
    public final String packageName;
    @c.e.d.a.c("productId")
    public final String productId;
    @c.e.d.a.c("purchaseTime")
    public final long purchaseTime;
    @c.e.d.a.c("purchaseToken")
    public final String purchaseToken;
    @c.e.d.a.c("state")
    public final int state;

    /* compiled from: PaymentEntities.kt */
    public static final class a {
        public a() {
        }

        public final c a(String str) {
            j.b(str, "paymentData");
            return (c) b.f5549b.a().a(str, new b().b());
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public final String a() {
        return this.packageName;
    }

    public final String b() {
        return this.productId;
    }

    public final long c() {
        return this.purchaseTime;
    }

    public final String d() {
        return this.purchaseToken;
    }

    public final int e() {
        return this.state;
    }
}
