.class public final Lc/c/a/e/d/h/e/a/a/k;
.super Ljava/lang/Object;
.source "VideoDownloadLocalDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/e/a/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/a/a;)V
    .locals 1

    const-string v0, "downloadDao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/e/a/a/k;->a:Lc/c/a/e/d/h/e/a/a/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/a/k;->a:Lc/c/a/e/d/h/e/a/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/h/e/a/a/a;->c(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    sget-object v0, Lc/c/a/e/d/h/e/a/a/j;->a:Lc/c/a/e/d/h/e/a/a/j;

    invoke-static {p1, v0}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations.map(down\u2026dedItem != null\n        }"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    iget-object p2, p0, Lc/c/a/e/d/h/e/a/a/k;->a:Lc/c/a/e/d/h/e/a/a/a;

    invoke-static {p1}, Lc/c/a/e/f/g;->a(Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;)Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;

    move-result-object p1

    invoke-interface {p2, p1}, Lc/c/a/e/d/h/e/a/a/a;->a(Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;)V

    .line 5
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/k;->a:Lc/c/a/e/d/h/e/a/a/a;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lc/c/a/e/d/h/e/a/a/a$a;->a(Lc/c/a/e/d/h/e/a/a/a;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    sget-object v0, Lc/c/a/e/d/h/e/a/a/i;->a:Lc/c/a/e/d/h/e/a/a/i;

    invoke-static {p1, v0}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations.map(down\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lc/c/a/e/d/h/e/a/a/k;->a:Lc/c/a/e/d/h/e/a/a/a;

    invoke-interface {p2, p1}, Lc/c/a/e/d/h/e/a/a/a;->a(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/c/a/e/d/h/e/a/a/k;->a:Lc/c/a/e/d/h/e/a/a/a;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lc/c/a/e/d/h/e/a/a/a$a;->b(Lc/c/a/e/d/h/e/a/a/a;JILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lc/c/a/e/d/h/e/a/a/k;->a:Lc/c/a/e/d/h/e/a/a/a;

    invoke-interface {p2, p1}, Lc/c/a/e/d/h/e/a/a/a;->b(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lc/c/a/e/f/g;->a(Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;)Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lc/c/a/e/d/h/e/a/a/k;->a:Lc/c/a/e/d/h/e/a/a/a;

    sget-object v0, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->SENT:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    invoke-interface {p2, p1, v0}, Lc/c/a/e/d/h/e/a/a/a;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)V

    .line 2
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
