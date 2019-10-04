.class public interface abstract Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentQuery;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchResultContentQuery"
.end annotation


# virtual methods
.method public abstract changeLayout(Lcom/ebay/common/net/api/search/answers/wire/PageTemplate$Layout$LayoutType;)Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;
.end method

.method public abstract getData()Lcom/ebay/nautilus/domain/content/ListContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/ListContent<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHigestPageLoaded()I
.end method

.method public abstract getLastResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;
.end method

.method public abstract getPageMeta()Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;
.end method

.method public abstract hasEbayPlusToggle()Z
.end method

.method public abstract isMagEnabled()Z
.end method

.method public abstract loadPage(I)V
.end method

.method public abstract setObserver(Lcom/ebay/common/net/api/search/SearchResult$SearchResultContentObserver;)V
.end method
