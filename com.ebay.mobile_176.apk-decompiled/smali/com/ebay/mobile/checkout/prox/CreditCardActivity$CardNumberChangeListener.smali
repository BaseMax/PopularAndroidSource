.class final Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;
.super Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;
.source "CreditCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/prox/CreditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CardNumberChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    .line 838
    invoke-direct {p0, p2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 844
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;->watchedView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 846
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 847
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->fromCardNumber(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->setCurrentCardType(Lcom/ebay/nautilus/domain/data/CreditCard$Type;)V

    .line 850
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 853
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 854
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Number;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 855
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 856
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->formattedNumberLength()I

    move-result v4

    .line 857
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->numberLength()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 858
    :cond_1
    sget-object v0, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->CHINAUNIONPAY:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->numberLength()I

    move-result v0

    :goto_0
    const/4 v5, 0x0

    if-le v3, v4, :cond_2

    .line 865
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 866
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 867
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Number;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 868
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    :cond_2
    if-ge v1, v3, :cond_3

    .line 872
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;->safeSetTextAfterTextChanged(Ljava/lang/String;)V

    .line 874
    :cond_3
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Number;->hasFullLength(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 876
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;->watchedLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 877
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->access$100(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->requestFocusIfNotMasked(Landroid/widget/EditText;)V

    :cond_4
    return-void
.end method
