.class public final Lc/c/a/n/x/b;
.super Ljava/lang/Object;
.source "SettingViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/x/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/s/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;",
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
            "Lc/c/a/e/d/s/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/x/b;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/n/x/b;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/n/x/b;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/n/x/b;->d:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/x/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/s/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;",
            ">;)",
            "Lc/c/a/n/x/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/x/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/c/a/n/x/b;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/x/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/s/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/u/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;",
            "Lg/a/a<",
            "Lcom/farsitel/bazaar/data/feature/download/DownloadManager;",
            ">;)",
            "Lc/c/a/n/x/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/x/a;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/s/c;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/u/a;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/p/I;

    .line 5
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/c/a/n/x/a;-><init>(Lc/c/a/e/d/s/c;Lc/c/a/e/d/u/a;Lc/c/a/p/I;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/x/a;
    .locals 4

    .line 2
    iget-object v0, p0, Lc/c/a/n/x/b;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/n/x/b;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/n/x/b;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/n/x/b;->d:Lg/a/a;

    invoke-static {v0, v1, v2, v3}, Lc/c/a/n/x/b;->b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/x/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/x/b;->get()Lc/c/a/n/x/a;

    move-result-object v0

    return-object v0
.end method
