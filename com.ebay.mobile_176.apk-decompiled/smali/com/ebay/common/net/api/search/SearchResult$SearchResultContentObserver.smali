.class public interface abstract Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchResultContentObserver"
.end annotation


# virtual methods
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
