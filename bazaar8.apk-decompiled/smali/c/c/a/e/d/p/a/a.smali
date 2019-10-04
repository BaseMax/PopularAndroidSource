.class public final Lc/c/a/e/d/p/a/a;
.super Ljava/lang/Object;
.source "ReportAppRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/p/a/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/p/a/e;)V
    .locals 1

    const-string v0, "reportService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/p/a/a;->a:Lc/c/a/e/d/p/a/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/p/a/a;->a:Lc/c/a/e/d/p/a/e;

    .line 2
    new-instance v8, Lc/c/a/e/d/p/a/c;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lc/c/a/e/d/p/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    .line 3
    invoke-interface {v0, v8}, Lc/c/a/e/d/p/a/e;->a(Lc/c/a/e/d/p/a/c;)Ll/b;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/farsitel/bazaar/data/feature/report/remote/ReportAppRemoteDataSource$reportApp$2;->a:Lcom/farsitel/bazaar/data/feature/report/remote/ReportAppRemoteDataSource$reportApp$2;

    invoke-static {p1, p2, p4}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
