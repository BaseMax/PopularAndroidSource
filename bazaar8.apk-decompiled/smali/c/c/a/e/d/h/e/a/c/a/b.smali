.class public final Lc/c/a/e/d/h/e/a/c/a/b;
.super Ljava/lang/Object;
.source "SubmitVideoDownloadRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/h/e/a/c/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/c/a/a;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/e/a/c/a/b;->a:Lc/c/a/e/d/h/e/a/c/a/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/SubmitVideoDownload;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/c/a/b;->a:Lc/c/a/e/d/h/e/a/c/a/a;

    new-instance v1, Lc/c/a/e/d/h/e/a/c/a/d;

    invoke-direct {v1, p1}, Lc/c/a/e/d/h/e/a/c/a/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/h/e/a/c/a/a;->a(Lc/c/a/e/d/h/e/a/c/a/d;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/remote/SubmitVideoDownloadRemoteDataSource$submitVideoDownload$2;->a:Lcom/farsitel/bazaar/data/feature/cinema/video/download/submit/remote/SubmitVideoDownloadRemoteDataSource$submitVideoDownload$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
