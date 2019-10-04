.class public Lcom/ebay/common/UserCacheChangeWatchNetLoader;
.super Ljava/lang/Object;
.source "UserCacheChangeWatchNetLoader.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dm:Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final ebayItemId:J

.field public errorToDisplay:Ljava/lang/String;

.field private iafTokenInvalid:Z

.field private final id:I

.field private final item:Lcom/ebay/mobile/Item;

.field private final l:Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;

.field private final nameValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

.field private final variationId:Ljava/lang/String;

.field private final watch:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/Activity;JLjava/lang/String;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">(I",
            "Ljava/lang/String;",
            "TA;J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->iafTokenInvalid:Z

    .line 37
    sget-object v0, Lcom/ebay/nautilus/kernel/content/ResultStatus;->SUCCESS:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    iput-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    .line 58
    iput p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->id:I

    .line 59
    move-object p1, p3

    check-cast p1, Lcom/ebay/nautilus/shell/app/FwContext;

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/FwContext;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 60
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    new-instance v0, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager$KeyParams;

    invoke-direct {v0, p2}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager$KeyParams;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/content/DataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    iput-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    .line 61
    iput-object p3, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->activity:Landroid/app/Activity;

    .line 62
    instance-of p1, p3, Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->l:Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;

    .line 63
    iput-object p2, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    .line 64
    iput-object p6, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->variationId:Ljava/lang/String;

    .line 65
    iput-boolean p7, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->watch:Z

    .line 66
    iput-object p8, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->nameValueList:Ljava/util/List;

    .line 67
    iput-wide p4, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->ebayItemId:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/Activity;Lcom/ebay/mobile/Item;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">(I",
            "Ljava/lang/String;",
            "TA;",
            "Lcom/ebay/mobile/Item;",
            "Z",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->iafTokenInvalid:Z

    .line 37
    sget-object v0, Lcom/ebay/nautilus/kernel/content/ResultStatus;->SUCCESS:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    iput-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    .line 43
    iput p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->id:I

    .line 44
    move-object p1, p3

    check-cast p1, Lcom/ebay/nautilus/shell/app/FwContext;

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/FwContext;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 45
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    new-instance v0, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager$KeyParams;

    invoke-direct {v0, p2}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager$KeyParams;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ebay/nautilus/domain/content/DataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    iput-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    .line 46
    iput-object p3, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->activity:Landroid/app/Activity;

    .line 47
    instance-of p1, p3, Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->l:Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;

    .line 48
    iput-object p4, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    .line 49
    iput-boolean p5, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->watch:Z

    .line 50
    iput-object p6, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->nameValueList:Ljava/util/List;

    if-eqz p4, :cond_1

    .line 51
    invoke-virtual {p4, p6}, Lcom/ebay/mobile/Item;->getVariationId(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->variationId:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 52
    iput-wide p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->ebayItemId:J

    return-void
.end method

.method private handleResult(Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "[",
            "Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;->unregisterObserver(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    .line 86
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/common/util/EbayErrorUtil;->userNotLoggedIn(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iput-boolean v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->iafTokenInvalid:Z

    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstMessage()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getSafeLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->errorToDisplay:Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->activity:Landroid/app/Activity;

    instance-of p1, p1, Lcom/ebay/mobile/viewitem/ItemViewActivity;

    if-eqz p1, :cond_4

    .line 102
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    iget v1, p1, Lcom/ebay/mobile/Item;->watchCount:I

    iget-boolean v2, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->watch:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    iget v0, v0, Lcom/ebay/mobile/Item;->watchCount:I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    add-int/2addr v1, v0

    iput v1, p1, Lcom/ebay/mobile/Item;->watchCount:I

    .line 105
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    invoke-static {p1, v0}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->refreshOtherActivities(Landroid/app/Activity;Lcom/ebay/mobile/Item;)V

    .line 107
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->l:Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;

    if-eqz p1, :cond_5

    .line 108
    iget-object p1, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->l:Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;

    iget v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->id:I

    invoke-interface {p1, v0, p0}, Lcom/ebay/common/UserCacheChangeWatchNetLoader$OnChangeWatchCompleteListener;->onChangeWatchComplete(ILcom/ebay/common/UserCacheChangeWatchNetLoader;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .line 72
    iget-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;->loadWatchList()V

    .line 74
    iget-boolean v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->watch:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    new-array v2, v2, [Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;

    new-instance v3, Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;

    iget-object v4, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    iget-wide v4, v4, Lcom/ebay/mobile/Item;->id:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->ebayItemId:J

    :goto_0
    iget-object v6, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->variationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->nameValueList:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;-><init>(JLjava/lang/String;Ljava/util/List;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;->addToWatchList(Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager$Observer;[Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;)V

    goto :goto_2

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->dm:Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;

    new-array v2, v2, [Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;

    new-instance v3, Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;

    iget-object v4, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->item:Lcom/ebay/mobile/Item;

    iget-wide v4, v4, Lcom/ebay/mobile/Item;->id:J

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->ebayItemId:J

    :goto_1
    iget-object v6, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->variationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->nameValueList:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;-><init>(JLjava/lang/String;Ljava/util/List;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;->removeFromWatchList(Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager$Observer;[Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;)V

    :goto_2
    return-void
.end method

.method public isError()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->resultStatus:Lcom/ebay/nautilus/kernel/content/ResultStatus;

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v0

    return v0
.end method

.method public isIafTokenInvalid()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->iafTokenInvalid:Z

    return v0
.end method

.method public onAddToWatchListComplete(Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "[",
            "Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p2}, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->handleResult(Lcom/ebay/nautilus/domain/content/Content;)V

    return-void
.end method

.method public onRemoveFromWatchListComplete(Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "[",
            "Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p2}, Lcom/ebay/common/UserCacheChangeWatchNetLoader;->handleResult(Lcom/ebay/nautilus/domain/content/Content;)V

    return-void
.end method

.method public onWatchingListChanged(Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/DatedContent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/MyEbayWatchingDataManager;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/content/DatedContent<",
            "Lcom/ebay/nautilus/domain/data/UserDefinedList;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
