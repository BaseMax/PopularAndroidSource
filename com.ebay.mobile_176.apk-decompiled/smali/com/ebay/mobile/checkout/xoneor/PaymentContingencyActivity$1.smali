.class Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity$1;
.super Ljava/lang/Object;
.source "PaymentContingencyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;->renderScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;

.field final synthetic val$confirmButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;Landroid/widget/Button;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity$1;->val$confirmButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 225
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PaymentContingencyActivity$1;->val$confirmButton:Landroid/widget/Button;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
