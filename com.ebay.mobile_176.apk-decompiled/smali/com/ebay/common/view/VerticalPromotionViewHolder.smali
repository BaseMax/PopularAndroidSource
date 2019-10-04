.class public Lcom/ebay/common/view/VerticalPromotionViewHolder;
.super Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;
.source "VerticalPromotionViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder<",
        "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

.field private final logoImage:Lcom/ebay/android/widget/RemoteImageView;

.field private final owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

.field private final primeImage:Lcom/ebay/android/widget/RemoteImageView;

.field private final primeText:Landroid/widget/TextView;

.field private final promotedLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p2, v0}, Lcom/ebay/nautilus/shell/widget/CompositeArrayRecyclerAdapter$ItemViewHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    .line 42
    iput-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    const p1, 0x7f0a1465

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageView;

    iput-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->primeImage:Lcom/ebay/android/widget/RemoteImageView;

    const p1, 0x7f0a13f3

    .line 45
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->primeText:Landroid/widget/TextView;

    const p1, 0x7f0a1466

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageView;

    iput-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->logoImage:Lcom/ebay/android/widget/RemoteImageView;

    const p1, 0x7f0a0cc3

    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->promotedLabel:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private sendTracking()V
    .locals 3

    .line 163
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "VerticalPromotionImp"

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 164
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string/jumbo v1, "svcdata"

    iget-object v2, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->impressionTracking:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method


# virtual methods
.method protected onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 58
    :cond_0
    check-cast p2, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iput-object p2, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    .line 60
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->primeImage:Lcom/ebay/android/widget/RemoteImageView;

    new-instance p2, Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget-object v0, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->primeImage:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/ebay/nautilus/domain/data/image/ImageData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 61
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->primeText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object p2, p2, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->primeText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->promotedLabel:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object p2, p2, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->eventType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->brandImage:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->logoImage:Lcom/ebay/android/widget/RemoteImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->logoImage:Lcom/ebay/android/widget/RemoteImageView;

    new-instance p2, Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget-object v0, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->brandImage:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/ebay/nautilus/domain/data/image/ImageData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->logoImage:Lcom/ebay/android/widget/RemoteImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/ebay/android/widget/RemoteImageView;->setVisibility(I)V

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-boolean p1, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->trackingSent:Z

    if-nez p1, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/ebay/common/view/VerticalPromotionViewHolder;->sendTracking()V

    .line 77
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->trackingSent:Z

    :cond_2
    return-void
.end method

.method protected bridge synthetic onBindView(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/view/VerticalPromotionViewHolder;->onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 85
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v0, "VerticalPromotionClick"

    invoke-direct {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 86
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    const-string/jumbo v0, "svcdata"

    iget-object v1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v1, v1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->clickTracking:Ljava/lang/String;

    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 91
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->trackingList:Ljava/util/List;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->NAVSRC:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    const/4 v1, 0x0

    .line 92
    invoke-static {p1, v1, v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;->getTracking(Ljava/util/List;Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;

    move-result-object p1

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->NAVSRC:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    .line 91
    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->convertTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->trackingList:Ljava/util/List;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->NAV:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    invoke-static {p1, v1, v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;->getTracking(Ljava/util/List;Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;

    move-result-object v10

    .line 99
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->deeplink:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v10, :cond_1

    .line 105
    iget-object v2, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v3, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v6, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventDisplayName:Ljava/lang/String;

    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v7, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventImageUrl:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v9, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->landingPageUrl:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lcom/ebay/mobile/events/EventItemsActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;)V

    goto/16 :goto_3

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    instance-of p1, p1, Lcom/ebay/mobile/search/SearchResultFragmentActivity;

    if-eqz p1, :cond_2

    .line 114
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    iget-object v0, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    check-cast v0, Lcom/ebay/mobile/search/SearchResultFragmentActivity;

    invoke-virtual {v0}, Lcom/ebay/mobile/search/SearchResultFragmentActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "merchantpromotion"

    invoke-direct {p1, v0, v2, v1}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, p1

    goto :goto_0

    :cond_2
    move-object v11, v1

    .line 118
    :goto_0
    iget-object v3, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v4, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v7, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventDisplayName:Ljava/lang/String;

    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v8, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->rppEventImageUrl:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v10, p1, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->landingPageUrl:Ljava/lang/String;

    invoke-static/range {v3 .. v11}, Lcom/ebay/mobile/events/EventItemsActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    goto :goto_3

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    .line 132
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->answerItem:Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/idealmodel/LandingPageAnswerSrpListItem;->deeplink:Ljava/lang/String;

    .line 133
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "inappad"

    .line 132
    invoke-static {p1, v0, v2, v1, v1}, Lcom/ebay/mobile/activities/LinkHandlerActivity;->getDeepLinkIntent(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    if-eqz v10, :cond_5

    .line 143
    invoke-static {v10, p1}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->addXpTrackingToIntent(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_2

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    instance-of v0, v0, Lcom/ebay/mobile/search/SearchResultFragmentActivity;

    if-eqz v0, :cond_6

    .line 151
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    iget-object v2, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    check-cast v2, Lcom/ebay/mobile/search/SearchResultFragmentActivity;

    invoke-virtual {v2}, Lcom/ebay/mobile/search/SearchResultFragmentActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "merchantpromotion"

    invoke-direct {v0, v2, v3, v1}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    :goto_1
    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 154
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    :goto_2
    iget-object v0, p0, Lcom/ebay/common/view/VerticalPromotionViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void
.end method
