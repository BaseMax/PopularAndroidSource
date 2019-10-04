.class public final Lc/c/a/e/d/h/e/b/i;
.super Ljava/lang/Object;
.source "ResponseDto.kt"


# direct methods
.method public static final a(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/e/d/h/b/a/a;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;"
        }
    .end annotation

    const-string v0, "$this$toScreenshotsItem"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lc/c/a/e/d/h/b/a/a;

    .line 6
    invoke-virtual {v2}, Lc/c/a/e/d/h/b/a/a;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lc/c/a/e/d/h/e/b/i;->a(Ljava/lang/Integer;)Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    move-result-object v2

    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;->IMAGE:Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Lc/c/a/e/d/h/b/a/a;

    .line 10
    invoke-virtual {v1}, Lc/c/a/e/d/h/b/a/a;->d()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_4
    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final a(Ljava/lang/Integer;)Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;->VIDEO:Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    goto :goto_2

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;->IMAGE:Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    goto :goto_2

    .line 3
    :cond_3
    :goto_1
    sget-object p0, Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;->VIDEO:Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    :goto_2
    return-object p0
.end method
