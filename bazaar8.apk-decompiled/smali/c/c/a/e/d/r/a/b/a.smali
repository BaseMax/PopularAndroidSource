.class public final Lc/c/a/e/d/r/a/b/a;
.super Ljava/lang/Object;
.source "ReportCommentRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/b/b/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/b/b/a;)V
    .locals 1

    const-string v0, "commentService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/a/b/a;->a:Lc/c/a/e/d/r/b/b/a;

    return-void
.end method


# virtual methods
.method public final a(IZLh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/a/b/a;->a:Lc/c/a/e/d/r/b/b/a;

    .line 2
    new-instance v1, Lc/c/a/e/d/r/a/b/c;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/r/a/b/c;-><init>(IZ)V

    .line 3
    invoke-interface {v0, v1}, Lc/c/a/e/d/r/b/b/a;->a(Lc/c/a/e/d/r/a/b/c;)Ll/b;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/farsitel/bazaar/data/feature/review/action/remote/ReportCommentRemoteDataSource$reportComment$2;->a:Lcom/farsitel/bazaar/data/feature/review/action/remote/ReportCommentRemoteDataSource$reportComment$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
