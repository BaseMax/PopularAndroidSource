.class public Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "SepaConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_LEGAL_BUTTON_LABEL:Ljava/lang/String; = "sepaButtonText"

.field public static final EXTRA_LEGAL_BUTTON_LINK:Ljava/lang/String; = "sepaButtonLink"

.field public static final EXTRA_LEGAL_TEXT:Ljava/lang/String; = "sepaText"


# instance fields
.field private usingExperienceService:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->usingExperienceService:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->setResult(I)V

    .line 116
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a06e8

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->usingExperienceService:Z

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "trackingAction"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 81
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "url"

    .line 82
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "sepaButtonLink"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    .line 83
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v0, "use_sso"

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "back"

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x24de

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00bd

    .line 43
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->setContentView(I)V

    const p1, 0x7f120a32

    .line 44
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->showBackButton()V

    .line 47
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "usingExperienceService"

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->usingExperienceService:Z

    const-string/jumbo v0, "sepaText"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->finish()V

    :cond_0
    const v1, 0x7f0a100f

    .line 57
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0a06e8

    .line 61
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "sepaButtonText"

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03b8

    const v1, 0x7f120207

    .line 94
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onMenuAgreeClicked(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, -0x1

    .line 107
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuHomeClicked(Landroid/view/MenuItem;)Z
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/SepaConfirmationActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
