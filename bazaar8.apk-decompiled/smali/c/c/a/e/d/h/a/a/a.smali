.class public final Lc/c/a/e/d/h/a/a/a;
.super Ljava/lang/Object;
.source "CastInfoResponseDto.kt"


# instance fields
.field public final background:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "background"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public final rows:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/h/e/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public final textColor:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "textColor"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/Page;
    .locals 9

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/h/a/a/a;->description:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/PageDescriptionItem;

    iget-object v2, p0, Lc/c/a/e/d/h/a/a/a;->description:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/farsitel/bazaar/common/model/page/PageDescriptionItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    iget-object v0, p0, Lc/c/a/e/d/h/a/a/a;->rows:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/e/d/h/e/b/h;

    .line 6
    invoke-virtual {v2}, Lc/c/a/e/d/h/e/b/h;->a()Ljava/lang/String;

    move-result-object v3

    const-string v5, "video"

    invoke-static {v3, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    new-instance v3, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    invoke-virtual {v2}, Lc/c/a/e/d/h/e/b/h;->b()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v2, v1, v5, v6}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;-><init>(Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;ZILh/f/b/f;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_3
    new-instance v8, Lcom/farsitel/bazaar/common/model/Page;

    iget-object v1, p0, Lc/c/a/e/d/h/a/a/a;->title:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lc/c/a/e/d/h/a/a/a;->referrer:Ljava/lang/String;

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/farsitel/bazaar/common/model/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILh/f/b/f;)V

    return-object v8
.end method
