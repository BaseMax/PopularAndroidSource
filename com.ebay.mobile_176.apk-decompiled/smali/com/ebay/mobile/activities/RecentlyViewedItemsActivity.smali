.class public Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;
.super Lcom/ebay/mobile/activities/CoreListActivity;
.source "RecentlyViewedItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ebay/nautilus/domain/content/dm/UssContentsDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;,
        Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;
    }
.end annotation


# static fields
.field public static final LOADER_GET_MULTIPLE_ITEMS:I = 0x3


# instance fields
.field private currentPositionY:I

.field private eekInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/EbayItem;",
            ">;"
        }
    .end annotation
.end field

.field private recentlyViewedDataOperations:Lcom/ebay/mobile/recents/RecentlyViewedDataOperations;

.field private sendPageImpressionOnRviContentLoaded:Z

.field private final timer:Lcom/ebay/common/EbayTimer;

.field private trackingInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreListActivity;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->currentPositionY:I

    .line 82
    new-instance v0, Lcom/ebay/common/EbayTimer;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/EbayTimer;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->timer:Lcom/ebay/common/EbayTimer;

    return-void
.end method

.method private isProgressOn()Z
    .locals 1

    const v0, 0x7f0a1170

    .line 410
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onGetMultipleItems(Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;)V
    .locals 8

    .line 325
    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->isError()Z

    move-result v0

    if-nez v0, :cond_4

    .line 327
    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->itemIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 335
    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/EbayItem;

    .line 337
    iget-wide v6, v5, Lcom/ebay/nautilus/domain/data/EbayItem;->id:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_1

    .line 339
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    :cond_2
    iput-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    .line 347
    iget-boolean p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->sendPageImpressionOnRviContentLoaded:Z

    if-eqz p1, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->sendPageImpression()V

    .line 349
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->eekInfoMap:Ljava/util/Map;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;-><init>(Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;Landroid/app/Activity;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    iget p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->currentPositionY:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 352
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->currentPositionY:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_4
    const p1, 0x7f0a1170

    .line 355
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private sendPageImpression()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->sendPageImpressionOnRviContentLoaded:Z

    .line 130
    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 131
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v2

    .line 132
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 133
    invoke-static {v2, v3, v1}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->addXpTrackingToTrackingData(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;Landroid/content/Intent;Z)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 134
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string/jumbo v1, "rvict"

    .line 135
    iget-object v3, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 136
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_1

    .line 126
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->sendPageImpressionOnRviContentLoaded:Z

    :goto_1
    return-void
.end method

.method private setupTimer()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->timer:Lcom/ebay/common/EbayTimer;

    new-instance v1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$3;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$3;-><init>(Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;)V

    invoke-virtual {v0, v1}, Lcom/ebay/common/EbayTimer;->setOnTimerEvent(Lcom/ebay/common/EbayTimer$OnTimerEvent;)V

    return-void
.end method


# virtual methods
.method protected clearAll()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->recentlyViewedDataOperations:Lcom/ebay/mobile/recents/RecentlyViewedDataOperations;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->recentlyViewedDataOperations:Lcom/ebay/mobile/recents/RecentlyViewedDataOperations;

    invoke-interface {v0}, Lcom/ebay/mobile/recents/RecentlyViewedDataOperations;->clearRecentlyViewedItems()V

    :cond_0
    const v0, 0x7f0a1170

    .line 260
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected final formatCurrency(DLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 980
    invoke-static {p3, p1, p2, v0}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Ljava/lang/String;DI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final formatCurrency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 970
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->formatCurrency(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "RecentItemsList"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 165
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->isProgressOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    const/4 v0, 0x1

    .line 170
    new-array v0, v0, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v1, 0x0

    .line 171
    invoke-static {}, Lcom/ebay/nautilus/domain/content/InternalDomainError;->getNoNetworkMessage()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    return-void

    .line 176
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03f0

    if-eq v0, v1, :cond_5

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;

    if-eqz p1, :cond_6

    .line 185
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->currentPositionY:I

    .line 187
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->trackingInfoMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->itemId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->trackingInfoMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->itemId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v3, "MerchItemSelected"

    sget-object v4, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    const-string/jumbo v3, "svcdata"

    .line 193
    invoke-virtual {v2, v3, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    .line 195
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 198
    :cond_2
    new-instance v1, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    iget-wide v2, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->itemId:J

    sget-object v4, Lcom/ebay/common/ConstantsCommon$ItemKind;->RecentlyViewed:Lcom/ebay/common/ConstantsCommon$ItemKind;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;-><init>(JLcom/ebay/common/ConstantsCommon$ItemKind;Landroid/content/Context;)V

    .line 199
    invoke-virtual {v1, v0}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    .line 201
    iget-object v0, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    .line 202
    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageView;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageView;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/image/ImageData;->url:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 203
    :goto_0
    iget-object v3, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->text:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->text:Landroid/widget/TextView;

    .line 204
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v2, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    :cond_4
    iget-object v3, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    iget-object p1, p1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$MyViewCache;->text:Landroid/widget/TextView;

    invoke-static {v1, v3, p1, v0, v2}, Lcom/ebay/mobile/viewitem/util/TransitionHelper;->transitionToViewItem(Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;Lcom/ebay/android/widget/RemoteImageView;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->showDialog(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onContentInvalidated(Lcom/ebay/nautilus/domain/content/dm/UssContentsDataManager;[Lcom/ebay/nautilus/domain/data/uss/ContentSourceEnum;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 90
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d039a

    .line 91
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->setContentView(I)V

    const p1, 0x7f120b28

    .line 93
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "my_ebay_items"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    .line 97
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 99
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    const p1, 0x7f0a1170

    .line 100
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->eekInfoMap:Ljava/util/Map;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$RecentlyViewedItemsAdapter;-><init>(Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;Landroid/app/Activity;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f0a03f0

    .line 105
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const v0, 0x7f0a03f0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120338

    .line 221
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1203b9

    .line 222
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1207ee

    new-instance v2, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$2;-><init>(Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;I)V

    .line 223
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121110

    new-instance v1, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$1;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity$1;-><init>(Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;)V

    .line 231
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 143
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onDestroy()V

    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreListActivity;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->timer:Lcom/ebay/common/EbayTimer;

    invoke-virtual {v0}, Lcom/ebay/common/EbayTimer;->stop()V

    .line 159
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->resumeUi()V

    .line 120
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->sendPageImpression()V

    return-void
.end method

.method public onStreamChanged(Lcom/ebay/nautilus/domain/content/dm/UssContentsDataManager;Lcom/ebay/nautilus/domain/content/Content;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/UssContentsDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/uss/ContentsModel;",
            ">;ZZ)V"
        }
    .end annotation

    .line 281
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const p2, 0x7f0a1170

    .line 284
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    invoke-static {p0, p3, p1}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    return-void

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->itemIds:Ljava/util/List;

    if-nez p1, :cond_1

    .line 291
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->itemIds:Ljava/util/List;

    goto :goto_0

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->itemIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 296
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->eekInfoMap:Ljava/util/Map;

    if-nez p1, :cond_2

    .line 297
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->eekInfoMap:Ljava/util/Map;

    goto :goto_1

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->eekInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 302
    :goto_1
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->trackingInfoMap:Ljava/util/Map;

    if-nez p1, :cond_3

    .line 303
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->trackingInfoMap:Ljava/util/Map;

    goto :goto_2

    .line 305
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->trackingInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 308
    :goto_2
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 p2, 0x3

    new-instance p4, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-static {p0}, Lcom/ebay/mobile/util/EbayApiUtil;->getShoppingApi(Landroid/content/Context;)Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->itemIds:Ljava/util/List;

    new-array p3, p3, [Ljava/lang/String;

    .line 309
    invoke-interface {v2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    const-string v2, "Details"

    invoke-direct {p4, v0, v1, p3, v2}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 308
    invoke-virtual {p1, p2, p4, p3}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    check-cast p2, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;

    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->onGetMultipleItems(Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeUi()V
    .locals 3

    .line 148
    iget v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->currentPositionY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->currentPositionY:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->setupTimer()V

    .line 152
    iget-object v0, p0, Lcom/ebay/mobile/activities/RecentlyViewedItemsActivity;->timer:Lcom/ebay/common/EbayTimer;

    invoke-virtual {v0}, Lcom/ebay/common/EbayTimer;->start()V

    return-void
.end method
