.class public Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "MessageToSellerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static final EXTRA_MAX_SELLER_MESSAGE_LENGTH:Ljava/lang/String; = "max_seller_message_length"

.field public static final EXTRA_MESSAGE_TO_SELLER:Ljava/lang/String; = "message_to_seller"

.field public static final EXTRA_REMAINING_CHARACTERS:Ljava/lang/String; = "characters_remaining"

.field public static final EXTRA_SELLER_ID:Ljava/lang/String; = "seller_id"


# instance fields
.field private maxSellerMessageCharacters:I

.field private messageToSeller:Landroid/widget/EditText;

.field private remainingCharacters:Landroid/widget/TextView;

.field private remainingCharactersText:Ljava/lang/String;

.field private sellerUserIdentifier:Ljava/lang/String;

.field private textChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->textChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharacters:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic lambda$setInitialToolbarFocusForAccessibility$0(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 p0, 0x1

    .line 229
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private setRemainingCharacters(Z)V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharacters:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    iget v1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->maxSellerMessageCharacters:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharactersText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->maxSellerMessageCharacters:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharactersText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharacters:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    if-nez v1, :cond_2

    .line 202
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->textChanged:Z

    const/4 p1, 0x0

    .line 165
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->setRemainingCharacters(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method createUI()V
    .locals 2

    const v0, 0x7f0d062f

    .line 120
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->setContentView(I)V

    const v0, 0x7f1210e0

    .line 122
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->setTitle(I)V

    .line 123
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->showBackButton()V

    const v0, 0x7f0a03ce

    .line 125
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    .line 127
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->setInitialToolbarFocusForAccessibility(Landroid/widget/EditText;Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a0d85

    .line 131
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharacters:Landroid/widget/TextView;

    return-void
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckoutMessageSent"

    return-object v0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 242
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 54
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->finish()V

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->createUI()V

    .line 65
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v2, "title"

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v2, "edit_text_hint"

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v0, "seller_id"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->sellerUserIdentifier:Ljava/lang/String;

    const-string v0, "message_to_seller"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "characters_remaining"

    .line 81
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharactersText:Ljava/lang/String;

    const-string v2, "max_seller_message_length"

    .line 82
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->maxSellerMessageCharacters:I

    move-object p1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "seller_id"

    .line 86
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->sellerUserIdentifier:Ljava/lang/String;

    const-string p1, "message_to_seller"

    .line 87
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "characters_remaining"

    .line 88
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharactersText:Ljava/lang/String;

    const-string v2, "max_seller_message_length"

    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->maxSellerMessageCharacters:I

    .line 92
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharactersText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->maxSellerMessageCharacters:I

    if-lez p1, :cond_5

    .line 100
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->maxSellerMessageCharacters:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 101
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharacters:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->setRemainingCharacters(Z)V

    goto :goto_1

    .line 105
    :cond_5
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharacters:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03ba

    const v1, 0x7f12040f

    .line 137
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onMenuDoneClicked(Landroid/view/MenuItem;)Z
    .locals 4

    const-string p1, "input_method"

    .line 143
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 146
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->textChanged:Z

    if-eqz p1, :cond_0

    .line 148
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "message_to_seller"

    .line 149
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "seller_id"

    .line 150
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->sellerUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_ebay_now"

    .line 151
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_ebay_now"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->setResult(ILandroid/content/Intent;)V

    .line 154
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "message_to_seller"

    .line 112
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->messageToSeller:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "seller_id"

    .line 113
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->sellerUserIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "characters_remaining"

    .line 114
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->remainingCharactersText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "max_seller_message_length"

    .line 115
    iget v1, p0, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->maxSellerMessageCharacters:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setInitialToolbarFocusForAccessibility(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 226
    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$MessageToSellerActivity$m1NNdEmbINn9joogV9q4NBjY2Lk;

    invoke-direct {v0, p2, p1}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$MessageToSellerActivity$m1NNdEmbINn9joogV9q4NBjY2Lk;-><init>(Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
