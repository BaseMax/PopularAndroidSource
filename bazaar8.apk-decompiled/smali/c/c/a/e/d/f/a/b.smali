.class public final Lc/c/a/e/d/f/a/b;
.super Ljava/lang/Object;
.source "BoughtVideoRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/f/a/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/f/a/e;)V
    .locals 1

    const-string v0, "boughtVideoService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/f/a/b;->a:Lc/c/a/e/d/f/a/e;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/f/a/b;->a:Lc/c/a/e/d/f/a/e;

    new-instance v7, Lc/c/a/e/d/f/a/d;

    invoke-static {p2}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lc/c/a/e/d/f/a/d;-><init>(ILjava/lang/String;Lc/e/d/m;ILh/f/b/f;)V

    invoke-interface {v0, v7}, Lc/c/a/e/d/f/a/e;->a(Lc/c/a/e/d/f/a/d;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/boughtvideo/remote/BoughtVideoRemoteDataSource$getBoughtVideos$2;->a:Lcom/farsitel/bazaar/data/feature/boughtvideo/remote/BoughtVideoRemoteDataSource$getBoughtVideos$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
