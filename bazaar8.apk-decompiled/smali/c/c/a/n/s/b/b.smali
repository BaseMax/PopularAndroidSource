.class public final Lc/c/a/n/s/b/b;
.super Ljava/lang/Object;
.source "GatewayPaymentFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/core/model/PaymentWebState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/s/b/b;->a:Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/core/model/PaymentWebState;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lc/c/a/n/s/b/b;->a:Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;->a(Lcom/farsitel/bazaar/ui/payment/gateway/GatewayPaymentFragment;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/PaymentWebState;

    invoke-virtual {p0, p1}, Lc/c/a/n/s/b/b;->a(Lcom/farsitel/bazaar/core/model/PaymentWebState;)V

    return-void
.end method
