.class public final Lc/c/a/e/d/c/a/a;
.super Ljava/lang/Object;
.source "AppDetailRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/c/a/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/c/a/e;)V
    .locals 1

    const-string v0, "appDetailService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/c/a/a;->a:Lc/c/a/e/d/c/a/e;

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
            "Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/c/a/c;

    invoke-static {p2}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lc/c/a/e/d/c/a/c;-><init>(Ljava/lang/String;Lc/e/d/m;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/c/a/a;->a:Lc/c/a/e/d/c/a/e;

    invoke-interface {p1, v0}, Lc/c/a/e/d/c/a/e;->a(Lc/c/a/e/d/c/a/c;)Ll/b;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/farsitel/bazaar/data/feature/appdetail/remote/AppDetailRemoteDataSource$getAppDetail$2;->a:Lcom/farsitel/bazaar/data/feature/appdetail/remote/AppDetailRemoteDataSource$getAppDetail$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
