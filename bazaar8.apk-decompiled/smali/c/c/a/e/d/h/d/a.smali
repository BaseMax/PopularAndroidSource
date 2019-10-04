.class public final Lc/c/a/e/d/h/d/a;
.super Ljava/lang/Object;
.source "SeriesDetailRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/d/b/h;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/d/b/h;)V
    .locals 1

    const-string v0, "seriesDetailRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/d/a;->a:Lc/c/a/e/d/h/d/b/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/d/a;->a:Lc/c/a/e/d/h/d/b/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c/a/e/d/h/d/b/h;->a(Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/d/a;->a:Lc/c/a/e/d/h/d/b/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c/a/e/d/h/d/b/h;->b(Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
