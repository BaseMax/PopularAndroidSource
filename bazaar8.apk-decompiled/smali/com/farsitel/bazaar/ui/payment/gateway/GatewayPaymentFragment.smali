.class public final Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;
.super Lc/c/a/n/c/a/b;
.source "GatewayPaymentFragment.kt"


# instance fields
.field public ia:Lc/c/a/a/b/a;

.field public ja:Lc/c/a/e/d/u/a;

.field public ka:Lc/c/a/n/s/a;

.field public la:Lc/c/a/n/s/b/g;

.field public ma:Lc/c/a/n/s/h/f;

.field public na:Lc/c/a/n/s/b/c;

.field public oa:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->Va()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 41
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->oa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;
    .locals 11

    .line 2
    new-instance v8, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    const/4 v1, 0x0

    const-string v2, "args"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lc/c/a/n/s/b/c;->c()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lc/c/a/n/s/b/c;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v4, v0

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc/c/a/n/s/b/c;->h()Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/c/a/n/s/b/c;->e()Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/s/b/c;->a()J

    move-result-wide v9

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/s/b/c;->f()Z

    move-result v7

    move-object v0, v8

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v9

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v8

    .line 10
    :cond_1
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_3
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_5
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_6
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/GatewayPaymentScreen;

    move-result-object v0

    return-object v0
.end method

.method public final Ua()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->la:Lc/c/a/n/s/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    const-string v3, "args"

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lc/c/a/n/s/b/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lc/c/a/n/s/b/c;->i()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lc/c/a/n/s/b/c;->d()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v6, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lc/c/a/n/s/b/c;->a()J

    move-result-wide v6

    .line 6
    sget-object v8, Lcom/farsitel/bazaar/ui/payment/PaymentType;->Companion:Lcom/farsitel/bazaar/ui/payment/PaymentType$a;

    iget-object v9, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lc/c/a/n/s/b/c;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/farsitel/bazaar/ui/payment/PaymentType$a;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/payment/PaymentType;

    move-result-object v8

    .line 7
    sget-object v9, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->Companion:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType$a;

    iget-object v10, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lc/c/a/n/s/b/c;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType$a;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    move-result-object v9

    .line 8
    iget-object v10, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lc/c/a/n/s/b/c;->e()Ljava/lang/String;

    move-result-object v10

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    .line 9
    invoke-virtual/range {v0 .. v8}, Lc/c/a/n/s/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/farsitel/bazaar/ui/payment/PaymentType;Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_2
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_3
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_4
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_5
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_6
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "viewModel"

    .line 17
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final Va()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->la:Lc/c/a/n/s/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/s/b/g;->f()V

    return-void

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0053

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lc/c/a/n/s/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lc/c/a/n/s/a;

    if-eqz v0, :cond_1

    .line 4
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->ka:Lc/c/a/n/s/a;

    .line 5
    invoke-super {p0, p1}, Lc/c/a/d/f/i;->a(Landroid/content/Context;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "this activity must implement FinishPaymentCallbacks"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/DialogVisit;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/farsitel/bazaar/analytics/model/what/DialogVisit;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p2

    .line 11
    invoke-static {p0, p2}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p2

    const-class v0, Lc/c/a/n/s/b/g;

    invoke-virtual {p2, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p2

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast p2, Lc/c/a/n/s/b/g;

    .line 13
    invoke-virtual {p2}, Lc/c/a/n/s/b/g;->e()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment$onViewCreated$1$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment$onViewCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 14
    iput-object p2, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->la:Lc/c/a/n/s/b/g;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object p2

    const-string v1, "requireActivity()"

    invoke-static {p2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v1

    .line 16
    invoke-static {p2, v1}, Lb/r/G;->a(Lb/o/a/i;Lb/r/F$b;)Lb/r/F;

    move-result-object p2

    const-class v1, Lc/c/a/n/s/h/f;

    invoke-virtual {p2, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p2

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast p2, Lc/c/a/n/s/h/f;

    .line 18
    invoke-virtual {p2}, Lc/c/a/n/s/h/f;->f()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    new-instance v2, Lc/c/a/n/s/b/b;

    invoke-direct {v2, p0}, Lc/c/a/n/s/b/b;-><init>(Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 19
    iput-object p2, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->ma:Lc/c/a/n/s/h/f;

    .line 20
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->Ua()V

    .line 21
    invoke-virtual {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$UserAction;->a:Lcom/farsitel/bazaar/core/model/PaymentState$UserAction;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Lcom/farsitel/bazaar/data/feature/payment/UserActionData;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.UserActionData"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseCreditCompleted;->a:Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseCreditCompleted;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f100077

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.credit_purchased_successfully)"

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_2
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseProductCompleted;->a:Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseProductCompleted;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;)V

    goto :goto_0

    .line 26
    :cond_4
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 9

    .line 64
    new-instance v4, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 65
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v8

    .line 66
    sget-object v0, Lc/c/a/n/s/b/d;->a:Lc/c/a/n/s/b/d$a;

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v2, p1

    .line 68
    invoke-static/range {v0 .. v7}, Lc/c/a/n/s/b/d$a;->a(Lc/c/a/n/s/b/d$a;ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object v0

    .line 69
    invoke-static {v8, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f10018d

    .line 35
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.purch\u2026e_completed_successfully)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->a()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->b()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p0, v0, v1, p1}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "cannot call on onPaymentSuccess because purchase data is null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 40
    sget-object p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/UserActionData;)V
    .locals 9

    .line 27
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->a()Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    move-result-object v0

    sget-object v1, Lc/c/a/n/s/b/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 28
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 29
    sget-object p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$NotImplemented;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$NotImplemented;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 31
    sget-object v1, Lc/c/a/n/s/b/d;->a:Lc/c/a/n/s/b/d$a;

    .line 32
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-string v6, "https://pardakht.cafebazaar.ir/payment/done/"

    .line 33
    invoke-static/range {v1 .. v8}, Lc/c/a/n/s/b/d$a;->a(Lc/c/a/n/s/b/d$a;Ljava/lang/String;ILandroid/os/Bundle;ILjava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 42
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    const-string v1, "args"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lc/c/a/n/s/b/c;->b()Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    move-result-object v0

    .line 43
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lc/c/a/n/s/b/c;->g()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->CREDIT:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 44
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->ia:Lc/c/a/a/b/a;

    if-eqz v3, :cond_4

    .line 45
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lc/c/a/n/s/b/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lc/c/a/n/s/b/c;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item_id"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v5, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lc/c/a/n/s/b/c;->a()J

    move-result-wide v5

    long-to-double v5, v5

    const-string v7, "value"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 48
    iget-object v5, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->ja:Lc/c/a/e/d/u/a;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lc/c/a/e/d/u/a;->j()Ljava/lang/String;

    move-result-object v5

    const-string v6, "currency"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ecommerce_purchase"

    .line 49
    invoke-virtual {v3, v5, v4}, Lc/c/a/a/b/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p1, "appSettings"

    .line 50
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_1
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_2
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "firebaseAnalyticsTracker"

    .line 53
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lc/c/a/n/s/b/c;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 55
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    .line 56
    sget-object p2, Lc/c/a/n/s/b/d;->a:Lc/c/a/n/s/b/d$a;

    invoke-virtual {p2, v0}, Lc/c/a/n/s/b/d$a;->a(Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;

    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto :goto_1

    .line 58
    :cond_6
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 59
    sget-object v1, Lc/c/a/n/s/b/d;->a:Lc/c/a/n/s/b/d$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lc/c/a/n/s/b/d$a;->a(Lc/c/a/n/s/b/d$a;ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :goto_1
    return-void

    .line 61
    :cond_7
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_8
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_9
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/s/b/c;->a:Lc/c/a/n/s/b/c$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/s/b/c$a;->a(Landroid/os/Bundle;)Lc/c/a/n/s/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->na:Lc/c/a/n/s/b/c;

    .line 3
    sget-object p1, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->ja:Lc/c/a/e/d/u/a;

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->oa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->oa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->oa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->oa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->La()V

    return-void
.end method
