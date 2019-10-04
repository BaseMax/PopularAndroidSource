.class public final Lc/c/a/n/s/a/a/c;
.super Ljava/lang/Object;
.source "CreditOptionsFragment.kt"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->a(Ljava/util/List;)V
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

    iput-object p1, p0, Lc/c/a/n/s/a/a/c;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/s/a/a/c;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    sget p2, Lc/c/a/e;->increaseCreditButton:I

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string p2, "increaseCreditButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    return-void
.end method
