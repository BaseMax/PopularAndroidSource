.class public final Lc/c/a/e/d/n/a/h;
.super Ljava/lang/Object;
.source "PlayedVideoLocalDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/n/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/n/a/a;)V
    .locals 1

    const-string v0, "playedVideoDao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/n/a/h;->a:Lc/c/a/e/d/n/a/a;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lc/c/a/e/d/n/a/f;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/n/a/h;->a:Lc/c/a/e/d/n/a/a;

    invoke-interface {v0}, Lc/c/a/e/d/n/a/a;->getAll()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;)V
    .locals 2

    const-string v0, "playedVideoModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playedVideoInfoDetails"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/n/a/h;->a:Lc/c/a/e/d/n/a/a;

    sget-object v1, Lc/c/a/e/d/n/a/f;->a:Lc/c/a/e/d/n/a/f$a;

    invoke-virtual {v1, p1, p2}, Lc/c/a/e/d/n/a/f$a;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;)Lc/c/a/e/d/n/a/f;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/c/a/e/d/n/a/a;->a(Lc/c/a/e/d/n/a/f;)V

    return-void
.end method
