.class public Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "PurchaseCompleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_BOPIS_CHECKOUT:Ljava/lang/String; = "bopis_in_cart"

.field public static final EXTRA_BUY_WITH_SYSTEM_RETRY:Ljava/lang/String; = "buy_with_system_retry"

.field public static final EXTRA_CHARITY_DONATION:Ljava/lang/String; = "charity_donation"

.field public static final EXTRA_CHARITY_ID:Ljava/lang/String; = "charity_id"

.field public static final EXTRA_CHARITY_NAME:Ljava/lang/String; = "charity_name"

.field public static final EXTRA_EBN_CHECKOUT:Ljava/lang/String; = "ebn_in_cart"

.field public static final EXTRA_MORE_CHECKOUTABLE_ITEMS_IN_CART:Ljava/lang/String; = "checkoutable_items_in_cart"

.field public static final EXTRA_NOT_ALL_ITEMS_PURCHASED:Ljava/lang/String; = "not_all_items_purchased"

.field public static final EXTRA_PURCHASED_ITEM_IDS:Ljava/lang/String; = "purchased_item_ids"

.field public static final EXTRA_SHOPPING_CART_CHECKOUT:Ljava/lang/String; = "shopping_cart_checkout"

.field public static final MIMS_SCOPE_XFER:Ljava/lang/String; = "MimsScope"


# instance fields
.field private bankDetailsBuilder:Ljava/lang/StringBuilder;

.field protected final dialogManager:Lcom/ebay/common/view/util/DialogManager;

.field private emailSubject:Ljava/lang/String;

.field protected layoutInflater:Landroid/view/LayoutInflater;

.field private successConfirmation:Landroid/widget/TextView;

.field private successSubtitle:Landroid/widget/TextView;

.field private successTitle:Landroid/widget/TextView;

.field private surveyContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/net/api/experience/inflowseeksurvey/InflowSeekSurveyRequestParams$Context;",
            ">;"
        }
    .end annotation
.end field

.field private surveyKey:Ljava/lang/String;

.field private surveyModuleLinkTitle:Ljava/lang/String;

.field private surveyModuleTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    .line 84
    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    .line 91
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->emailSubject:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyModuleTitle:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyModuleLinkTitle:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyKey:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyContext:Ljava/util/ArrayList;

    return-void
.end method

.method private displayAndLoadGoToCartButton(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;)V
    .locals 2

    const v0, 0x7f0a149d

    .line 208
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a149e

    .line 209
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    .line 215
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->GO_TO_SHOPCART:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 218
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_0
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->accessibilityText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 221
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->accessibilityText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private hasMoreItemsInCartAccordingToSuccessModule(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    .line 235
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->GO_TO_SHOPCART:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    iget-boolean p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->enabled:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private renderBankTransferDetails(Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 584
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->CONTACT_SELLER:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 587
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;->title:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->renderContactSeller(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V

    return-void

    :cond_1
    const v0, 0x7f0a0192

    .line 591
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 592
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0191

    .line 594
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 595
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f0a0197

    .line 597
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 598
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0195

    .line 600
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 601
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;->hasTransferMessages()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;->transferMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 605
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->layoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d00ee

    .line 606
    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a0193

    .line 607
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 608
    invoke-static {p0, v3}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    const v0, 0x7f0a0196

    .line 614
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 615
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;->bankDetails:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 617
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;->title:Ljava/lang/String;

    iput-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->emailSubject:Ljava/lang/String;

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    .line 620
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;->bankDetails:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankDetailsAttribute;

    .line 622
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00e6

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0a018e

    .line 624
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a018f

    .line 625
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 626
    iget-object v6, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankDetailsAttribute;->label:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v6, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankDetailsAttribute;->value:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v6, :cond_4

    .line 629
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankDetailsAttribute;->value:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, v2}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 631
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const p1, 0x7f0a05d0

    .line 639
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 640
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 641
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0472

    .line 642
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 643
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_6
    const/16 p1, 0x8

    .line 647
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private renderContactSeller(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;)V
    .locals 1

    const v0, 0x7f0a0449

    .line 653
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 654
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 655
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0448

    .line 658
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 659
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 660
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 661
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private renderLoyalty(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a098b

    .line 674
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 676
    instance-of v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;

    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;->rewards:Ljava/util/List;

    .line 677
    invoke-static {v2}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 679
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v1, v0, p1, p0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderLoyaltyContent(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/SessionRewardsModule;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;)V

    return-void

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 684
    invoke-static {p1, v0, v1, p0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getRenderedLoyaltyContent(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 686
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;)V
    .locals 9

    .line 451
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;->moduleTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;->successDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;

    const/16 v1, 0x8

    if-eqz v0, :cond_d

    .line 456
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successTitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->moduleTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successSubtitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->moduleTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    :goto_0
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->deliveryEstimate:Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 465
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryMessages:Ljava/util/List;

    if-eqz v4, :cond_3

    const v4, 0x7f0a05cd

    .line 467
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 468
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 469
    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->estimatedDeliveryMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    const v7, 0x7f0d00c1

    .line 471
    iget-object v8, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-static {v6, v7, v8}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderEgdMessage(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;ILandroid/view/LayoutInflater;)Landroid/widget/RelativeLayout;

    move-result-object v6

    const v7, 0x7f0a05cb

    .line 473
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_1

    .line 474
    invoke-virtual {v7}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 475
    invoke-virtual {v7, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    :cond_1
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 478
    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    const v4, 0x7f0a03d3

    .line 484
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 486
    invoke-static {p0, v2, v3}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getLocalizedDeliveryEstimate(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;Z)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/DeliveryEstimate;->accessibilityText:Ljava/lang/String;

    .line 485
    invoke-static {v4, v5, v2, v1}, Lcom/ebay/mobile/util/Util;->updateFromText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 491
    :cond_4
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->pickupText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 492
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successConfirmation:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->pickupText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 493
    :cond_5
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->emailConfirmationText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 494
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successConfirmation:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->emailConfirmationText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    const v2, 0x7f0a0023

    .line 497
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 498
    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->paypalAcquisitionDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/success/AcquisitionDetails;

    if-eqz v4, :cond_a

    const v1, 0x7f0a0022

    .line 501
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ebay/android/widget/RemoteImageView;

    .line 502
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/success/AcquisitionDetails;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    if-eqz v5, :cond_7

    .line 503
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/success/AcquisitionDetails;->image:Lcom/ebay/nautilus/domain/data/experience/type/base/Image;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/type/base/Image;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    goto :goto_3

    :cond_7
    const v5, 0x7f0803e8

    .line 505
    invoke-virtual {v1, v5}, Lcom/ebay/android/widget/RemoteImageView;->setImageResource(I)V

    .line 507
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v1, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/success/AcquisitionDetails;->message:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v1, :cond_8

    const v2, 0x7f0a0025

    .line 512
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 513
    invoke-static {p0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 514
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const v1, 0x7f0a0024

    .line 517
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 518
    iget-object v2, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/success/AcquisitionDetails;->actions:Ljava/util/Map;

    if-eqz v2, :cond_9

    iget-object v2, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/success/AcquisitionDetails;->actions:Ljava/util/Map;

    sget-object v4, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->VIEW_PAYPAL_ACQUISITION:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    .line 519
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_b

    .line 520
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v4, :cond_b

    iget-boolean v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->enabled:Z

    if-eqz v4, :cond_b

    .line 522
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 524
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->accessibilityText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 529
    :cond_a
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    :goto_5
    const v1, 0x7f0a03d2

    .line 532
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 533
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->digitalGiftText:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 535
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->digitalGiftText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :cond_c
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->bankTransferDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;

    invoke-direct {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->renderBankTransferDetails(Lcom/ebay/nautilus/domain/data/experience/checkout/success/BankTransferDetails;)V

    .line 541
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessDetails;->taxDisclaimerMessages:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->renderTaxDisclaimerMessages(Ljava/util/List;)V

    goto :goto_6

    .line 544
    :cond_d
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successConfirmation:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    :goto_6
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;->getRewardsModule()Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->renderLoyalty(Lcom/ebay/nautilus/domain/data/experience/checkout/rewards/Rewards;)V

    .line 547
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    .line 548
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyKey:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyContext:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyModuleTitle:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyModuleLinkTitle:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->seekSurvey:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 549
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyModuleTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyModuleLinkTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyContext:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->renderSurvey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_e
    return-void
.end method

.method private renderTaxDisclaimerMessages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 554
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0a125f

    .line 557
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 558
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a125e

    .line 560
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 561
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 563
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00e8

    .line 564
    invoke-virtual {v3, v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 565
    invoke-static {v3, v2}, Lcom/ebay/mobile/util/ExperienceUtil;->updateFromTextualDisplay(Landroid/widget/TextView;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 566
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->WEBVIEW:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne v4, v5, :cond_1

    const v4, 0x7f0a123f

    .line 568
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 569
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private returnToMyEbay()V
    .locals 2

    .line 433
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "purchase_confirmation_back_button"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->APPTENTIVE_EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 434
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 437
    invoke-static {p0}, Lcom/ebay/mobile/activities/MyEbayLandingActivity;->getPurchasesActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 438
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->finish()V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "PaymentSent"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 427
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->returnToMyEbay()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    .line 306
    :sswitch_0
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v0, "purchase_confirmation_back_button"

    invoke-direct {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/analytics/TrackingType;->APPTENTIVE_EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 307
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 310
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/mobile/shoppingcart/util/ShoppingCartUtil;->getShoppingCartIntent(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 311
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 313
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->finish()V

    goto/16 :goto_5

    .line 290
    :sswitch_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 291
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/DcsString;->BopisTermsLink:Lcom/ebay/mobile/dcs/DcsString;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropString;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v3, 0x7f1210ed

    if-nez v1, :cond_0

    const v1, 0x7f1205b4

    .line 294
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 296
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 294
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f1210ee

    .line 301
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 302
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    const v1, 0x7f1210ec

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v5}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :sswitch_2
    const v0, 0x7f0a123f

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getWebViewIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 369
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 377
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    const-string v1, "mailto"

    const-string v2, ""

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.SUBJECT"

    .line 379
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->emailSubject:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.TEXT"

    .line 381
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    const v0, 0x7f120de3

    .line 383
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1207f1

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 386
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 374
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->startWebViewActivity(Landroid/view/View;)V

    goto/16 :goto_5

    .line 389
    :sswitch_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string v0, "clipboard"

    .line 391
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 392
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->emailSubject:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->bankDetailsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    if-eqz v0, :cond_9

    .line 395
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 396
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f12029b

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 398
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/16 :goto_5

    .line 403
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12029d

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 329
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    if-eqz p1, :cond_9

    .line 333
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 336
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v6

    .line 337
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v7, "requested"

    .line 338
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_4

    .line 339
    iget-object v6, v6, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v6, ""

    :goto_1
    :try_start_0
    const-string v8, "iid"

    .line 343
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v0, v3

    :goto_2
    const v3, 0x7f1200a6

    .line 350
    new-array v1, v1, [Ljava/lang/Object;

    if-nez v7, :cond_5

    const-string v8, ""

    goto :goto_3

    :cond_5
    move-object v8, v7

    :goto_3
    aput-object v8, v1, v5

    if-nez v0, :cond_6

    const-string v8, ""

    goto :goto_4

    .line 352
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    aput-object v8, v1, v4

    aput-object v6, v1, v2

    .line 350
    invoke-virtual {p0, v3, v1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 355
    new-instance v2, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    if-nez v7, :cond_7

    const v3, 0x7f1206fd

    .line 357
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_7
    invoke-direct {v2, v0, v7, v1, v5}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 359
    invoke-static {p0, v2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->startActivity(Landroid/app/Activity;Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V

    .line 361
    :cond_8
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_5

    .line 316
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 319
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 320
    invoke-static {}, Lcom/ebay/mobile/deeplinking/DeepLinkChecker;->getStringForHomepageUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "return_url"

    .line 321
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "cancel_url"

    .line 322
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 324
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 325
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0024 -> :sswitch_7
        0x7f0a0448 -> :sswitch_6
        0x7f0a0472 -> :sswitch_5
        0x7f0a05cb -> :sswitch_4
        0x7f0a05d0 -> :sswitch_3
        0x7f0a098d -> :sswitch_2
        0x7f0a1260 -> :sswitch_4
        0x7f0a149c -> :sswitch_1
        0x7f0a149e -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 100
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00ba

    .line 102
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->showCloseButton()V

    const-string p1, "layout_inflater"

    .line 106
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->layoutInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0a149c

    .line 108
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 109
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "buy_with_system_retry"

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "not_all_items_purchased"

    .line 113
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "bopis_in_cart"

    .line 114
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "ebn_in_cart"

    .line 115
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "purchased_item_ids"

    .line 116
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    const-string/jumbo v6, "survey_module_title"

    .line 117
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyModuleTitle:Ljava/lang/String;

    const-string/jumbo v6, "survey_module_link_title"

    .line 118
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyModuleLinkTitle:Ljava/lang/String;

    const-string/jumbo v6, "survey_key"

    .line 119
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyKey:Ljava/lang/String;

    const-string v6, "context_list"

    .line 120
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->surveyContext:Ljava/util/ArrayList;

    const v6, 0x7f0a03d5

    .line 122
    invoke-virtual {p0, v6}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successTitle:Landroid/widget/TextView;

    const v6, 0x7f0a03d4

    .line 123
    invoke-virtual {p0, v6}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successSubtitle:Landroid/widget/TextView;

    const v6, 0x7f0a03d1

    .line 124
    invoke-virtual {p0, v6}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successConfirmation:Landroid/widget/TextView;

    const v6, 0x7f0a149a

    .line 125
    invoke-virtual {p0, v6}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a0466

    .line 129
    invoke-virtual {p0, v7}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-static {}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->getCheckoutExperienceIntentMapper()Lcom/ebay/nautilus/kernel/datamapping/IntentMapper;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-class v11, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;

    invoke-interface {v8, v10, v11}, Lcom/ebay/nautilus/kernel/datamapping/IntentMapper;->readIntentJson(Landroid/content/Intent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    .line 137
    invoke-direct {p0, v8}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->renderScreen(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;)V

    goto/16 :goto_0

    :cond_0
    const v11, 0x7f1210d6

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successConfirmation:Landroid/widget/TextView;

    const v2, 0x7f1210e6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 145
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successSubtitle:Landroid/widget/TextView;

    const v2, 0x7f1210ea

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successConfirmation:Landroid/widget/TextView;

    const v2, 0x7f1210d7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 151
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successConfirmation:Landroid/widget/TextView;

    const v2, 0x7f1210f0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 156
    invoke-virtual {p0, v7}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successConfirmation:Landroid/widget/TextView;

    const v2, 0x7f1210ef

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->successConfirmation:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 164
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "charity_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const v2, 0x7f0a03d0

    .line 167
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1210eb

    .line 168
    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_0
    const v0, 0x7f0a09e7

    .line 173
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a004d

    .line 174
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "checkoutable_items_in_cart"

    .line 177
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_7

    .line 179
    invoke-direct {p0, v8}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->hasMoreItemsInCartAccordingToSuccessModule(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :cond_7
    :goto_1
    if-eqz v10, :cond_8

    .line 183
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual {p0, v7}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-direct {p0, v8}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->displayAndLoadGoToCartButton(Lcom/ebay/nautilus/domain/data/experience/checkout/success/SuccessModule;)V

    :cond_8
    if-nez v10, :cond_a

    .line 193
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    sget-object v0, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->XOS_100664:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->isPlacementEnabled(Lcom/ebay/nautilus/kernel/content/EbayContext;J)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 195
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v7, "ADS_XO_COMPLETE"

    const v8, 0x7f0a004d

    .line 196
    sget-object p1, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->XOS_100664:Ljava/lang/Long;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v6, p0

    move-object v11, v5

    .line 196
    invoke-static/range {v6 .. v11}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->attach(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;IJ[J)Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    .line 200
    :cond_9
    invoke-static {p0, v5}, Lcom/ebay/mobile/merch/MerchandiseFragment;->createMerchFragmentForXOSuccess(Lcom/ebay/mobile/activities/CoreActivity;[J)V

    .line 203
    :cond_a
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->initDataManagers()V

    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 3

    .line 254
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 257
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "shopping_cart_checkout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager$KeyParams;

    const/4 v1, 0x0

    .line 260
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager;

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager;->getCartAsync(Z)V

    :cond_0
    return-void
.end method

.method public onMenuHomeClicked(Landroid/view/MenuItem;)Z
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->returnToMyEbay()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->sendPurchaseCompleteTracking(Landroid/content/Intent;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 281
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 268
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onResume()V

    .line 269
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 272
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "MimsScope"

    .line 274
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/domain/analytics/mts/MimsUtil;->releaseScopedProvider(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method protected startWebViewActivity(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a123f

    .line 416
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getWebViewIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.TITLE"

    .line 419
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PurchaseCompleteActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
