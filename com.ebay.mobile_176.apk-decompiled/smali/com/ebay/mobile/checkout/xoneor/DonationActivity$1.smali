.class Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;
.super Ljava/lang/Object;
.source "DonationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/xoneor/DonationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/DonationActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/DonationActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/DonationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/DonationActivity;

    iget-object v1, v1, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    .line 142
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amounts:Ljava/util/List;

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;->displayValue:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->value:Ljava/lang/Object;

    check-cast v2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    iget-wide v2, v2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->value:D

    .line 145
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/DonationActivity;

    invoke-virtual {v4, v2, v3}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->selectedAmountChanged(D)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "donation_amount"

    .line 147
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "donation_amount_currency"

    .line 148
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->amounts:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityAmount;->displayValue:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->value:Ljava/lang/Object;

    check-cast p1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->currency:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/DonationActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/DonationActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->finish()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/DonationActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/DonationActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/xoneor/DonationActivity;->finish()V

    :goto_0
    return-void
.end method
