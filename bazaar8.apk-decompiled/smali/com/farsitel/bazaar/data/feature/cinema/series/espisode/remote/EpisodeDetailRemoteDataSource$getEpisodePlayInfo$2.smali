.class public final Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodePlayInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EpisodeDetailRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/h/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/e/d/h/d/a/a/d;",
        "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $seriesId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodePlayInfo$2;->$seriesId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/e/d/h/d/a/a/d;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodePlayInfo$2;->$seriesId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/c/a/e/d/h/d/a/a/d;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/e/d/h/d/a/a/d;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/cinema/series/espisode/remote/EpisodeDetailRemoteDataSource$getEpisodePlayInfo$2;->a(Lc/c/a/e/d/h/d/a/a/d;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    move-result-object p1

    return-object p1
.end method
