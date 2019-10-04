.class public final Lc/c/a/n/y/e;
.super Lc/c/a/d/f/p;
.source "SplashViewModel.kt"


# instance fields
.field public final d:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/e/d/u/a;

.field public final f:Lc/c/a/e/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/u/a;Lc/c/a/e/d/a/a;)V
    .locals 1

    const-string v0, "settingsRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/y/e;->e:Lc/c/a/e/d/u/a;

    iput-object p2, p0, Lc/c/a/n/y/e;->f:Lc/c/a/e/d/a/a;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/y/e;->d:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/y/e;)Lc/c/a/e/d/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/y/e;->f:Lc/c/a/e/d/a/a;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/y/e;)Lb/r/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/y/e;->d:Lb/r/t;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/y/e;)Lc/c/a/e/d/u/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/y/e;->e:Lc/c/a/e/d/u/a;

    return-object p0
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/e;->d:Lb/r/t;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/e;->f:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->q()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/e;->f:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->e()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/e;->f:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/y/e;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/y/e;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/y/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final j()V
    .locals 14

    .line 1
    iget-object v0, p0, Lc/c/a/n/y/e;->d:Lb/r/t;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 2
    new-instance v11, Lcom/farsitel/bazaar/ui/splash/SplashViewModel$registerDeviceAndGetInfo$1;

    const/4 v0, 0x0

    invoke-direct {v11, p0, v0}, Lcom/farsitel/bazaar/ui/splash/SplashViewModel$registerDeviceAndGetInfo$1;-><init>(Lc/c/a/n/y/e;Lh/c/b;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final k()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/y/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/y/e;->j()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/a/n/y/e;->d:Lb/r/t;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
