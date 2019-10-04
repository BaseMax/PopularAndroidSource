.class public final Lc/c/a/n/y/a;
.super Lc/c/a/d/f/p;
.source "BazaarForceUpdateViewModel.kt"


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Lc/c/a/e/d/a/a;

.field public final i:Lc/c/a/e/d/i/j;

.field public final j:Lc/c/a/b/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/a/a;Lc/c/a/e/d/i/j;Lc/c/a/b/d/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProgressRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p2, p0, Lc/c/a/n/y/a;->h:Lc/c/a/e/d/a/a;

    iput-object p3, p0, Lc/c/a/n/y/a;->i:Lc/c/a/e/d/i/j;

    iput-object p4, p0, Lc/c/a/n/y/a;->j:Lc/c/a/b/d/b;

    const-string p2, "com.farsitel.bazaar"

    .line 2
    iput-object p2, p0, Lc/c/a/n/y/a;->d:Ljava/lang/String;

    const p2, 0x7f10002a

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/y/a;->e:Ljava/lang/String;

    .line 4
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/y/a;->f:Lb/r/t;

    .line 5
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/y/a;->g:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/y/a;)Lc/c/a/e/d/i/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/y/a;->i:Lc/c/a/e/d/i/j;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/y/a;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/y/a;->a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/c/a/n/y/a;->f:Lb/r/t;

    invoke-virtual {v0, p1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 3
    new-instance v3, Lcom/farsitel/bazaar/ui/splash/BazaarForceUpdateViewModel$registerOnProgressChange$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/splash/BazaarForceUpdateViewModel$registerOnProgressChange$1;-><init>(Lc/c/a/n/y/a;Ljava/lang/String;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)Z
    .locals 1

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "appState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/y/a;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lc/c/a/n/y/a;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc/c/a/n/y/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/a;->j:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/y/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/c/a/b/d/i;->d(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/a;->j:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/y/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc/c/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/a;->h:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/a;->h:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->m()Z

    move-result v0

    return v0
.end method

.method public final i()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/a;->f:Lb/r/t;

    return-object v0
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/a;->h:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->B()V

    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/a;->h:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->p()Z

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/a;->j:Lc/c/a/b/d/b;

    .line 2
    new-instance v8, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    .line 3
    iget-object v2, p0, Lc/c/a/n/y/a;->d:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lc/c/a/n/y/a;->e:Ljava/lang/String;

    const-string v1, "bazaarName"

    invoke-static {v3, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lc/c/a/c/d/a$a;

    invoke-direct {v1}, Lc/c/a/c/d/a$a;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v4}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    .line 6
    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 7
    invoke-virtual {v0, v8}, Lc/c/a/b/d/b;->a(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/a;->j:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/y/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/c/a/b/d/i;->h(Ljava/lang/String;)V

    return-void
.end method
