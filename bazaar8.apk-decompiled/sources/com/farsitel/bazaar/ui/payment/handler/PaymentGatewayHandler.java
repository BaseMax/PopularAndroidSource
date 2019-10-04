package com.farsitel.bazaar.ui.payment.handler;

import c.c.a.c.a.b;
import c.c.a.e.d.m.b.b.f;
import c.c.a.e.d.m.d;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.data.feature.payment.InitiatePaymentData;
import com.farsitel.bazaar.data.feature.payment.PurchasedItemData;
import com.farsitel.bazaar.ui.payment.PaymentType;
import com.farsitel.bazaar.ui.payment.payment.options.PaymentGatewayType;
import h.c.e;
import h.f.b.j;
import h.f.b.k;
import h.g.c;
import h.i.i;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.H;
import i.a.va;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* compiled from: PaymentGatewayHandler.kt */
public final class PaymentGatewayHandler implements H {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f12344a;

    /* renamed from: b  reason: collision with root package name */
    public final C1125ra f12345b = va.a(null, 1, null);

    /* renamed from: c  reason: collision with root package name */
    public PaymentGatewayType f12346c;

    /* renamed from: d  reason: collision with root package name */
    public PaymentType f12347d;

    /* renamed from: e  reason: collision with root package name */
    public String f12348e = "";

    /* renamed from: f  reason: collision with root package name */
    public String f12349f;

    /* renamed from: g  reason: collision with root package name */
    public String f12350g;

    /* renamed from: h  reason: collision with root package name */
    public final c f12351h = h.g.a.f14577a.a();

    /* renamed from: i  reason: collision with root package name */
    public String f12352i = "";

    /* renamed from: j  reason: collision with root package name */
    public String f12353j = "";

    /* renamed from: k  reason: collision with root package name */
    public a f12354k;

    /* renamed from: l  reason: collision with root package name */
    public PaymentState f12355l = PaymentState.NONE;
    public final d m;

    /* compiled from: PaymentGatewayHandler.kt */
    public enum PaymentState {
        NONE,
        INITIATED,
        COLLECTED
    }

    /* compiled from: PaymentGatewayHandler.kt */
    public interface a {
        void a();

        void a(f fVar);

        void a(ErrorModel errorModel);

        void a(String str, String str2, String str3);
    }

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(k.a(PaymentGatewayHandler.class), "amount", "getAmount()J");
        k.a((MutablePropertyReference1) mutablePropertyReference1Impl);
        f12344a = new i[]{mutablePropertyReference1Impl};
    }

    public PaymentGatewayHandler(d dVar) {
        j.b(dVar, "paymentRepository");
        this.m = dVar;
    }

    public final void a(long j2) {
        this.f12351h.a(this, f12344a[0], Long.valueOf(j2));
    }

    public final long c() {
        return ((Number) this.f12351h.a(this, f12344a[0])).longValue();
    }

    public final void h() {
        PaymentGatewayType paymentGatewayType = this.f12346c;
        if (paymentGatewayType != null && c.c.a.n.s.d.a.f6867b[paymentGatewayType.ordinal()] == 1) {
            e();
        } else {
            d();
        }
    }

    public final void b() {
        va.a(this.f12345b, null, 1, null);
        C1125ra.a.a(this.f12345b, null, 1, null);
    }

    public final void d() {
        C1125ra unused = C1103g.b(this, null, null, new PaymentGatewayHandler$initiatePayment$1(this, null), 3, null);
    }

    public final void e() {
        C1125ra unused = C1103g.b(this, null, null, new PaymentGatewayHandler$purchaseProduct$1(this, null), 3, null);
    }

    public final void f() {
        this.f12348e = "";
        this.f12349f = "";
        this.f12350g = "";
        a(0);
        this.f12346c = null;
        this.f12352i = "";
        this.f12353j = "";
        this.f12355l = PaymentState.NONE;
    }

    public final void g() {
        if (c.c.a.n.s.d.a.f6868c[this.f12355l.ordinal()] != 1) {
            c.c.a.c.c.a.f4699b.a((Throwable) new IllegalStateException("Trying to resume gateway payment when its not initiated"));
            a((ErrorModel) ErrorModel.UnExpected.INSTANCE);
            return;
        }
        a(this.f12353j);
    }

    public e a() {
        return b.f4693c.b().plus(this.f12345b);
    }

    public final void a(String str, String str2, String str3, long j2, PaymentType paymentType, PaymentGatewayType paymentGatewayType, String str4, a aVar) {
        j.b(str, "dealer");
        j.b(paymentType, "paymentType");
        j.b(paymentGatewayType, "paymentGatewayType");
        j.b(str4, "gatewayCode");
        j.b(aVar, "paymentStepsCallback");
        f();
        this.f12348e = str;
        this.f12349f = str2;
        this.f12350g = str3;
        a(j2);
        this.f12347d = paymentType;
        this.f12346c = paymentGatewayType;
        this.f12352i = str4;
        this.f12354k = aVar;
        a(paymentType);
    }

    public final void a(PaymentType paymentType) {
        int i2 = c.c.a.n.s.d.a.f6866a[paymentType.ordinal()];
        if (i2 == 1) {
            d();
        } else if (i2 == 2 || i2 == 3) {
            h();
        }
    }

    public final void a(InitiatePaymentData initiatePaymentData) {
        this.f12355l = PaymentState.INITIATED;
        this.f12353j = initiatePaymentData.a();
        if (initiatePaymentData.c() != null) {
            a aVar = this.f12354k;
            if (aVar != null) {
                f.b c2 = initiatePaymentData.c();
                if (c2 != null) {
                    aVar.a((f) c2);
                } else {
                    j.a();
                    throw null;
                }
            } else {
                j.c("callback");
                throw null;
            }
        } else if (initiatePaymentData.b() != null) {
            g();
        } else {
            c.c.a.c.c.a.f4699b.a((Throwable) new IllegalStateException("Unexpected gateway received"));
            a((ErrorModel) ErrorModel.UnExpected.INSTANCE);
        }
    }

    public final void a(String str) {
        C1125ra unused = C1103g.b(this, null, null, new PaymentGatewayHandler$collectPayment$1(this, str, null), 3, null);
    }

    public final void a(None none) {
        this.f12355l = PaymentState.COLLECTED;
        PaymentType paymentType = this.f12347d;
        if (paymentType != null) {
            int i2 = c.c.a.n.s.d.a.f6869d[paymentType.ordinal()];
            if (i2 == 1) {
                a aVar = this.f12354k;
                if (aVar != null) {
                    aVar.a();
                } else {
                    j.c("callback");
                    throw null;
                }
            } else if (i2 == 2 || i2 == 3) {
                e();
            }
        } else {
            j.c("paymentType");
            throw null;
        }
    }

    public final void a(PurchasedItemData purchasedItemData) {
        a aVar = this.f12354k;
        if (aVar != null) {
            String a2 = purchasedItemData.a();
            String b2 = purchasedItemData.b();
            String str = this.f12350g;
            if (str == null) {
                str = "";
            }
            aVar.a(a2, b2, str);
            return;
        }
        j.c("callback");
        throw null;
    }

    public final void a(ErrorModel errorModel) {
        f();
        a aVar = this.f12354k;
        if (aVar != null) {
            aVar.a(errorModel);
        } else {
            j.c("callback");
            throw null;
        }
    }
}
