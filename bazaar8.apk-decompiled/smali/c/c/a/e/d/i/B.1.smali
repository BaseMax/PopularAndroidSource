.class public final Lc/c/a/e/d/i/B;
.super Ljava/lang/Object;
.source "VideoDownloadManager_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/i/A;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/g/b;",
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

.field public final f:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/c/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/g/b;",
            ">;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/Downloader;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/c/e/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/i/B;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/e/d/i/B;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/e/d/i/B;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/e/d/i/B;->d:Lg/a/a;

    .line 6
    iput-object p5, p0, Lc/c/a/e/d/i/B;->e:Lg/a/a;

    .line 7
    iput-object p6, p0, Lc/c/a/e/d/i/B;->f:Lg/a/a;

    .line 8
    iput-object p7, p0, Lc/c/a/e/d/i/B;->g:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/i/B;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/g/b;",
            ">;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/Downloader;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/c/e/a;",
            ">;)",
            "Lc/c/a/e/d/i/B;"
        }
    .end annotation

    .line 1
    new-instance v8, Lc/c/a/e/d/i/B;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lc/c/a/e/d/i/B;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v8
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/i/A;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/c/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/g/b;",
            ">;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/Downloader;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/c/e/a;",
            ">;)",
            "Lc/c/a/e/d/i/A;"
        }
    .end annotation

    .line 1
    new-instance v7, Lc/c/a/e/d/i/A;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lc/c/a/e/d/h/e/a/c/a;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lc/c/a/e/d/i/q;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lc/c/a/e/d/h/e/a/a/n;

    .line 5
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lc/c/a/e/g/b;

    .line 6
    invoke-interface {p4}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/farsitel/bazaar/data/feature/download/Downloader;

    .line 7
    invoke-interface {p5}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lc/c/a/e/d/i/r;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lc/c/a/e/d/i/A;-><init>(Lc/c/a/e/d/h/e/a/c/a;Lc/c/a/e/d/i/q;Lc/c/a/e/d/h/e/a/a/n;Lc/c/a/e/g/b;Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/r;)V

    .line 8
    invoke-interface {p6}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/c/e/a;

    invoke-static {v7, p0}, Lc/c/a/e/d/i/C;->a(Lc/c/a/e/d/i/A;Lc/c/a/c/e/a;)V

    return-object v7
.end method


# virtual methods
.method public get()Lc/c/a/e/d/i/A;
    .locals 7

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/i/B;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/e/d/i/B;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/e/d/i/B;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/e/d/i/B;->d:Lg/a/a;

    iget-object v4, p0, Lc/c/a/e/d/i/B;->e:Lg/a/a;

    iget-object v5, p0, Lc/c/a/e/d/i/B;->f:Lg/a/a;

    iget-object v6, p0, Lc/c/a/e/d/i/B;->g:Lg/a/a;

    invoke-static/range {v0 .. v6}, Lc/c/a/e/d/i/B;->b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/i/A;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/i/B;->get()Lc/c/a/e/d/i/A;

    move-result-object v0

    return-object v0
.end method
