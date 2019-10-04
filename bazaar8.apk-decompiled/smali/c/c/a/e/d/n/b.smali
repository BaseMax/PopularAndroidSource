.class public final Lc/c/a/e/d/n/b;
.super Ljava/lang/Object;
.source "PlayedVideoRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/n/a/h;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/n/a/h;)V
    .locals 1

    const-string v0, "playedVideoLocalDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/n/b;->a:Lc/c/a/e/d/n/a/h;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/b;->a:Lc/c/a/e/d/n/a/h;

    invoke-virtual {v0}, Lc/c/a/e/d/n/a/h;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    sget-object v1, Lc/c/a/e/d/n/a;->a:Lc/c/a/e/d/n/a;

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.map(play\u2026 it.toMovieItem() }\n    }"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;)V
    .locals 1

    const-string v0, "playedVideoModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playedVideoInfoDetails"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/n/b;->a:Lc/c/a/e/d/n/a/h;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/n/a/h;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;)V

    return-void
.end method
