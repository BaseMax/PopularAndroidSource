.class public final Lc/c/a/n/s/g/a;
.super Ljava/lang/Object;
.source "PaymentThankYouPageFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/s/g/a;->a:Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/s/g/a;->a:Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/w/j;->h()Z

    return-void
.end method
