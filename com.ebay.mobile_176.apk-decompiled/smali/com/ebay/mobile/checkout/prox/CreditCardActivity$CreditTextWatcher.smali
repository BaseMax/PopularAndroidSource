.class Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;
.super Ljava/lang/Object;
.source "CreditCardActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/prox/CreditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreditTextWatcher"
.end annotation


# instance fields
.field final watchedLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field final watchedView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;->watchedLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 802
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;->watchedView:Landroid/widget/EditText;

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

    return-void
.end method

.method safeSetTextAfterTextChanged(Ljava/lang/String;)V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;->watchedView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 813
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;->watchedView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;->watchedView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 815
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;->watchedView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
