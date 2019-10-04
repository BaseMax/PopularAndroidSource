.class public final Lcom/farsitel/bazaar/data/feature/seasonepisode/remote/SeasonEpisodeRemoteDataSource$getSeasonEpisodeList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SeasonEpisodeRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/t/a/a;->a(IILjava/lang/String;ILh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/e/d/t/a/d;",
        "Lcom/farsitel/bazaar/common/model/Page;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/farsitel/bazaar/data/feature/seasonepisode/remote/SeasonEpisodeRemoteDataSource$getSeasonEpisodeList$2;->$offset:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/e/d/t/a/d;)Lcom/farsitel/bazaar/common/model/Page;
    .locals 9

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lc/c/a/e/d/t/a/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/c/a/e/d/t/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/farsitel/bazaar/data/feature/seasonepisode/remote/SeasonEpisodeRemoteDataSource$getSeasonEpisodeList$2;->$offset:I

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/PageDescriptionItem;

    invoke-virtual {p1}, Lc/c/a/e/d/t/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/common/model/page/PageDescriptionItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    invoke-virtual {p1}, Lc/c/a/e/d/t/a/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;

    .line 7
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->toPageTypeItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Lcom/farsitel/bazaar/common/model/Page;

    invoke-virtual {p1}, Lc/c/a/e/d/t/a/d;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x16

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/common/model/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILh/f/b/f;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/e/d/t/a/d;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/seasonepisode/remote/SeasonEpisodeRemoteDataSource$getSeasonEpisodeList$2;->a(Lc/c/a/e/d/t/a/d;)Lcom/farsitel/bazaar/common/model/Page;

    move-result-object p1

    return-object p1
.end method
