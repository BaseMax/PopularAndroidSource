.class public Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "OrderSummaryInstructionsActivity.java"


# instance fields
.field private message:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method

.method private resumeUi()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->message:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d030b

    .line 26
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->setContentView(I)V

    const v0, 0x7f0a0858

    .line 27
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->textView:Landroid/widget/TextView;

    .line 29
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "OrderSummary"

    .line 31
    invoke-static {v0, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "order_instructions"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->message:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "order_instructions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->message:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 66
    invoke-direct {p0}, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->resumeUi()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "order_instructions"

    .line 45
    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryInstructionsActivity;->message:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
