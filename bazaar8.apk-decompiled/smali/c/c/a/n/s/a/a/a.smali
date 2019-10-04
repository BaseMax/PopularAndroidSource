.class public final Lc/c/a/n/s/a/a/a;
.super Ljava/lang/Object;
.source "CreditOptionsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->Wa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/s/a/a/a;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/s/a/a/a;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
