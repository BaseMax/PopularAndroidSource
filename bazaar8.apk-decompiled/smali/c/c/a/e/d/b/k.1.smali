.class public final Lc/c/a/e/d/b/k;
.super Ljava/lang/Object;
.source "DownloadedAppLocalDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/b/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/e;)V
    .locals 1

    const-string v0, "downloadedAppDao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/b/k;->a:Lc/c/a/e/d/b/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/DownloadedApp;Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/DownloadedApp;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lc/c/a/e/d/b/k;->a:Lc/c/a/e/d/b/e;

    invoke-static {p1}, Lc/c/a/e/f/g;->a(Lcom/farsitel/bazaar/data/entity/DownloadedApp;)Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;

    move-result-object p1

    invoke-interface {p2, p1}, Lc/c/a/e/d/b/e;->a(Lcom/farsitel/bazaar/data/entity/LocalDownloadedApp;)V

    .line 2
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object p1, p0, Lc/c/a/e/d/b/k;->a:Lc/c/a/e/d/b/e;

    invoke-interface {p1}, Lc/c/a/e/d/b/e;->a()Landroidx/lifecycle/LiveData;

    move-result-object p1

    sget-object v0, Lc/c/a/e/d/b/j;->a:Lc/c/a/e/d/b/j;

    invoke-static {p1, v0}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations.map(down\u2026 { it.toFlatPageApp() } }"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
