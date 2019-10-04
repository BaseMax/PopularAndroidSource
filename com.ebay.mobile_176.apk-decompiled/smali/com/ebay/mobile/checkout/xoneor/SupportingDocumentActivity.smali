.class public Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "SupportingDocumentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final EXTRA_DOCUMENT_ID_VALUE:Ljava/lang/String;

.field private final EXTRA_PENDING_OPERATION:Ljava/lang/String;

.field private documentId:Landroid/widget/EditText;

.field private documentIdLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private documentIdMessages:Landroid/view/ViewGroup;

.field private documentIdValue:Ljava/lang/String;

.field private pendingOperation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    const-string v0, "documentIdValue"

    .line 39
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->EXTRA_DOCUMENT_ID_VALUE:Ljava/lang/String;

    const-string v0, "pendingOperation"

    .line 40
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->EXTRA_PENDING_OPERATION:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->handleDoneButtonUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private closeKeyboard()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private handleDoneButtonUpdate(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f0a03ba

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->enableMenuItem(IZ)V

    return-void
.end method

.method private renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;)V
    .locals 8
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->getModuleTitle()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    .line 212
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->getDocumentFormHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->getDocumentFormValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->getDocumentFormHelp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 221
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdMessages:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;

    .line 224
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d00cb

    iget-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdMessages:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a09f7

    .line 226
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 227
    iget-object v6, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v5, v6}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 228
    iget-object v6, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    sget-object v7, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->NAV:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne v6, v7, :cond_1

    .line 230
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdMessages:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdMessages:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdMessages:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 246
    :goto_1
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->pendingOperation:Z

    if-eqz v0, :cond_5

    .line 248
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->pendingOperation:Z

    .line 249
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->hasDocumentError()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, -0x1

    .line 251
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->setResult(I)V

    .line 252
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->finish()V

    return-void

    .line 258
    :cond_4
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->getDocumentErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    if-eqz v0, :cond_5

    .line 261
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 262
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 266
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method

.method private submitDocumentId()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;

    .line 272
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a03ba

    const/4 v2, 0x0

    .line 276
    invoke-virtual {p0, v1, v2}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->setMenuItemVisibility(IZ)V

    .line 277
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->startProgress()V

    .line 278
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdValue:Ljava/lang/String;

    const/4 v1, 0x1

    .line 279
    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->pendingOperation:Z

    .line 280
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;->getDocumentType()Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentType;

    move-result-object v0

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdValue:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setDocumentId(Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentType;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckoutIncentiveEntry"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a09f7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz p1, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    .line 173
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "use_sso"

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back"

    const/4 v2, 0x1

    .line 175
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "add_device_id"

    .line 176
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00be

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->initContentView(ILandroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->startProgress()V

    if-eqz p1, :cond_0

    const-string v0, "documentIdValue"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdValue:Ljava/lang/String;

    const-string v0, "pendingOperation"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->pendingOperation:Z

    :cond_0
    const p1, 0x7f0a0568

    .line 61
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const p1, 0x7f0a0567

    .line 62
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    .line 63
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 64
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 65
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0a0569

    .line 75
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdMessages:Landroid/view/ViewGroup;

    .line 78
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 79
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/Util;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03ba

    const v1, 0x7f12040f

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->submitDocumentId()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 199
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->submitDocumentId()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuDoneClicked(Landroid/view/MenuItem;)Z
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentId:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->submitDocumentId()V

    return v0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->closeKeyboard()V

    .line 154
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->finish()V

    return v0
.end method

.method public onMenuHomeClicked(Landroid/view/MenuItem;)Z
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->closeKeyboard()V

    .line 139
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03ba

    const/4 v1, 0x1

    .line 132
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->setMenuItemVisibility(Landroid/view/Menu;IZ)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "documentIdValue"

    .line 86
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->documentIdValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pendingOperation"

    .line 87
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->pendingOperation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 104
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->stopProgress()V

    return-void

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;

    .line 111
    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;

    if-nez p1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->finish()V

    return-void

    :cond_2
    const p2, 0x7f0a03ba

    const/4 p3, 0x1

    .line 118
    invoke-virtual {p0, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->setMenuItemVisibility(IZ)V

    .line 119
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/document/SupportingDocumentsModule;)V

    .line 120
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/SupportingDocumentActivity;->stopProgress()V

    return-void
.end method
