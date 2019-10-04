.class public Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "ShippingMethodActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final EXTRA_LOGISTICS_ID:Ljava/lang/String; = "logisticsId"

.field protected static final EXTRA_LOGISTICS_TYPE:Ljava/lang/String; = "logisticsType"


# instance fields
.field private lineItemId:Ljava/lang/String;

.field private logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

.field private result:Lcom/ebay/mobile/activities/ActivityResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    return-void
.end method

.method private getEnrollLoyaltyAction(Landroid/view/View;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->lineItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getLineItem(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 125
    :cond_1
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->logisticsPlans:Ljava/util/List;

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    .line 128
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->logisticsId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->actions:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 129
    iget-object p1, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->actions:Ljava/util/Map;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ENROLL_LOYALTY_LOGISTICS_PLAN:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static synthetic lambda$showDynamicAlertDialog$0(Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->finish()V

    return-void
.end method

.method private renderScreen()V
    .locals 4

    const v0, 0x7f0a1085

    .line 187
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 188
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 190
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->lineItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getLineItem(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;->getLogisticsType(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;)Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->sectionTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsList;->logisticsPlans:Ljava/util/List;

    .line 200
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;

    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0, v2, v0, v3}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->populateShippingMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->sendCheckoutPageImpression(Ljava/lang/String;)V

    return-void
.end method

.method private startEnrollLoyaltyFlow(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V
    .locals 7

    .line 103
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    const-string v2, ""

    const-string v3, "EPlusSignupTap"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ebay/mobile/activities/ReturnParamsWebViewActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "lessProgress"

    const/4 v1, 0x1

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, p1, v1}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckoutShippingMethodPicker"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 159
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->validateOnActivityResult(IILandroid/content/Intent;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Lcom/ebay/mobile/activities/ActivityResult;

    move-result-object p3

    iput-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    .line 160
    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/16 p1, -0x3e7

    if-eq p2, p1, :cond_1

    .line 171
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez p2, :cond_2

    .line 173
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->setResult(I)V

    .line 174
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a1081

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->getEnrollLoyaltyAction(Landroid/view/View;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->startEnrollLoyaltyFlow(Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    .line 144
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "lineItemId"

    .line 145
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->lineItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "logisticsId"

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_change_shipping_service"

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00e1

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->initContentView(ILandroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "lineItemId"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->lineItemId:Ljava/lang/String;

    const-string v0, "logisticsType"

    const/4 v1, -0x1

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 63
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;->values()[Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    move-result-object v0

    aget-object p1, v0, p1

    :goto_0
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->logisticsType:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsType;

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 78
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p2, :cond_1

    .line 80
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p2, p2, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p3, p3, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p3, v0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x0

    .line 81
    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->stopProgress()V

    return-void

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->renderScreen()V

    return-void
.end method

.method protected populateShippingMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d00e2

    .line 215
    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0eb2

    .line 219
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz p3, :cond_0

    .line 222
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const p3, 0x7f0a1084

    .line 229
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/ebay/android/widget/RemoteImageView;

    .line 230
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 233
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->title:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/ebay/android/widget/RemoteImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 235
    invoke-static {p3, v2}, Lcom/ebay/mobile/util/Util;->setViewVisibility(Landroid/view/View;Z)V

    .line 239
    :cond_1
    iget-object p3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->brandingIcon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->brandingText:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-virtual {p0, p2, p3, v2}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->populateBranding(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 242
    iget-object p3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->deliveryEstimate:Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;

    if-eqz p3, :cond_4

    const v2, 0x7f0a05cd

    .line 245
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 246
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 247
    iget-object v4, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryMessages:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 250
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    const v6, 0x7f0d00c1

    .line 252
    iget-object v7, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->inflater:Landroid/view/LayoutInflater;

    .line 253
    invoke-static {v5, v6, v7}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderEgdMessage(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;ILandroid/view/LayoutInflater;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v5, 0x7f0a05ce

    .line 255
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 256
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0a05cb

    .line 258
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 259
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 264
    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 266
    :cond_4
    :goto_2
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->cutoffTime:Lcom/ebay/nautilus/domain/data/experience/checkout/details/CutoffTime;

    const v2, 0x7f0a105a

    .line 268
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 271
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CutoffTime;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v2, v1, v3}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    .line 272
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const v1, 0x7f0a051c

    .line 276
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 279
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->text:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    if-eqz p3, :cond_6

    .line 280
    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->accessibilityText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 281
    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->accessibilityText:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 283
    :cond_6
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    const p3, 0x7f0a051d

    .line 287
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 288
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->loyaltyServiceType:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/LoyaltyServiceType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/LoyaltyServiceType;->EBAY_PLUS:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/LoyaltyServiceType;

    if-eq v1, v2, :cond_8

    .line 290
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->text:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 294
    :cond_8
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    const p3, 0x7f0a051b

    .line 297
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 298
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    if-eqz v1, :cond_9

    .line 300
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->amount:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplayValue;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-static {p0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 304
    :cond_9
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    const p3, 0x7f0a1093

    .line 307
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 308
    iget-boolean v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->selected:Z

    invoke-virtual {p3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 309
    iget-boolean p3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->selected:Z

    if-eqz p3, :cond_a

    const p3, 0x7f12012a

    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    :cond_a
    const p3, 0x7f120127

    .line 310
    invoke-virtual {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 309
    :goto_6
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/LogisticsPlan;->logisticsId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method protected showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 98
    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$ShippingMethodActivity$4rXQdOAqCAgPmBQYGGiITVNjY8g;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$ShippingMethodActivity$4rXQdOAqCAgPmBQYGGiITVNjY8g;-><init>(Lcom/ebay/mobile/checkout/xoneor/ShippingMethodActivity;)V

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
