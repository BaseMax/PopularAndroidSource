.class public final Lc/c/a/n/j/e/a;
.super Ljava/lang/Object;
.source "Download.kt"


# direct methods
.method public static final a(Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;Landroid/content/Context;J)Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;
    .locals 5

    const-string v0, "$this$toVideoDownloadQualityItem"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lc/c/a/c/b/f;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->getQuality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->getSize()J

    move-result-wide v3

    cmp-long p0, p2, v3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, v1, p1, v2, p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static final a(Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toVideoDownloadQualityRowItem"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;->getInfo()Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getRemainingDownloadCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 4
    :goto_0
    invoke-static {p3, p4, p1}, Lc/c/a/c/b/f;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;->getInfo()Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-direct {v1, p2, v2, v3, v4}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityHeader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;->getInfo()Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getVideoDownloadItemModels()Ljava/util/List;

    move-result-object p0

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;

    .line 12
    invoke-static {v1, p1, p3, p4}, Lc/c/a/n/j/e/a;->a(Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;Landroid/content/Context;J)Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
