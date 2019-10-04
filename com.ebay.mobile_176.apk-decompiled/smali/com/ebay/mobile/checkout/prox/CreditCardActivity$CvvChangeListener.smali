.class final Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;
.super Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;
.source "CreditCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/prox/CreditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CvvChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    .line 926
    invoke-direct {p0, p2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;->watchedView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 934
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->access$300(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 937
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 940
    :cond_0
    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/CreditCard$Number;->hasFullLength(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->fromCardNumber(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    move-result-object v0

    .line 943
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->cvvLength()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 945
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;->watchedLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 946
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->access$400(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->requestFocusIfNotMasked(Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method
