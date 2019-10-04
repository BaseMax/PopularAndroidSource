package c.c.a.e.d.m.b;

import c.c.a.e.d.m.a;
import c.c.a.e.d.m.b.a.c;
import c.c.a.e.d.m.b.a.d;
import c.c.a.e.d.m.b.a.e;
import c.c.a.e.d.m.b.a.f;
import c.c.a.e.d.m.b.a.g;
import c.c.a.e.d.m.b.a.h;
import c.c.a.e.d.m.b.a.k;
import c.c.a.e.d.m.b.a.l;
import c.c.a.e.d.m.b.b.i;
import com.farsitel.bazaar.common.model.transaction.TransactionItem;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.feature.payment.CreditOption;
import com.farsitel.bazaar.data.feature.payment.InitiatePaymentData;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;
import com.farsitel.bazaar.data.feature.payment.PaymentInfo;
import com.farsitel.bazaar.data.feature.payment.PurchasedItemData;
import h.f.b.j;
import java.util.List;

/* compiled from: PaymentRemoteDataSource.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final d f5272a;

    public b(d dVar) {
        j.b(dVar, "paymentService");
        this.f5272a = dVar;
    }

    public final Object a(long j2, h.c.b<? super Either<? extends List<PaymentGateway>>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new c(j2)), PaymentRemoteDataSource$getBuyCreditMethods$2.f12269a, bVar);
    }

    public final Object b(h.c.b<? super Either<? extends List<CreditOption>>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new e()), PaymentRemoteDataSource$getCreditOptions$2.f12272a, bVar);
    }

    public final Object a(String str, long j2, h.c.b<? super Either<InitiatePaymentData>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new c.c.a.e.d.m.b.a.j(str, j2)), PaymentRemoteDataSource$initiatePayment$2.f12276a, bVar);
    }

    public final Object b(String str, String str2, h.c.b<? super Either<PaymentInfo>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new d(str, str2)), PaymentRemoteDataSource$getBuyProductMethods$2.f12270a, bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r5, h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.entity.None>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.data.feature.payment.remote.PaymentRemoteDataSource$collectPayment$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.data.feature.payment.remote.PaymentRemoteDataSource$collectPayment$1 r0 = (com.farsitel.bazaar.data.feature.payment.remote.PaymentRemoteDataSource$collectPayment$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.remote.PaymentRemoteDataSource$collectPayment$1 r0 = new com.farsitel.bazaar.data.feature.payment.remote.PaymentRemoteDataSource$collectPayment$1
            r0.<init>(r4, r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0039
            if (r2 != r3) goto L_0x0031
            java.lang.Object r5 = r0.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r0.L$0
            c.c.a.e.d.m.b.b r5 = (c.c.a.e.d.m.b.b) r5
            h.e.a((java.lang.Object) r6)
            goto L_0x0056
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r6)
            c.c.a.e.d.m.b.d r6 = r4.f5272a
            c.c.a.e.d.m.b.a.a r2 = new c.c.a.e.d.m.b.a.a
            r2.<init>(r5)
            l.b r6 = r6.a((c.c.a.e.d.m.b.a.a) r2)
            com.farsitel.bazaar.data.feature.payment.remote.PaymentRemoteDataSource$collectPayment$result$1 r2 = com.farsitel.bazaar.data.feature.payment.remote.PaymentRemoteDataSource$collectPayment$result$1.f12267a
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = c.c.a.e.c.b.a(r6, r2, r0)
            if (r6 != r1) goto L_0x0056
            return r1
        L_0x0056:
            com.farsitel.bazaar.data.entity.Either r6 = (com.farsitel.bazaar.data.entity.Either) r6
            boolean r5 = r6 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r5 == 0) goto L_0x0088
            com.farsitel.bazaar.data.feature.payment.remote.responsedto.PaymentStatus[] r5 = com.farsitel.bazaar.data.feature.payment.remote.responsedto.PaymentStatus.values()
            com.farsitel.bazaar.data.entity.Either$Success r6 = (com.farsitel.bazaar.data.entity.Either.Success) r6
            java.lang.Object r6 = r6.getValue()
            c.c.a.e.d.m.b.b.d r6 = (c.c.a.e.d.m.b.b.d) r6
            int r6 = r6.a()
            r5 = r5[r6]
            int[] r6 = c.c.a.e.d.m.b.a.f5271a
            int r5 = r5.ordinal()
            r5 = r6[r5]
            if (r5 == r3) goto L_0x0080
            com.farsitel.bazaar.data.entity.Either$Failure r6 = new com.farsitel.bazaar.data.entity.Either$Failure
            com.farsitel.bazaar.data.entity.GatewayPaymentFailed r5 = com.farsitel.bazaar.data.entity.GatewayPaymentFailed.INSTANCE
            r6.<init>(r5)
            goto L_0x008c
        L_0x0080:
            com.farsitel.bazaar.data.entity.Either$Success r6 = new com.farsitel.bazaar.data.entity.Either$Success
            com.farsitel.bazaar.data.entity.None r5 = com.farsitel.bazaar.data.entity.None.INSTANCE
            r6.<init>(r5)
            goto L_0x008c
        L_0x0088:
            boolean r5 = r6 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r5 == 0) goto L_0x008d
        L_0x008c:
            return r6
        L_0x008d:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.b.b.a(java.lang.String, h.c.b):java.lang.Object");
    }

    public final Object b(long j2, h.c.b<? super Either<i>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new g(j2)), PaymentRemoteDataSource$getPurchases$2.f12273a, bVar);
    }

    public final Object b(String str, h.c.b<? super Either<a>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new l(str)), PaymentRemoteDataSource$redeemGiftCard$2.f12278a, bVar);
    }

    public final Object a(String str, String str2, String str3, String str4, h.c.b<? super Either<PurchasedItemData>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new k(str, str2, str3, str4)), PaymentRemoteDataSource$purchaseProduct$2.f12277a, bVar);
    }

    public final Object a(h.c.b<? super Either<a>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new f()), PaymentRemoteDataSource$getCredit$2.f12271a, bVar);
    }

    public final Object a(String str, String str2, h.c.b<? super Either<c.c.a.e.d.m.b.b.e>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new c.c.a.e.d.m.b.a.b(str, str2)), PaymentRemoteDataSource$consumePurchase$2.f12268a, bVar);
    }

    public final Object a(String str, int i2, String str2, String str3, List<String> list, h.c.b<? super Either<? extends List<String>>> bVar) {
        d dVar = this.f5272a;
        h hVar = new h(str, i2, str2, str3, list);
        return c.c.a.e.c.b.a(dVar.a(hVar), PaymentRemoteDataSource$getSkuDetails$2.f12274a, bVar);
    }

    public final Object a(int i2, int i3, h.c.b<? super Either<? extends List<TransactionItem>>> bVar) {
        return c.c.a.e.c.b.a(this.f5272a.a(new c.c.a.e.d.m.b.a.i(i2, i3)), PaymentRemoteDataSource$getTransactions$2.f12275a, bVar);
    }
}
