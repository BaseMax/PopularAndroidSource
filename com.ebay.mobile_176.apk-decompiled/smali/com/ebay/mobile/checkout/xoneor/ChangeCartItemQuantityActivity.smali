.class public Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "ChangeCartItemQuantityActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static final EXTRA_CART_LINE_ITEM_ID:Ljava/lang/String; = "lineItemId"

.field public static final EXTRA_MAXIMUM_QUANTITY:Ljava/lang/String; = "maximumQuantity"

.field public static final EXTRA_MINIMUM_QUANTITY:Ljava/lang/String; = "minimumQuantity"

.field public static final EXTRA_QUANTITY_SELECTED:Ljava/lang/String; = "quantitySelected"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private cartLineItemId:Ljava/lang/String;

.field private maximumQuantity:I

.field private minimumQuantity:I

.field private quantityInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private quantityLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->processInput(Z)V

    return-void
.end method

.method private processInput(Z)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->quantityInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 140
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 145
    :goto_0
    iget v2, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->minimumQuantity:I

    if-lt v0, v2, :cond_1

    iget v2, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->maximumQuantity:I

    if-gt v0, v2, :cond_1

    .line 147
    invoke-direct {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->setError(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->done(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f120e79

    .line 152
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 133
    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->setError(Ljava/lang/String;)V

    return-void
.end method

.method private setError(Ljava/lang/String;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->quantityLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->quantityLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

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

.method createUI()V
    .locals 6

    const v0, 0x7f0d062e

    .line 80
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->setContentView(I)V

    .line 82
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->showBackButton()V

    const v0, 0x7f0a0d00

    .line 85
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->quantityLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a0cfe

    .line 86
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->quantityInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 88
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->quantityInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->quantityInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$1;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 99
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->quantityInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$2;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$2;-><init>(Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0a0a13

    .line 113
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    iget v1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->minimumQuantity:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const v1, 0x7f120e90

    .line 115
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->minimumQuantity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a09b0

    .line 119
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120e98

    .line 120
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->maximumQuantity:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method done(I)V
    .locals 2

    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "quantitySelected"

    .line 164
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "lineItemId"

    .line 165
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->cartLineItemId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->setResult(ILandroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string/jumbo v1, "title"

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->title:Ljava/lang/String;

    const-string v1, "minimumQuantity"

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->minimumQuantity:I

    const-string v1, "maximumQuantity"

    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->maximumQuantity:I

    const-string v0, "lineItemId"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->cartLineItemId:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->title:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "minimumQuantity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->minimumQuantity:I

    .line 60
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "maximumQuantity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->maximumQuantity:I

    .line 61
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "lineItemId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->cartLineItemId:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->createUI()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "title"

    .line 72
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "minimumQuantity"

    .line 73
    iget v1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->minimumQuantity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maximumQuantity"

    .line 74
    iget v1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->maximumQuantity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lineItemId"

    .line 75
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->cartLineItemId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p1, 0x0

    .line 183
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->processInput(Z)V

    return-void
.end method
