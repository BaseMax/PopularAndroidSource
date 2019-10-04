.class public final Lc/c/a/e/d/b/m;
.super Ljava/lang/Object;
.source "DownloadedAppRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/b/k;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/k;)V
    .locals 1

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/b/m;->a:Lc/c/a/e/d/b/k;

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/DownloadedApp;Lh/c/b;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Lc/c/a/e/d/b/m;->a:Lc/c/a/e/d/b/k;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/b/k;->a(Lcom/farsitel/bazaar/data/entity/DownloadedApp;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

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

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/m;->a:Lc/c/a/e/d/b/k;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/k;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
