.class public final Lc/c/a/e/d/h/a/a/b;
.super Ljava/lang/Object;
.source "CastPageRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/a/a/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/a/a/e;)V
    .locals 1

    const-string v0, "castService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/a/a/b;->a:Lc/c/a/e/d/h/a/a/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/a/a/d;

    invoke-static {p2}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lc/c/a/e/d/h/a/a/d;-><init>(Ljava/lang/String;Lc/e/d/m;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/h/a/a/b;->a:Lc/c/a/e/d/h/a/a/e;

    invoke-interface {p1, v0}, Lc/c/a/e/d/h/a/a/e;->a(Lc/c/a/e/d/h/a/a/d;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/cinema/cast/remote/CastPageRemoteDataSource$getCastPage$2;->a:Lcom/farsitel/bazaar/data/feature/cinema/cast/remote/CastPageRemoteDataSource$getCastPage$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
