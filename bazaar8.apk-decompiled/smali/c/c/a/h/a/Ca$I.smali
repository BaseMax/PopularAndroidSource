.class public final Lc/c/a/h/a/Ca$I;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/O;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "I"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$H;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$I;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$H;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$I;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$H;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/app/download/DownloadService;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$I;->b(Lcom/farsitel/bazaar/app/download/DownloadService;)Lcom/farsitel/bazaar/app/download/DownloadService;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$I;->a(Lcom/farsitel/bazaar/app/download/DownloadService;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/app/download/DownloadService;)Lcom/farsitel/bazaar/app/download/DownloadService;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/h/a/Ca$I;->a:Lc/c/a/h/a/Ca;

    .line 2
    invoke-static {v0}, Lc/c/a/h/a/Ca;->f(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    .line 3
    invoke-static {p1, v0}, Lc/c/a/b/b/d;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V

    .line 4
    iget-object v0, p0, Lc/c/a/h/a/Ca$I;->a:Lc/c/a/h/a/Ca;

    .line 5
    invoke-static {v0}, Lc/c/a/h/a/Ca;->g(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/i/A;

    .line 6
    invoke-static {p1, v0}, Lc/c/a/b/b/d;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lc/c/a/e/d/i/A;)V

    .line 7
    iget-object v0, p0, Lc/c/a/h/a/Ca$I;->a:Lc/c/a/h/a/Ca;

    .line 8
    invoke-static {v0}, Lc/c/a/h/a/Ca;->h(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/i/c;

    .line 9
    invoke-static {p1, v0}, Lc/c/a/b/b/d;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lc/c/a/e/d/i/c;)V

    .line 10
    iget-object v0, p0, Lc/c/a/h/a/Ca$I;->a:Lc/c/a/h/a/Ca;

    .line 11
    invoke-static {v0}, Lc/c/a/h/a/Ca;->i(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/b/m;

    .line 12
    invoke-static {p1, v0}, Lc/c/a/b/b/d;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lc/c/a/e/d/b/m;)V

    .line 13
    iget-object v0, p0, Lc/c/a/h/a/Ca$I;->a:Lc/c/a/h/a/Ca;

    .line 14
    invoke-static {v0}, Lc/c/a/h/a/Ca;->j(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/d/g/a/a;

    .line 15
    invoke-static {p1, v0}, Lc/c/a/b/b/d;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lc/c/a/d/g/a/a;)V

    .line 16
    iget-object v0, p0, Lc/c/a/h/a/Ca$I;->a:Lc/c/a/h/a/Ca;

    .line 17
    invoke-static {v0}, Lc/c/a/h/a/Ca;->d(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/b/d/b;

    .line 18
    invoke-static {p1, v0}, Lc/c/a/b/b/d;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lc/c/a/b/d/b;)V

    .line 19
    iget-object v0, p0, Lc/c/a/h/a/Ca$I;->a:Lc/c/a/h/a/Ca;

    .line 20
    invoke-static {v0}, Lc/c/a/h/a/Ca;->k(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/u/a;

    .line 21
    invoke-static {p1, v0}, Lc/c/a/b/b/d;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lc/c/a/e/d/u/a;)V

    return-object p1
.end method
