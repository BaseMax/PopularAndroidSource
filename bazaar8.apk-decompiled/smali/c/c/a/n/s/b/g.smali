.class public final Lc/c/a/n/s/b/g;
.super Lc/c/a/d/f/p;
.source "GatewayPaymentViewModel.kt"


# instance fields
.field public final d:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentData;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/n/s/b/f;

.field public final f:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

.field public final g:Lc/c/a/p/I;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lc/c/a/p/I;)V
    .locals 1

    const-string v0, "paymentGatewayHandler"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/b/g;->f:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

    iput-object p2, p0, Lc/c/a/n/s/b/g;->g:Lc/c/a/p/I;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/b/g;->d:Lc/c/a/c/h/g;

    .line 3
    new-instance p1, Lc/c/a/n/s/b/f;

    invoke-direct {p1, p0}, Lc/c/a/n/s/b/f;-><init>(Lc/c/a/n/s/b/g;)V

    iput-object p1, p0, Lc/c/a/n/s/b/g;->e:Lc/c/a/n/s/b/f;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/s/b/g;)Lc/c/a/c/h/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/s/b/g;->d:Lc/c/a/c/h/g;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/s/b/g;)Lc/c/a/p/I;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/s/b/g;->g:Lc/c/a/p/I;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/farsitel/bazaar/ui/payment/PaymentType;Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "dealer"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paymentType"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paymentGatewayType"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "gatewayCode"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lc/c/a/n/s/b/g;->d:Lc/c/a/c/h/g;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    instance-of v1, v1, Lcom/farsitel/bazaar/core/model/PaymentState$UserAction;

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, v0, Lc/c/a/n/s/b/g;->d:Lc/c/a/c/h/g;

    new-instance v2, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v12, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v1, v2}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lc/c/a/n/s/b/g;->f:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

    .line 5
    iget-object v11, v0, Lc/c/a/n/s/b/g;->e:Lc/c/a/n/s/b/f;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 6
    invoke-virtual/range {v2 .. v11}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/farsitel/bazaar/ui/payment/PaymentType;Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;Ljava/lang/String;Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/d/f/p;->d()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/s/b/g;->f:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->b()V

    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/b/g;->d:Lc/c/a/c/h/g;

    return-object v0
.end method

.method public final f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/b/g;->d:Lc/c/a/c/h/g;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/s/b/g;->f:Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;->g()V

    return-void
.end method
