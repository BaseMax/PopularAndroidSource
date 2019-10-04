.class public final Lc/c/a/h/a/Ca$da;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/Sb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "da"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$ca;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$da;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$ca;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$da;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$ca;)V

    return-void
.end method


# virtual methods
.method public final a()Lc/c/a/b/f/a/c;
    .locals 2

    .line 2
    new-instance v0, Lc/c/a/b/f/a/c;

    iget-object v1, p0, Lc/c/a/h/a/Ca$da;->a:Lc/c/a/h/a/Ca;

    invoke-static {v1}, Lc/c/a/h/a/Ca;->l(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v1

    invoke-interface {v1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lc/c/a/b/f/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lcom/farsitel/bazaar/payment/iab/InAppBillingService;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$da;->b(Lcom/farsitel/bazaar/payment/iab/InAppBillingService;)Lcom/farsitel/bazaar/payment/iab/InAppBillingService;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$da;->a(Lcom/farsitel/bazaar/payment/iab/InAppBillingService;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/payment/iab/InAppBillingService;)Lcom/farsitel/bazaar/payment/iab/InAppBillingService;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/h/a/Ca$da;->a:Lc/c/a/h/a/Ca;

    .line 2
    invoke-static {v0}, Lc/c/a/h/a/Ca;->x(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/a/a;

    .line 3
    invoke-static {p1, v0}, Lc/c/a/k/a/b;->a(Lcom/farsitel/bazaar/payment/iab/InAppBillingService;Lc/c/a/e/d/a/a;)V

    .line 4
    iget-object v0, p0, Lc/c/a/h/a/Ca$da;->a:Lc/c/a/h/a/Ca;

    .line 5
    invoke-static {v0}, Lc/c/a/h/a/Ca;->m(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/m/d;

    .line 6
    invoke-static {p1, v0}, Lc/c/a/k/a/b;->a(Lcom/farsitel/bazaar/payment/iab/InAppBillingService;Lc/c/a/e/d/m/d;)V

    .line 7
    invoke-virtual {p0}, Lc/c/a/h/a/Ca$da;->a()Lc/c/a/b/f/a/c;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Lc/c/a/k/a/b;->a(Lcom/farsitel/bazaar/payment/iab/InAppBillingService;Lc/c/a/b/f/a/c;)V

    return-object p1
.end method
