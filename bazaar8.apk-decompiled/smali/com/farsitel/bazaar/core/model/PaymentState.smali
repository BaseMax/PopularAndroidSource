.class public abstract Lcom/farsitel/bazaar/core/model/PaymentState;
.super Lcom/farsitel/bazaar/core/model/ResourceState$CustomState;
.source "ResourceState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseProductCompleted;,
        Lcom/farsitel/bazaar/core/model/PaymentState$PurchaseCreditCompleted;,
        Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToCreditOptions;,
        Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToBuyProduct;,
        Lcom/farsitel/bazaar/core/model/PaymentState$CreditOptionReceived;,
        Lcom/farsitel/bazaar/core/model/PaymentState$BuyCreditMethodsReceived;,
        Lcom/farsitel/bazaar/core/model/PaymentState$BuyProductDataReceived;,
        Lcom/farsitel/bazaar/core/model/PaymentState$AlreadyBought;,
        Lcom/farsitel/bazaar/core/model/PaymentState$NotLoggedIn;,
        Lcom/farsitel/bazaar/core/model/PaymentState$UserAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/core/model/ResourceState$CustomState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/core/model/PaymentState;-><init>()V

    return-void
.end method
