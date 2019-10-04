.class public abstract Lc/c/a/b/d/i;
.super Ljava/lang/Object;
.source "EntityManager.kt"

# interfaces
.implements Li/a/H;


# instance fields
.field public final a:Li/a/u;

.field public final b:Ljava/lang/Object;

.field public final c:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lh/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public final e:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

.field public final f:Lc/c/a/b/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Lc/c/a/b/d/d;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadStateManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/b/d/i;->d:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/b/d/i;->e:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iput-object p3, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object p2

    iput-object p2, p0, Lc/c/a/b/d/i;->a:Li/a/u;

    .line 3
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/c/a/b/d/i;->b:Ljava/lang/Object;

    .line 4
    new-instance p2, Lb/r/t;

    invoke-direct {p2}, Lb/r/t;-><init>()V

    iput-object p2, p0, Lc/c/a/b/d/i;->c:Lb/r/t;

    .line 5
    new-instance v3, Lcom/farsitel/bazaar/app/managers/EntityManager$1;

    invoke-direct {v3, p0, p1}, Lcom/farsitel/bazaar/app/managers/EntityManager$1;-><init>(Lc/c/a/b/d/i;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/d/i;)Lc/c/a/b/d/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/b/d/i;Lc/c/a/b/b/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->a(Lc/c/a/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 2

    .line 3
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/b/d/i;->a:Li/a/u;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lc/c/a/b/b/b;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lc/c/a/b/b/b;->a()Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object v0

    sget-object v1, Lc/c/a/b/d/f;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lc/c/a/b/d/i;->f()V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p1}, Lc/c/a/b/b/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lc/c/a/b/b/b;->a()Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v0, p1}, Lc/c/a/b/d/i;->a(Ljava/lang/String;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;)V

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-virtual {p1}, Lc/c/a/b/b/b;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->CHECKING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {p0, p1, v0}, Lc/c/a/b/d/i;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p1}, Lc/c/a/b/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc/c/a/b/b/b;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lc/c/a/b/d/i;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-virtual {p1}, Lc/c/a/b/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-virtual {p1}, Lc/c/a/b/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :pswitch_6
    invoke-virtual {p1}, Lc/c/a/b/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :pswitch_7
    invoke-virtual {p1}, Lc/c/a/b/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :pswitch_8
    invoke-virtual {p1}, Lc/c/a/b/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :pswitch_9
    invoke-virtual {p1}, Lc/c/a/b/b/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v0, p1, v1}, Lc/c/a/b/d/d;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 18
    invoke-virtual {p0}, Lc/c/a/b/d/i;->e()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;)V
    .locals 2

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadServiceNotifyType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    .line 21
    sget-object v1, Lc/c/a/b/d/f;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    .line 22
    sget-object p2, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_0

    .line 23
    :cond_0
    sget-object p2, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_0

    .line 24
    :cond_1
    sget-object p2, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_0

    .line 25
    :cond_2
    sget-object p2, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_0

    .line 26
    :cond_3
    sget-object p2, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    .line 27
    :goto_0
    invoke-virtual {v0, p1, p2}, Lc/c/a/b/d/d;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 28
    invoke-virtual {p0}, Lc/c/a/b/d/i;->e()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    invoke-virtual {v0, p1, p2}, Lc/c/a/b/d/d;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 30
    invoke-virtual {p0}, Lc/c/a/b/d/i;->e()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    const-string p2, "entityId"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/b/d/i;->c:Lb/r/t;

    new-instance v1, Lc/c/a/b/d/g;

    invoke-direct {v1, p0}, Lc/c/a/b/d/g;-><init>(Lc/c/a/b/d/i;)V

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.map(noti\u2026EntitiesState()\n        }"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v0, p1, v1}, Lc/c/a/b/d/d;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/b/d/i;->e()V

    return-void
.end method

.method public final d(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;"
        }
    .end annotation

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/b/d/i;->c:Lb/r/t;

    new-instance v1, Lc/c/a/b/d/h;

    invoke-direct {v1, p0, p1}, Lc/c/a/b/d/h;-><init>(Lc/c/a/b/d/i;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations.map(noti\u2026ate()[entityId]\n        }"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Li/a/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/i;->a:Li/a/u;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Li/a/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/t<",
            "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
            ">;"
        }
    .end annotation

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/i;->e:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/b/d/i;->c:Lb/r/t;

    sget-object v1, Lh/h;->a:Lh/h;

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    invoke-virtual {v0}, Lc/c/a/b/d/d;->b()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/b/d/i;->e()V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INCOMPATIBLE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v0, p1, v1}, Lc/c/a/b/d/d;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 4
    invoke-virtual {p0}, Lc/c/a/b/d/i;->e()V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    invoke-virtual {v0, p1}, Lc/c/a/b/d/d;->a(Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lc/c/a/b/d/i;->e()V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/i;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "STOP"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v2, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {v2, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/b/d/i;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v0, p1, v1}, Lc/c/a/b/d/d;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/b/d/i;->e()V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/d/i;->f:Lc/c/a/b/d/d;

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v0, p1, v1}, Lc/c/a/b/d/d;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/b/d/i;->e()V

    return-void
.end method
