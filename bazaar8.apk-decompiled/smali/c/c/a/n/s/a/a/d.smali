.class public final Lc/c/a/n/s/a/a/d;
.super Ljava/lang/Object;
.source "CreditOptionsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

.field public final synthetic b:Lcom/farsitel/bazaar/data/entity/ErrorModel;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;Lcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/s/a/a/d;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    iput-object p2, p0, Lc/c/a/n/s/a/a/d;->b:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    iput-object p3, p0, Lc/c/a/n/s/a/a/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/s/a/a/d;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->c(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)V

    return-void
.end method
