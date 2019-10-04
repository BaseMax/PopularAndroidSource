.class public Lcom/ebay/mobile/activities/RtmItemListActivity;
.super Lcom/ebay/mobile/activities/CoreListActivity;
.source "RtmItemListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListItemAdapter;,
        Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;
    }
.end annotation


# static fields
.field public static final BANNER_URL:Ljava/lang/String; = "banner_url"

.field public static final ITEM_IDS:Ljava/lang/String; = "item_ids"

.field public static final TITLE:Ljava/lang/String; = "title"

.field private static final debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field private static final verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private bannerUrl:Ljava/lang/String;

.field private ebayItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/EbayItem;",
            ">;"
        }
    .end annotation
.end field

.field private ebayItemsLoadingIsPending:Z

.field private itemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextItemIdsEndIndex:I

.field private nextItemIdsStartIndex:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "RtmItemList"

    const-string v2, "Log RTM ItemList events"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 54
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    sget-object v1, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-object v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->tag:Ljava/lang/String;

    const-string v2, "Log extended RTM ItemList events"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreListActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->title:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->bannerUrl:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    .line 77
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItemsLoadingIsPending:Z

    .line 79
    iput v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsStartIndex:I

    .line 80
    iput v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsEndIndex:I

    return-void
.end method

.method private fetchEbayItemsForItemIds(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsStartIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsEndIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 216
    :cond_0
    iput-boolean v2, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItemsLoadingIsPending:Z

    .line 219
    iget v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsStartIndex:I

    iget v3, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsEndIndex:I

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 220
    new-instance v3, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v4

    .line 221
    invoke-static {p0}, Lcom/ebay/mobile/util/EbayApiUtil;->getShoppingApi(Landroid/content/Context;)Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v6, "Details,ShippingCosts"

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/shopping/EbayShoppingApi;[Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    .line 225
    iget v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsEndIndex:I

    iput v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsStartIndex:I

    .line 226
    iget v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsStartIndex:I

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsEndIndex:I

    return-void
.end method

.method private declared-synchronized onGetMultipleItems(Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;)V
    .locals 5

    monitor-enter p0

    .line 234
    :try_start_0
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;

    if-eqz v0, :cond_8

    .line 243
    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->isError()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;->ackCode:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 248
    sget-object p1, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_3

    .line 249
    sget-object p1, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Retrieved ebayItems from network"

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 250
    :cond_3
    iget-object p1, v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;->items:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 251
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItems:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/shopping/GetMultipleItemsResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 252
    :cond_4
    sget-object p1, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_9

    .line 253
    sget-object p1, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "GetMultipleItems didn\'t return any items"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 256
    :cond_5
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_9

    const-string v0, "Unknown"

    .line 259
    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->getException()Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 261
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 264
    :cond_6
    invoke-virtual {p1}, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;->getServiceErrorsAndWarnings()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 265
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 266
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/net/EbayResponseError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_7
    :goto_1
    sget-object p1, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while retrieving ebayItems: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_8
    sget-object p1, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_9

    .line 272
    sget-object p1, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "GetMultipleItems didn\'t return a response"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 275
    :cond_9
    :goto_2
    iget p1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsEndIndex:I

    iget v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsStartIndex:I

    if-le p1, v0, :cond_a

    .line 276
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/RtmItemListActivity;->fetchEbayItemsForItemIds(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 280
    :cond_a
    iput-boolean v2, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItemsLoadingIsPending:Z

    .line 281
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->updateUI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 233
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateUI()V
    .locals 4

    monitor-enter p0

    .line 291
    :try_start_0
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItemsLoadingIsPending:Z

    if-nez v0, :cond_4

    .line 296
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "Loader is done."

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    .line 304
    new-instance v0, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;

    iget-object v2, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->bannerUrl:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v2, v3}, Lcom/ebay/mobile/activities/RtmItemListActivity$RtmItemListArrayAdapter;-><init>(Lcom/ebay/mobile/activities/RtmItemListActivity;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 306
    :cond_2
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_3

    .line 307
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "ebayItems is null"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const v0, 0x7f0a0454

    .line 309
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a1170

    .line 310
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 290
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "RTMItemList"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 85
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d03d0

    .line 90
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->setContentView(I)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "title"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->title:Ljava/lang/String;

    const-string v0, "banner_url"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->bannerUrl:Ljava/lang/String;

    const-string v0, "item_ids"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    const-string v0, "ebay_items"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItems:Ljava/util/ArrayList;

    const-string v0, "ebay_items_loading_is_pending"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItemsLoadingIsPending:Z

    const-string v0, "next_item_ids_start_index"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsStartIndex:I

    const-string v0, "next_item_ids_end_index"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsEndIndex:I

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "title"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->title:Ljava/lang/String;

    const-string v0, "banner_url"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->bannerUrl:Ljava/lang/String;

    const-string v0, "item_ids"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .line 189
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/ebay/mobile/activities/CoreListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 195
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    .line 197
    new-instance p3, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    iget-wide p4, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->id:J

    sget-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Found:Lcom/ebay/common/ConstantsCommon$ItemKind;

    invoke-direct {p3, p4, p5, v0, p0}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;-><init>(JLcom/ebay/common/ConstantsCommon$ItemKind;Landroid/content/Context;)V

    .line 198
    new-instance p4, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    const p4, 0x7f0a07c3

    .line 200
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 201
    instance-of p4, p2, Lcom/ebay/android/widget/RemoteImageView;

    if-eqz p4, :cond_1

    .line 202
    check-cast p2, Lcom/ebay/android/widget/RemoteImageView;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->title:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ebay/mobile/viewitem/util/TransitionHelper;->getViewItemInitialInfo(Lcom/ebay/android/widget/RemoteImageView;Ljava/lang/String;)Lcom/ebay/mobile/viewitem/ViewItemInitialInfo;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setViewItemInitialInfo(Lcom/ebay/mobile/viewitem/ViewItemInitialInfo;)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    .line 204
    :cond_1
    invoke-virtual {p3}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->buildAndStartActivity()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 115
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreListActivity;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItemsLoadingIsPending:Z

    if-nez v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->updateUI()V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f1203bd

    .line 126
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->setTitle(I)V

    const v0, 0x7f0a0454

    .line 127
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a1170

    .line 128
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItems:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching ebay items for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 138
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItems:Ljava/util/ArrayList;

    const/16 v0, 0x14

    .line 139
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsEndIndex:I

    .line 140
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->fetchEbayItemsForItemIds(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 142
    :cond_3
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_5

    .line 143
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "itemIds is null"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_4
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_5

    .line 147
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Already have ebayItems"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 150
    :cond_5
    :goto_0
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmItemListActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 159
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "banner_url"

    .line 161
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->bannerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "item_ids"

    .line 162
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->itemIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "ebay_items"

    .line 163
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "ebay_items_loading_is_pending"

    .line 164
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->ebayItemsLoadingIsPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "next_item_ids_start_index"

    .line 165
    iget v1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsStartIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "next_item_ids_end_index"

    .line 166
    iget v1, p0, Lcom/ebay/mobile/activities/RtmItemListActivity;->nextItemIdsEndIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 5

    .line 172
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/ebay/mobile/activities/RtmItemListActivity;->verboseLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    check-cast p2, Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;

    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/RtmItemListActivity;->onGetMultipleItems(Lcom/ebay/common/net/api/shopping/GetMultipleItemsNetLoader;)V

    :cond_2
    :goto_0
    return-void
.end method
