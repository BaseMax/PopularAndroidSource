.class Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;
.super Ljava/lang/Object;
.source "SearchDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/SearchDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultLoadTaskParams"
.end annotation


# instance fields
.field public dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

.field public layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

.field public ownerObserver:Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;

.field public searchImageHolder:Lcom/ebay/common/net/api/search/SearchImageHolder;

.field public searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

.field public searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

.field final synthetic this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;Lcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/common/net/api/search/SearchImageHolder;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    invoke-virtual {p2}, Lcom/ebay/common/net/api/search/SearchParameters;->clone()Lcom/ebay/common/net/api/search/SearchParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 362
    iput-object p3, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->layoutType:Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;

    .line 363
    iput-object p4, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->dcs:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    .line 364
    iput-object p5, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->ownerObserver:Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;

    .line 365
    iput-object p6, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchTracker:Lcom/ebay/common/net/api/search/ISearchEventTracker;

    .line 366
    iput-object p7, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultLoadTaskParams;->searchImageHolder:Lcom/ebay/common/net/api/search/SearchImageHolder;

    return-void
.end method
