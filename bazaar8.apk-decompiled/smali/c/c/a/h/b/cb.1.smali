.class public final Lc/c/a/h/b/cb;
.super Ljava/lang/Object;
.source "NetworkModule_ProvideDownloadManagerFactory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/h/b/Ya;

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/g/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/Downloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/Ya;",
            "Lg/a/a<",
            "Lc/c/a/e/g/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/Downloader;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/h/b/cb;->a:Lc/c/a/h/b/Ya;

    .line 3
    iput-object p2, p0, Lc/c/a/h/b/cb;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/h/b/cb;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/h/b/cb;->d:Lg/a/a;

    .line 6
    iput-object p5, p0, Lc/c/a/h/b/cb;->e:Lg/a/a;

    return-void
.end method

.method public static a(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/h/b/cb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/Ya;",
            "Lg/a/a<",
            "Lc/c/a/e/g/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/Downloader;",
            ">;)",
            "Lc/c/a/h/b/cb;"
        }
    .end annotation

    .line 1
    new-instance v6, Lc/c/a/h/b/cb;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc/c/a/h/b/cb;-><init>(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v6
.end method

.method public static a(Lc/c/a/h/b/Ya;Lc/c/a/e/g/b;Lc/c/a/e/d/i/q;Lc/c/a/e/d/i/r;Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lcom/farsitel/bazaar/data/feature/download/DownloadManager;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/c/a/h/b/Ya;->a(Lc/c/a/e/g/b;Lc/c/a/e/d/i/q;Lc/c/a/e/d/i/r;Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, p1}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    return-object p0
.end method

.method public static b(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lcom/farsitel/bazaar/data/feature/download/DownloadManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/h/b/Ya;",
            "Lg/a/a<",
            "Lc/c/a/e/g/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/Downloader;",
            ">;)",
            "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/b;

    .line 2
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/d/i/q;

    .line 3
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/c/a/e/d/i/r;

    .line 4
    invoke-interface {p4}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/farsitel/bazaar/data/feature/download/Downloader;

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lc/c/a/h/b/cb;->a(Lc/c/a/h/b/Ya;Lc/c/a/e/g/b;Lc/c/a/e/d/i/q;Lc/c/a/e/d/i/r;Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/farsitel/bazaar/data/feature/download/DownloadManager;
    .locals 5

    .line 2
    iget-object v0, p0, Lc/c/a/h/b/cb;->a:Lc/c/a/h/b/Ya;

    iget-object v1, p0, Lc/c/a/h/b/cb;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/h/b/cb;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/h/b/cb;->d:Lg/a/a;

    iget-object v4, p0, Lc/c/a/h/b/cb;->e:Lg/a/a;

    invoke-static {v0, v1, v2, v3, v4}, Lc/c/a/h/b/cb;->b(Lc/c/a/h/b/Ya;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/h/b/cb;->get()Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    move-result-object v0

    return-object v0
.end method
