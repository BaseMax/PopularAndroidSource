.class public Lcom/ebay/common/content/dm/search/SearchDataManager$ConcreteObserver;
.super Ljava/lang/Object;
.source "SearchDataManager.java"

# interfaces
.implements Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/SearchDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcreteObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCancelled()V
    .locals 0

    return-void
.end method

.method public onSearchComplete(Lcom/ebay/common/net/api/search/SearchResultState;)V
    .locals 0

    return-void
.end method

.method public onSearchContentChanged(Lcom/ebay/nautilus/domain/content/ListContent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/ListContent<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSearchStarted(Lcom/ebay/common/net/api/search/SearchParameters;)V
    .locals 0

    return-void
.end method
