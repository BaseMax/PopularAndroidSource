.class final Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;
.super Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;
.source "CreditCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/prox/CreditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExpirationChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    .line 887
    invoke-direct {p0, p2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->watchedView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 895
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 897
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 900
    :cond_0
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Expiration;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->safeSetTextAfterTextChanged(Ljava/lang/String;)V

    .line 903
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Expiration;->hasFullLength(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 905
    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/CreditCard$Expiration;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 907
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->watchedLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 908
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->watchedLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    const v1, 0x7f120a42

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 912
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->watchedLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 913
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->this$0:Lcom/ebay/mobile/checkout/prox/CreditCardActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->access$200(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->requestFocusIfNotMasked(Landroid/widget/EditText;)V

    goto :goto_0

    .line 917
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;->watchedLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method
