.class final Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;
.super Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$CreditTextWatcher;
.source "DirectDebitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IbanNumberChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;

    .line 808
    invoke-direct {p0, p2}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$CreditTextWatcher;-><init>(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;->watchedView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 816
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 818
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 821
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/DirectDebit;->validateMod97Checksum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;->watchedView:Landroid/widget/EditText;

    iget v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;->baseColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u2022"

    .line 823
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 824
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;->watchedView:Landroid/widget/EditText;

    iget v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;->baseColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 826
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;->watchedView:Landroid/widget/EditText;

    iget v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;->errorColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_3
    :goto_0
    return-void
.end method
