.class public final Lc/c/a/n/s/b/h;
.super Ljava/lang/Object;
.source "GatewayPaymentViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/s/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/s/b/h;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/n/s/b/h;->b:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;)Lc/c/a/n/s/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;)",
            "Lc/c/a/n/s/b/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/s/b/h;

    invoke-direct {v0, p0, p1}, Lc/c/a/n/s/b/h;-><init>(Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;)Lc/c/a/n/s/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;)",
            "Lc/c/a/n/s/b/g;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/s/b/g;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;

    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/p/I;

    invoke-direct {v0, p0, p1}, Lc/c/a/n/s/b/g;-><init>(Lcom/farsitel/bazaar/ui/payment/handler/PaymentGatewayHandler;Lc/c/a/p/I;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/s/b/g;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/n/s/b/h;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/n/s/b/h;->b:Lg/a/a;

    invoke-static {v0, v1}, Lc/c/a/n/s/b/h;->b(Lg/a/a;Lg/a/a;)Lc/c/a/n/s/b/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/s/b/h;->get()Lc/c/a/n/s/b/g;

    move-result-object v0

    return-object v0
.end method
