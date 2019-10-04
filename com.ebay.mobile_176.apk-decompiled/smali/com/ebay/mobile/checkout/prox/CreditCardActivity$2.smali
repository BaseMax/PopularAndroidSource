.class Lcom/ebay/mobile/checkout/prox/CreditCardActivity$2;
.super Ljava/lang/Object;
.source "CreditCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$2;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$2;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->access$000(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a123f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getWebViewIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 677
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$2;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
