.class public final Lc/c/a/e/d/i/j;
.super Ljava/lang/Object;
.source "DownloadProgressRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/i/h;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/i/h;)V
    .locals 1

    const-string v0, "downloadProgressDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/i/j;->a:Lc/c/a/e/d/i/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Li/a/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/t<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/i/j;->a:Lc/c/a/e/d/i/h;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/i/h;->a(Ljava/lang/String;)Li/a/b/t;

    move-result-object p1

    return-object p1
.end method
