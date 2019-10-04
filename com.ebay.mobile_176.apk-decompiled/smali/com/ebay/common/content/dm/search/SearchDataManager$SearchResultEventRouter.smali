.class Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;
.super Ljava/lang/Object;
.source "SearchDataManager.java"

# interfaces
.implements Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/SearchDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultEventRouter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/SearchDataManager;Lcom/ebay/common/net/api/search/SearchResult;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;->this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object p1, p2, Lcom/ebay/common/net/api/search/SearchResult;->resultOwner:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;

    if-eqz p1, :cond_1

    .line 313
    iget-object p1, p2, Lcom/ebay/common/net/api/search/SearchResult;->resultOwner:Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;

    invoke-interface {p1, p0}, Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;->setObserver(Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;)V

    :cond_1
    return-void
.end method

.method private isCurrent()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;->this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;

    invoke-static {v0}, Lcom/ebay/common/content/dm/search/SearchDataManager;->access$000(Lcom/ebay/common/content/dm/search/SearchDataManager;)Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onSearchContentChanged(Lcom/ebay/nautilus/domain/content/ListContent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/ListContent<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;)V"
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;->this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;

    invoke-static {v0}, Lcom/ebay/common/content/dm/search/SearchDataManager;->access$100(Lcom/ebay/common/content/dm/search/SearchDataManager;)Lcom/ebay/common/net/api/search/SearchResultState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/content/dm/search/SearchDataManager$SearchResultEventRouter;->this$0:Lcom/ebay/common/content/dm/search/SearchDataManager;

    invoke-static {v0}, Lcom/ebay/common/content/dm/search/SearchDataManager;->access$200(Lcom/ebay/common/content/dm/search/SearchDataManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;

    invoke-interface {v0, p1}, Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;->onSearchContentChanged(Lcom/ebay/nautilus/domain/content/ListContent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
