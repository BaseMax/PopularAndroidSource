.class public final Lc/c/a/n/s/b/f;
.super Ljava/lang/Object;
.source "GatewayPaymentViewModel.kt"

# interfaces
.implements Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/s/b/g;-><init>(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lc/c/a/p/I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/s/b/g;


# direct methods
.method public constructor <init>(Lc/c/a/n/s/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/s/b/f;->a:Lc/c/a/n/s/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 8
    iget-object v0, p0, Lc/c/a/n/s/b/f;->a:Lc/c/a/n/s/b/g;

    invoke-static {v0}, Lc/c/a/n/s/b/g;->a(Lc/c/a/n/s/b/g;)Lc/c/a/c/h/g;

    move-result-object v0

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseCreditCompleted;->a:Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseCreditCompleted;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lc/c/a/e/d/m/b/b/f;)V
    .locals 8

    const-string v0, "gatewayDataTypes"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v0, p1, Lc/c/a/e/d/m/b/b/f$b;

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lc/c/a/n/s/b/f;->a:Lc/c/a/n/s/b/g;

    invoke-static {v0}, Lc/c/a/n/s/b/g;->a(Lc/c/a/n/s/b/g;)Lc/c/a/c/h/g;

    move-result-object v0

    .line 11
    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    .line 12
    sget-object v2, Lcom/farsitel/bazaar/core/model/PaymentState$UserAction;->a:Lcom/farsitel/bazaar/core/model/PaymentState$UserAction;

    .line 13
    new-instance v3, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;

    sget-object v1, Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;->WEB_VIEW:Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;

    check-cast p1, Lc/c/a/e/d/m/b/b/f$b;

    invoke-virtual {p1}, Lc/c/a/e/d/m/b/b/f$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v1, p1}, Lcom/farsitel/bazaar/data/feature/payment/UserActionData;-><init>(Lcom/farsitel/bazaar/data/feature/payment/UserActionData$Action;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    .line 15
    invoke-virtual {v0, v7}, Lb/r/t;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lc/c/a/n/s/b/f;->a:Lc/c/a/n/s/b/g;

    invoke-static {v0}, Lc/c/a/n/s/b/g;->a(Lc/c/a/n/s/b/g;)Lc/c/a/c/h/g;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "paymentData"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sign"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "developerPayload"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Lc/c/a/n/s/b/f;->a:Lc/c/a/n/s/b/g;

    invoke-static {p3}, Lc/c/a/n/s/b/g;->b(Lc/c/a/n/s/b/g;)Lc/c/a/p/I;

    move-result-object p3

    invoke-virtual {p3}, Lc/c/a/p/I;->i()V

    .line 2
    iget-object p3, p0, Lc/c/a/n/s/b/f;->a:Lc/c/a/n/s/b/g;

    invoke-static {p3}, Lc/c/a/n/s/b/g;->a(Lc/c/a/n/s/b/g;)Lc/c/a/c/h/g;

    move-result-object p3

    .line 3
    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    .line 4
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseProductCompleted;->a:Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseProductCompleted;

    .line 5
    new-instance v2, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    invoke-direct {v2, p1, p2}, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    .line 7
    invoke-virtual {p3, v6}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method
