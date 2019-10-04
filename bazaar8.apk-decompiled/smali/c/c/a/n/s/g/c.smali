.class public final Lc/c/a/n/s/g/c;
.super Ljava/lang/Object;
.source "PaymentThankYouPageFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/s/g/c;->a:Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;

    iput-object p2, p0, Lc/c/a/n/s/g/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/n/s/g/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lc/c/a/n/s/g/c;->a:Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->a(Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;)Lc/c/a/n/s/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/c/a/n/s/g/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lc/c/a/n/s/g/c;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lc/c/a/n/s/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
