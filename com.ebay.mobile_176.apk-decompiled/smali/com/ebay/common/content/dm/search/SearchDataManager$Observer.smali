.class public interface abstract Lcom/ebay/common/content/dm/search/SearchDataManager$Observer;
.super Ljava/lang/Object;
.source "SearchDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/SearchDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onSearchCancelled()V
.end method

.method public abstract onSearchComplete(Lcom/ebay/common/net/api/search/SearchResultState;)V
.end method

.method public abstract onSearchContentChanged(Lcom/ebay/nautilus/domain/content/ListContent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/ListContent<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSearchStarted(Lcom/ebay/common/net/api/search/SearchParameters;)V
.end method
