.class public final Lc/c/a/e/d/i/o;
.super Ljava/lang/Object;
.source "Downloader_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lcom/farsitel/bazaar/data/feature/download/Downloader;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/i/y;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/i/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/y;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/i/o;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/e/d/i/o;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/e/d/i/o;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/e/d/i/o;->d:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/d/i/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/y;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/u;",
            ">;)",
            "Lc/c/a/e/d/i/o;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/i/o;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/c/a/e/d/i/o;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lcom/farsitel/bazaar/data/feature/download/Downloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/q;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/r;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/y;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/i/u;",
            ">;)",
            "Lcom/farsitel/bazaar/data/feature/download/Downloader;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/feature/download/Downloader;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/i/q;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/i/r;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/d/i/y;

    .line 5
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/c/a/e/d/i/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/farsitel/bazaar/data/feature/download/Downloader;-><init>(Lc/c/a/e/d/i/q;Lc/c/a/e/d/i/r;Lc/c/a/e/d/i/y;Lc/c/a/e/d/i/u;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/farsitel/bazaar/data/feature/download/Downloader;
    .locals 4

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/i/o;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/e/d/i/o;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/e/d/i/o;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/e/d/i/o;->d:Lg/a/a;

    invoke-static {v0, v1, v2, v3}, Lc/c/a/e/d/i/o;->b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lcom/farsitel/bazaar/data/feature/download/Downloader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/i/o;->get()Lcom/farsitel/bazaar/data/feature/download/Downloader;

    move-result-object v0

    return-object v0
.end method
