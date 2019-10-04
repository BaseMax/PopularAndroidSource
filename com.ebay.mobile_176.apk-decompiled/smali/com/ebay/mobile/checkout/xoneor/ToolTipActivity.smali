.class public Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "ToolTipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_TOOL_TIP_INFO:Ljava/lang/String; = "tool_tip"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private toolTip:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a133e

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    .line 55
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "use_sso"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back"

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "add_device_id"

    .line 58
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00ea

    .line 31
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "tool_tip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->toolTip:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    const-string p1, "layout_inflater"

    .line 34
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->inflater:Landroid/view/LayoutInflater;

    .line 36
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->showBackButton()V

    .line 37
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->renderScreen()V

    return-void
.end method

.method protected renderScreen()V
    .locals 10

    .line 67
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->toolTip:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a1340

    .line 69
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 71
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->toolTip:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;->messageCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->toolTip:Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/common/ToolTip;->messagesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;

    .line 75
    iget-object v5, p0, Lcom/ebay/mobile/checkout/xoneor/ToolTipActivity;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d00eb

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a133e

    .line 76
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 77
    iget-object v8, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v6, v8}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 78
    iget-object v8, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v8, :cond_1

    iget-object v8, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    sget-object v9, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->NAV:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne v8, v9, :cond_1

    .line 81
    iget-object v8, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v8, v8, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-virtual {v8}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;->size()I

    move-result v8

    if-ne v8, v2, :cond_0

    const/4 v8, 0x5

    .line 82
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    :cond_0
    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/common/Message;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    if-eqz v3, :cond_2

    const v3, 0x7f0a133f

    .line 91
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    .line 94
    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return-void
.end method
