.class public final Lc/c/a/e/d/i/i;
.super Ljava/lang/Object;
.source "DownloadProgressDataSource_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/i/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/i/i;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/e/d/i/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;",
            ">;)",
            "Lc/c/a/e/d/i/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/i/i;

    invoke-direct {v0, p0}, Lc/c/a/e/d/i/i;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/e/d/i/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;",
            ">;)",
            "Lc/c/a/e/d/i/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/i/h;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-direct {v0, p0}, Lc/c/a/e/d/i/h;-><init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/i/h;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/i/i;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/e/d/i/i;->b(Lg/a/a;)Lc/c/a/e/d/i/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/i/i;->get()Lc/c/a/e/d/i/h;

    move-result-object v0

    return-object v0
.end method
