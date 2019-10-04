package c.c.a.e.d.m;

import androidx.lifecycle.LiveData;
import c.c.a.e.d.m.a.c;
import c.c.a.e.d.m.a.e;
import c.c.a.e.d.m.b.b;
import com.farsitel.bazaar.common.model.transaction.TransactionItem;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.data.feature.payment.CreditOption;
import com.farsitel.bazaar.data.feature.payment.InitiatePaymentData;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;
import h.a.k;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* compiled from: PaymentRepository.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final b f5276a;

    /* renamed from: b  reason: collision with root package name */
    public final c f5277b;

    /* renamed from: c  reason: collision with root package name */
    public final c.c.a.e.d.a.a f5278c;

    /* compiled from: PaymentRepository.kt */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final ArrayList<String> f5279a;

        /* renamed from: b  reason: collision with root package name */
        public final ArrayList<String> f5280b;

        /* renamed from: c  reason: collision with root package name */
        public final ArrayList<String> f5281c;

        public a(ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3) {
            j.b(arrayList, "itemList");
            j.b(arrayList2, "dataList");
            j.b(arrayList3, "signatureList");
            this.f5279a = arrayList;
            this.f5280b = arrayList2;
            this.f5281c = arrayList3;
        }

        public final ArrayList<String> a() {
            return this.f5280b;
        }

        public final ArrayList<String> b() {
            return this.f5279a;
        }

        public final ArrayList<String> c() {
            return this.f5281c;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f5281c, (java.lang.Object) r3.f5281c) != false) goto L_0x0029;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0029
                boolean r0 = r3 instanceof c.c.a.e.d.m.d.a
                if (r0 == 0) goto L_0x0027
                c.c.a.e.d.m.d$a r3 = (c.c.a.e.d.m.d.a) r3
                java.util.ArrayList<java.lang.String> r0 = r2.f5279a
                java.util.ArrayList<java.lang.String> r1 = r3.f5279a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.util.ArrayList<java.lang.String> r0 = r2.f5280b
                java.util.ArrayList<java.lang.String> r1 = r3.f5280b
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.util.ArrayList<java.lang.String> r0 = r2.f5281c
                java.util.ArrayList<java.lang.String> r3 = r3.f5281c
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0027
                goto L_0x0029
            L_0x0027:
                r3 = 0
                return r3
            L_0x0029:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.d.a.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            ArrayList<String> arrayList = this.f5279a;
            int i2 = 0;
            int hashCode = (arrayList != null ? arrayList.hashCode() : 0) * 31;
            ArrayList<String> arrayList2 = this.f5280b;
            int hashCode2 = (hashCode + (arrayList2 != null ? arrayList2.hashCode() : 0)) * 31;
            ArrayList<String> arrayList3 = this.f5281c;
            if (arrayList3 != null) {
                i2 = arrayList3.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "PurchasesLists(itemList=" + this.f5279a + ", dataList=" + this.f5280b + ", signatureList=" + this.f5281c + ")";
        }
    }

    public d(b bVar, c cVar, c.c.a.e.d.a.a aVar) {
        j.b(bVar, "paymentRemoteDataSource");
        j.b(cVar, "paymentLocalDataSource");
        j.b(aVar, "accountRepository");
        this.f5276a = bVar;
        this.f5277b = cVar;
        this.f5278c = aVar;
    }

    public final LiveData<Set<e>> a() {
        return this.f5277b.e();
    }

    public final Object b(h.c.b<? super Either<? extends List<CreditOption>>> bVar) {
        return this.f5276a.b(bVar);
    }

    public final Object c(h.c.b<? super h> bVar) {
        return this.f5277b.b(bVar);
    }

    public final Object d(h.c.b<? super h> bVar) {
        return this.f5277b.a(bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0078 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object e(h.c.b<? super java.lang.Boolean> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.farsitel.bazaar.data.feature.payment.PaymentRepository$syncPurchases$1
            if (r0 == 0) goto L_0x0013
            r0 = r8
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$syncPurchases$1 r0 = (com.farsitel.bazaar.data.feature.payment.PaymentRepository$syncPurchases$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$syncPurchases$1 r0 = new com.farsitel.bazaar.data.feature.payment.PaymentRepository$syncPurchases$1
            r0.<init>(r7, r8)
        L_0x0018:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x004b
            if (r2 == r4) goto L_0x0041
            if (r2 != r3) goto L_0x0039
            java.lang.Object r1 = r0.L$2
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            java.lang.Object r1 = r0.L$1
            long r2 = r0.J$0
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.m.d r0 = (c.c.a.e.d.m.d) r0
            h.e.a((java.lang.Object) r8)
            r8 = r1
            goto L_0x0079
        L_0x0039:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L_0x0041:
            long r4 = r0.J$0
            java.lang.Object r2 = r0.L$0
            c.c.a.e.d.m.d r2 = (c.c.a.e.d.m.d) r2
            h.e.a((java.lang.Object) r8)
            goto L_0x0065
        L_0x004b:
            h.e.a((java.lang.Object) r8)
            c.c.a.e.d.m.a.c r8 = r7.f5277b
            long r5 = r8.f()
            c.c.a.e.d.m.b.b r8 = r7.f5276a
            r0.L$0 = r7
            r0.J$0 = r5
            r0.label = r4
            java.lang.Object r8 = r8.b((long) r5, (h.c.b<? super com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.b.b.i>>) r0)
            if (r8 != r1) goto L_0x0063
            return r1
        L_0x0063:
            r2 = r7
            r4 = r5
        L_0x0065:
            r6 = r8
            com.farsitel.bazaar.data.entity.Either r6 = (com.farsitel.bazaar.data.entity.Either) r6
            r0.L$0 = r2
            r0.J$0 = r4
            r0.L$1 = r8
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r0 = r2.a((com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.b.b.i>) r6, (h.c.b<? super h.h>) r0)
            if (r0 != r1) goto L_0x0079
            return r1
        L_0x0079:
            com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
            boolean r8 = r8 instanceof com.farsitel.bazaar.data.entity.Either.Success
            java.lang.Boolean r8 = h.c.b.a.a.a((boolean) r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.d.e(h.c.b):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v4, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v2, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0055  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0083  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r7, java.lang.String r8, h.c.b<? super java.lang.Boolean> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.farsitel.bazaar.data.feature.payment.PaymentRepository$consumePurchase$1
            if (r0 == 0) goto L_0x0013
            r0 = r9
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$consumePurchase$1 r0 = (com.farsitel.bazaar.data.feature.payment.PaymentRepository$consumePurchase$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$consumePurchase$1 r0 = new com.farsitel.bazaar.data.feature.payment.PaymentRepository$consumePurchase$1
            r0.<init>(r6, r9)
        L_0x0018:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x0055
            if (r2 == r4) goto L_0x0044
            if (r2 != r3) goto L_0x003c
            java.lang.Object r7 = r0.L$3
            com.farsitel.bazaar.data.entity.Either r7 = (com.farsitel.bazaar.data.entity.Either) r7
            java.lang.Object r7 = r0.L$2
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r7 = r0.L$1
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r7 = r0.L$0
            c.c.a.e.d.m.d r7 = (c.c.a.e.d.m.d) r7
            h.e.a((java.lang.Object) r9)
            goto L_0x0084
        L_0x003c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L_0x0044:
            java.lang.Object r7 = r0.L$2
            r8 = r7
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r7 = r0.L$1
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r2 = r0.L$0
            c.c.a.e.d.m.d r2 = (c.c.a.e.d.m.d) r2
            h.e.a((java.lang.Object) r9)
            goto L_0x006a
        L_0x0055:
            h.e.a((java.lang.Object) r9)
            c.c.a.e.d.m.b.b r9 = r6.f5276a
            r0.L$0 = r6
            r0.L$1 = r7
            r0.L$2 = r8
            r0.label = r4
            java.lang.Object r9 = r9.a((java.lang.String) r7, (java.lang.String) r8, (h.c.b<? super com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.b.b.e>>) r0)
            if (r9 != r1) goto L_0x0069
            return r1
        L_0x0069:
            r2 = r6
        L_0x006a:
            com.farsitel.bazaar.data.entity.Either r9 = (com.farsitel.bazaar.data.entity.Either) r9
            boolean r5 = r9 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r5 == 0) goto L_0x0083
            c.c.a.e.d.m.a.c r5 = r2.f5277b
            r0.L$0 = r2
            r0.L$1 = r7
            r0.L$2 = r8
            r0.L$3 = r9
            r0.label = r3
            java.lang.Object r7 = r5.a(r7, r8, r0)
            if (r7 != r1) goto L_0x0084
            return r1
        L_0x0083:
            r4 = 0
        L_0x0084:
            java.lang.Boolean r7 = h.c.b.a.a.a((boolean) r4)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.d.a(java.lang.String, java.lang.String, h.c.b):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v4, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v4, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x007b  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(java.lang.String r9, java.lang.String r10, h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.feature.payment.PaymentInfo>> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof com.farsitel.bazaar.data.feature.payment.PaymentRepository$getBuyProductMethods$1
            if (r0 == 0) goto L_0x0013
            r0 = r11
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$getBuyProductMethods$1 r0 = (com.farsitel.bazaar.data.feature.payment.PaymentRepository$getBuyProductMethods$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$getBuyProductMethods$1 r0 = new com.farsitel.bazaar.data.feature.payment.PaymentRepository$getBuyProductMethods$1
            r0.<init>(r8, r11)
        L_0x0018:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x005b
            if (r2 == r4) goto L_0x004a
            if (r2 != r3) goto L_0x0042
            java.lang.Object r9 = r0.L$5
            com.farsitel.bazaar.data.feature.payment.PaymentInfo r9 = (com.farsitel.bazaar.data.feature.payment.PaymentInfo) r9
            java.lang.Object r9 = r0.L$4
            com.farsitel.bazaar.data.entity.Either r9 = (com.farsitel.bazaar.data.entity.Either) r9
            java.lang.Object r9 = r0.L$3
            java.lang.Object r10 = r0.L$2
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r10 = r0.L$1
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r10 = r0.L$0
            c.c.a.e.d.m.d r10 = (c.c.a.e.d.m.d) r10
            h.e.a((java.lang.Object) r11)
            goto L_0x00a9
        L_0x0042:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L_0x004a:
            java.lang.Object r9 = r0.L$2
            r10 = r9
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r9 = r0.L$1
            java.lang.String r9 = (java.lang.String) r9
            java.lang.Object r2 = r0.L$0
            c.c.a.e.d.m.d r2 = (c.c.a.e.d.m.d) r2
            h.e.a((java.lang.Object) r11)
            goto L_0x0070
        L_0x005b:
            h.e.a((java.lang.Object) r11)
            c.c.a.e.d.m.b.b r11 = r8.f5276a
            r0.L$0 = r8
            r0.L$1 = r9
            r0.L$2 = r10
            r0.label = r4
            java.lang.Object r11 = r11.b(r9, r10, r0)
            if (r11 != r1) goto L_0x006f
            return r1
        L_0x006f:
            r2 = r8
        L_0x0070:
            r7 = r10
            r10 = r9
            r9 = r11
            r11 = r7
            r4 = r9
            com.farsitel.bazaar.data.entity.Either r4 = (com.farsitel.bazaar.data.entity.Either) r4
            boolean r5 = r4 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r5 == 0) goto L_0x00a9
            r5 = r4
            com.farsitel.bazaar.data.entity.Either$Success r5 = (com.farsitel.bazaar.data.entity.Either.Success) r5
            java.lang.Object r5 = r5.getValue()
            com.farsitel.bazaar.data.feature.payment.PaymentInfo r5 = (com.farsitel.bazaar.data.feature.payment.PaymentInfo) r5
            boolean r6 = r5.j()
            if (r6 == 0) goto L_0x00a9
            c.c.a.e.d.a.a r6 = r2.f5278c
            java.lang.String r6 = r6.k()
            c.c.a.e.d.m.f r6 = r5.a(r6)
            r0.L$0 = r2
            r0.L$1 = r10
            r0.L$2 = r11
            r0.L$3 = r9
            r0.L$4 = r4
            r0.L$5 = r5
            r0.label = r3
            java.lang.Object r10 = r2.a((c.c.a.e.d.m.f) r6, (h.c.b<? super h.h>) r0)
            if (r10 != r1) goto L_0x00a9
            return r1
        L_0x00a9:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.d.b(java.lang.String, java.lang.String, h.c.b):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v7, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v4, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x007b  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00b2 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00b3  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00c0 A[LOOP:0: B:26:0x00ba->B:28:0x00c0, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object c(java.lang.String r9, java.lang.String r10, h.c.b<? super c.c.a.e.d.m.d.a> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof com.farsitel.bazaar.data.feature.payment.PaymentRepository$getPurchasesLists$1
            if (r0 == 0) goto L_0x0013
            r0 = r11
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$getPurchasesLists$1 r0 = (com.farsitel.bazaar.data.feature.payment.PaymentRepository$getPurchasesLists$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$getPurchasesLists$1 r0 = new com.farsitel.bazaar.data.feature.payment.PaymentRepository$getPurchasesLists$1
            r0.<init>(r8, r11)
        L_0x0018:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x0060
            if (r2 == r4) goto L_0x004f
            if (r2 != r3) goto L_0x0047
            java.lang.Object r9 = r0.L$5
            java.util.ArrayList r9 = (java.util.ArrayList) r9
            java.lang.Object r10 = r0.L$4
            java.util.ArrayList r10 = (java.util.ArrayList) r10
            java.lang.Object r1 = r0.L$3
            java.util.ArrayList r1 = (java.util.ArrayList) r1
            java.lang.Object r2 = r0.L$2
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r2 = r0.L$1
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.m.d r0 = (c.c.a.e.d.m.d) r0
            h.e.a((java.lang.Object) r11)
            r5 = r9
            r9 = r11
            r11 = r1
            goto L_0x00b4
        L_0x0047:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L_0x004f:
            java.lang.Object r9 = r0.L$2
            r10 = r9
            java.lang.String r10 = (java.lang.String) r10
            java.lang.Object r9 = r0.L$1
            java.lang.String r9 = (java.lang.String) r9
            java.lang.Object r2 = r0.L$0
            c.c.a.e.d.m.d r2 = (c.c.a.e.d.m.d) r2
            h.e.a((java.lang.Object) r11)
            goto L_0x0073
        L_0x0060:
            h.e.a((java.lang.Object) r11)
            r0.L$0 = r8
            r0.L$1 = r9
            r0.L$2 = r10
            r0.label = r4
            java.lang.Object r11 = r8.e(r0)
            if (r11 != r1) goto L_0x0072
            return r1
        L_0x0072:
            r2 = r8
        L_0x0073:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 != 0) goto L_0x0087
            c.c.a.c.c.a r11 = c.c.a.c.c.a.f4699b
            java.lang.Throwable r4 = new java.lang.Throwable
            java.lang.String r5 = "sync purchases failed while getting purchase list for 3rd party apps"
            r4.<init>(r5)
            r11.b(r4)
        L_0x0087:
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            c.c.a.e.d.m.a.c r6 = r2.f5277b
            c.c.a.e.d.a.a r7 = r2.f5278c
            java.lang.String r7 = r7.k()
            r0.L$0 = r2
            r0.L$1 = r9
            r0.L$2 = r10
            r0.L$3 = r11
            r0.L$4 = r4
            r0.L$5 = r5
            r0.label = r3
            java.lang.Object r9 = r6.a(r7, r9, r10, r0)
            if (r9 != r1) goto L_0x00b3
            return r1
        L_0x00b3:
            r10 = r4
        L_0x00b4:
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            java.util.Iterator r9 = r9.iterator()
        L_0x00ba:
            boolean r0 = r9.hasNext()
            if (r0 == 0) goto L_0x00dc
            java.lang.Object r0 = r9.next()
            c.c.a.e.d.m.a.a r0 = (c.c.a.e.d.m.a.a) r0
            java.lang.String r1 = r0.c()
            r11.add(r1)
            java.lang.String r1 = r0.a()
            r10.add(r1)
            java.lang.String r0 = r0.g()
            r5.add(r0)
            goto L_0x00ba
        L_0x00dc:
            c.c.a.e.d.m.d$a r9 = new c.c.a.e.d.m.d$a
            r9.<init>(r11, r10, r5)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.d.c(java.lang.String, java.lang.String, h.c.b):java.lang.Object");
    }

    public final Object a(long j2, h.c.b<? super Either<? extends List<PaymentGateway>>> bVar) {
        return this.f5276a.a(j2, bVar);
    }

    public final Object a(String str, long j2, h.c.b<? super Either<InitiatePaymentData>> bVar) {
        return this.f5276a.a(str, j2, bVar);
    }

    public final long b() {
        return this.f5277b.d();
    }

    public final Object a(String str, h.c.b<? super Either<None>> bVar) {
        return this.f5276a.a(str, bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(java.lang.String r5, h.c.b<? super com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.a>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.data.feature.payment.PaymentRepository$redeemGiftCard$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$redeemGiftCard$1 r0 = (com.farsitel.bazaar.data.feature.payment.PaymentRepository$redeemGiftCard$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$redeemGiftCard$1 r0 = new com.farsitel.bazaar.data.feature.payment.PaymentRepository$redeemGiftCard$1
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
            c.c.a.e.d.m.d r5 = (c.c.a.e.d.m.d) r5
            h.e.a((java.lang.Object) r6)
            goto L_0x004c
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r6)
            c.c.a.e.d.m.b.b r6 = r4.f5276a
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r6.b((java.lang.String) r5, (h.c.b<? super com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.a>>) r0)
            if (r6 != r1) goto L_0x004b
            return r1
        L_0x004b:
            r5 = r4
        L_0x004c:
            r0 = r6
            com.farsitel.bazaar.data.entity.Either r0 = (com.farsitel.bazaar.data.entity.Either) r0
            r5.a((com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.a>) r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.d.b(java.lang.String, h.c.b):java.lang.Object");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v4, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v3, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v5, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r13v3, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v6, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v4, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String r14, h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.feature.payment.PurchasedItemData>> r15) {
        /*
            r10 = this;
            boolean r0 = r15 instanceof com.farsitel.bazaar.data.feature.payment.PaymentRepository$purchaseProduct$1
            if (r0 == 0) goto L_0x0013
            r0 = r15
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$purchaseProduct$1 r0 = (com.farsitel.bazaar.data.feature.payment.PaymentRepository$purchaseProduct$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$purchaseProduct$1 r0 = new com.farsitel.bazaar.data.feature.payment.PaymentRepository$purchaseProduct$1
            r0.<init>(r10, r15)
        L_0x0018:
            java.lang.Object r15 = r0.result
            java.lang.Object r7 = h.c.a.b.a()
            int r1 = r0.label
            r8 = 2
            r2 = 1
            if (r1 == 0) goto L_0x006e
            if (r1 == r2) goto L_0x0053
            if (r1 != r8) goto L_0x004b
            java.lang.Object r11 = r0.L$7
            com.farsitel.bazaar.data.feature.payment.PurchasedItemData r11 = (com.farsitel.bazaar.data.feature.payment.PurchasedItemData) r11
            java.lang.Object r11 = r0.L$6
            com.farsitel.bazaar.data.entity.Either r11 = (com.farsitel.bazaar.data.entity.Either) r11
            java.lang.Object r11 = r0.L$5
            java.lang.Object r12 = r0.L$4
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r12 = r0.L$3
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r12 = r0.L$2
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r12 = r0.L$1
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r12 = r0.L$0
            c.c.a.e.d.m.d r12 = (c.c.a.e.d.m.d) r12
            h.e.a((java.lang.Object) r15)
            goto L_0x00c5
        L_0x004b:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L_0x0053:
            java.lang.Object r11 = r0.L$4
            r14 = r11
            java.lang.String r14 = (java.lang.String) r14
            java.lang.Object r11 = r0.L$3
            r13 = r11
            java.lang.String r13 = (java.lang.String) r13
            java.lang.Object r11 = r0.L$2
            r12 = r11
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r11 = r0.L$1
            java.lang.String r11 = (java.lang.String) r11
            java.lang.Object r1 = r0.L$0
            c.c.a.e.d.m.d r1 = (c.c.a.e.d.m.d) r1
            h.e.a((java.lang.Object) r15)
            goto L_0x008c
        L_0x006e:
            h.e.a((java.lang.Object) r15)
            c.c.a.e.d.m.b.b r1 = r10.f5276a
            r0.L$0 = r10
            r0.L$1 = r11
            r0.L$2 = r12
            r0.L$3 = r13
            r0.L$4 = r14
            r0.label = r2
            r2 = r11
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r0
            java.lang.Object r15 = r1.a(r2, r3, r4, r5, r6)
            if (r15 != r7) goto L_0x008b
            return r7
        L_0x008b:
            r1 = r10
        L_0x008c:
            r9 = r12
            r12 = r11
            r11 = r15
            r15 = r14
            r14 = r13
            r13 = r9
            r2 = r11
            com.farsitel.bazaar.data.entity.Either r2 = (com.farsitel.bazaar.data.entity.Either) r2
            boolean r3 = r2 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r3 == 0) goto L_0x00c5
            r3 = r2
            com.farsitel.bazaar.data.entity.Either$Success r3 = (com.farsitel.bazaar.data.entity.Either.Success) r3
            java.lang.Object r3 = r3.getValue()
            com.farsitel.bazaar.data.feature.payment.PurchasedItemData r3 = (com.farsitel.bazaar.data.feature.payment.PurchasedItemData) r3
            c.c.a.e.d.a.a r4 = r1.f5278c
            java.lang.String r4 = r4.k()
            c.c.a.e.d.m.f r4 = r3.a(r4)
            r0.L$0 = r1
            r0.L$1 = r12
            r0.L$2 = r13
            r0.L$3 = r14
            r0.L$4 = r15
            r0.L$5 = r11
            r0.L$6 = r2
            r0.L$7 = r3
            r0.label = r8
            java.lang.Object r12 = r1.a((c.c.a.e.d.m.f) r4, (h.c.b<? super h.h>) r0)
            if (r12 != r7) goto L_0x00c5
            return r7
        L_0x00c5:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.d.a(java.lang.String, java.lang.String, java.lang.String, java.lang.String, h.c.b):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0041  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object a(com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.b.b.i> r9, h.c.b<? super h.h> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.farsitel.bazaar.data.feature.payment.PaymentRepository$updateLocalPurchases$1
            if (r0 == 0) goto L_0x0013
            r0 = r10
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$updateLocalPurchases$1 r0 = (com.farsitel.bazaar.data.feature.payment.PaymentRepository$updateLocalPurchases$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$updateLocalPurchases$1 r0 = new com.farsitel.bazaar.data.feature.payment.PaymentRepository$updateLocalPurchases$1
            r0.<init>(r8, r10)
        L_0x0018:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0041
            if (r2 != r3) goto L_0x0039
            java.lang.Object r9 = r0.L$3
            java.util.List r9 = (java.util.List) r9
            java.lang.Object r9 = r0.L$2
            java.lang.String r9 = (java.lang.String) r9
            java.lang.Object r9 = r0.L$1
            com.farsitel.bazaar.data.entity.Either r9 = (com.farsitel.bazaar.data.entity.Either) r9
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.m.d r0 = (c.c.a.e.d.m.d) r0
            h.e.a((java.lang.Object) r10)
            goto L_0x0094
        L_0x0039:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L_0x0041:
            h.e.a((java.lang.Object) r10)
            boolean r10 = r9 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r10 == 0) goto L_0x00a5
            c.c.a.e.d.a.a r10 = r8.f5278c
            java.lang.String r10 = r10.k()
            r2 = r9
            com.farsitel.bazaar.data.entity.Either$Success r2 = (com.farsitel.bazaar.data.entity.Either.Success) r2
            java.lang.Object r2 = r2.getValue()
            c.c.a.e.d.m.b.b.i r2 = (c.c.a.e.d.m.b.b.i) r2
            java.util.List r2 = r2.b()
            if (r2 == 0) goto L_0x0093
            c.c.a.e.d.m.a.c r4 = r8.f5277b
            java.util.ArrayList r5 = new java.util.ArrayList
            r6 = 10
            int r6 = h.a.m.a(r2, r6)
            r5.<init>(r6)
            java.util.Iterator r6 = r2.iterator()
        L_0x006e:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L_0x0082
            java.lang.Object r7 = r6.next()
            c.c.a.e.d.m.b.b.o r7 = (c.c.a.e.d.m.b.b.o) r7
            c.c.a.e.d.m.f r7 = r7.a(r10)
            r5.add(r7)
            goto L_0x006e
        L_0x0082:
            r0.L$0 = r8
            r0.L$1 = r9
            r0.L$2 = r10
            r0.L$3 = r2
            r0.label = r3
            java.lang.Object r10 = r4.a(r5, r0)
            if (r10 != r1) goto L_0x0093
            return r1
        L_0x0093:
            r0 = r8
        L_0x0094:
            c.c.a.e.d.m.a.c r10 = r0.f5277b
            com.farsitel.bazaar.data.entity.Either$Success r9 = (com.farsitel.bazaar.data.entity.Either.Success) r9
            java.lang.Object r9 = r9.getValue()
            c.c.a.e.d.m.b.b.i r9 = (c.c.a.e.d.m.b.b.i) r9
            long r0 = r9.a()
            r10.b((long) r0)
        L_0x00a5:
            h.h r9 = h.h.f14579a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.d.a(com.farsitel.bazaar.data.entity.Either, h.c.b):java.lang.Object");
    }

    public final /* synthetic */ Object a(f fVar, h.c.b<? super h> bVar) {
        return this.f5277b.a(k.a(fVar), bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(h.c.b<? super com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.a>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.farsitel.bazaar.data.feature.payment.PaymentRepository$getCredit$1
            if (r0 == 0) goto L_0x0013
            r0 = r5
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$getCredit$1 r0 = (com.farsitel.bazaar.data.feature.payment.PaymentRepository$getCredit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.payment.PaymentRepository$getCredit$1 r0 = new com.farsitel.bazaar.data.feature.payment.PaymentRepository$getCredit$1
            r0.<init>(r4, r5)
        L_0x0018:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0035
            if (r2 != r3) goto L_0x002d
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.m.d r0 = (c.c.a.e.d.m.d) r0
            h.e.a((java.lang.Object) r5)
            goto L_0x0046
        L_0x002d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L_0x0035:
            h.e.a((java.lang.Object) r5)
            c.c.a.e.d.m.b.b r5 = r4.f5276a
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L_0x0045
            return r1
        L_0x0045:
            r0 = r4
        L_0x0046:
            r1 = r5
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            r0.a((com.farsitel.bazaar.data.entity.Either<c.c.a.e.d.m.a>) r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.d.a(h.c.b):java.lang.Object");
    }

    public final void a(Either<a> either) {
        if (either instanceof Either.Success) {
            this.f5277b.a(((a) ((Either.Success) either).getValue()).a());
        }
    }

    public final Object a(String str, int i2, String str2, String str3, List<String> list, h.c.b<? super Either<? extends List<String>>> bVar) {
        return this.f5276a.a(str, i2, str2, str3, list, bVar);
    }

    public final Object a(int i2, int i3, h.c.b<? super Either<? extends List<TransactionItem>>> bVar) {
        return this.f5276a.a(i2, i3, bVar);
    }
}
