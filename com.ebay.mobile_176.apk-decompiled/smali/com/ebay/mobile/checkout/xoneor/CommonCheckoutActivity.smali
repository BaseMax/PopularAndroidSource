.class public abstract Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "CommonCheckoutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$renderSurvey$0(Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;Landroid/view/View;)V
    .locals 2

    .line 138
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/ebay/mobile/inflowseeksurvey/InflowSeekSurveyActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "survey_key"

    .line 139
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->surveyKey:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "context_list"

    .line 140
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->surveyContext:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$renderSurvey$1(Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;Ljava/lang/String;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    .line 157
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/ebay/mobile/inflowseeksurvey/InflowSeekSurveyActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "survey_key"

    .line 158
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "context_list"

    .line 159
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addMenuItem(II)V
    .locals 0

    .line 110
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->addMenuItem(ILjava/lang/String;)V

    return-void
.end method

.method public addMenuItem(ILjava/lang/String;)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->addMenuItem(Landroid/view/Menu;ILjava/lang/String;)Z

    return-void
.end method

.method public addMenuItem(Landroid/view/Menu;II)Z
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->addMenuItem(Landroid/view/Menu;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addMenuItem(Landroid/view/Menu;ILjava/lang/String;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 91
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 93
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public enableMenuItem(IZ)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->enableMenuItem(Landroid/view/Menu;IZ)V

    return-void
.end method

.method public enableMenuItem(Landroid/view/Menu;IZ)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 117
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->setToolbar()V

    .line 38
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMenuAgreeClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuContinueClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuDoneClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuHomeClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuSaveClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 62
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onMenuSaveClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 60
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onMenuDoneClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 58
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onMenuContinueClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onMenuAgreeClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onMenuHomeClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f0a03b8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public renderSurvey(Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 125
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->surveyKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->surveyContext:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->moduleTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->moduleLinkText:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a1218

    .line 128
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a1216

    .line 132
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;->moduleLinkText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 137
    new-instance v1, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CommonCheckoutActivity$LVmUv9ehLnpkudOektjorWxQzvI;

    invoke-direct {v1, p0, p1}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CommonCheckoutActivity$LVmUv9ehLnpkudOektjorWxQzvI;-><init>(Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public renderSurvey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/net/api/experience/inflowseeksurvey/InflowSeekSurveyRequestParams$Context;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0a1219

    .line 147
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 149
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a1217

    .line 151
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 156
    new-instance p1, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CommonCheckoutActivity$mxHQ0fVrSk2NZsL-2mxAV_qslpw;

    invoke-direct {p1, p0, p3, p4}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CommonCheckoutActivity$mxHQ0fVrSk2NZsL-2mxAV_qslpw;-><init>(Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMenuItemVisibility(IZ)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->setMenuItemVisibility(Landroid/view/Menu;IZ)Z

    return-void
.end method

.method public setMenuItemVisibility(Landroid/view/Menu;IZ)Z
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 173
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected setToolbar()V
    .locals 1

    const/16 v0, 0x1001

    .line 43
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->setToolbarFlags(I)V

    return-void
.end method

.method public showBackButton()V
    .locals 1

    const/16 v0, 0x1000

    .line 74
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->removeToolbarFlags(I)V

    return-void
.end method

.method public showCloseButton()V
    .locals 1

    const/16 v0, 0x1000

    .line 79
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->addToolbarFlags(I)V

    return-void
.end method
