.class public final Lc/c/a/n/s/b;
.super Ljava/lang/Object;
.source "PaymentActivity.kt"

# interfaces
.implements Lc/c/a/d/f/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/d/f/r<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/d/f/a/a/a;

.field public final synthetic b:Lcom/farsitel/bazaar/ui/payment/PaymentActivity;


# direct methods
.method public constructor <init>(Lc/c/a/d/f/a/a/a;Lcom/farsitel/bazaar/ui/payment/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/s/b;->a:Lc/c/a/d/f/a/a/a;

    iput-object p2, p0, Lc/c/a/n/s/b;->b:Lcom/farsitel/bazaar/ui/payment/PaymentActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-static {p0}, Lc/c/a/d/f/r$a;->b(Lc/c/a/d/f/r;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ca:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$a;

    iget-object v0, p0, Lc/c/a/n/s/b;->a:Lc/c/a/d/f/a/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.farsitel.bazaar"

    invoke-virtual {p1, v0, v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lc/c/a/n/s/b;->b:Lcom/farsitel/bazaar/ui/payment/PaymentActivity;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->finish()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/s/b;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/b;->b:Lcom/farsitel/bazaar/ui/payment/PaymentActivity;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->finish()V

    return-void
.end method
