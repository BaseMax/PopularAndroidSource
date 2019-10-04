.class public final Lc/c/a/n/t/h;
.super Lc/c/a/n/c/d/g;
.source "ProfileViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation
.end field

.field public final l:Lc/c/a/e/d/a/a;

.field public final m:Lc/c/a/d/c/b;

.field public final n:Lc/c/a/e/d/m/d;

.field public final o:Lc/c/a/e/d/r/b/b;

.field public final p:Lc/c/a/e/d/r/a/b;

.field public final q:Lc/c/a/e/d/d/b;

.field public final r:Lc/c/a/p/I;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/a;Lc/c/a/d/c/b;Lc/c/a/e/d/m/d;Lc/c/a/e/d/r/b/b;Lc/c/a/e/d/r/a/b;Lc/c/a/e/d/d/b;Lc/c/a/p/I;)V
    .locals 1

    const-string v0, "accountRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentActionRepository"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookmarkRepository"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/t/h;->l:Lc/c/a/e/d/a/a;

    iput-object p2, p0, Lc/c/a/n/t/h;->m:Lc/c/a/d/c/b;

    iput-object p3, p0, Lc/c/a/n/t/h;->n:Lc/c/a/e/d/m/d;

    iput-object p4, p0, Lc/c/a/n/t/h;->o:Lc/c/a/e/d/r/b/b;

    iput-object p5, p0, Lc/c/a/n/t/h;->p:Lc/c/a/e/d/r/a/b;

    iput-object p6, p0, Lc/c/a/n/t/h;->q:Lc/c/a/e/d/d/b;

    iput-object p7, p0, Lc/c/a/n/t/h;->r:Lc/c/a/p/I;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/t/h;->j:Lb/r/t;

    .line 3
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/t/h;->k:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/t/h;)Lc/c/a/d/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/h;->m:Lc/c/a/d/c/b;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/t/h;)Lc/c/a/e/d/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/h;->l:Lc/c/a/e/d/a/a;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/t/h;)Lc/c/a/e/d/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/h;->q:Lc/c/a/e/d/d/b;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/t/h;)Lc/c/a/e/d/r/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/h;->p:Lc/c/a/e/d/r/a/b;

    return-object p0
.end method

.method public static final synthetic e(Lc/c/a/n/t/h;)Lc/c/a/e/d/r/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/h;->o:Lc/c/a/e/d/r/b/b;

    return-object p0
.end method

.method public static final synthetic f(Lc/c/a/n/t/h;)Lb/r/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/h;->j:Lb/r/t;

    return-object p0
.end method

.method public static final synthetic g(Lc/c/a/n/t/h;)Lb/r/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/h;->k:Lb/r/t;

    return-object p0
.end method

.method public static final synthetic h(Lc/c/a/n/t/h;)Lc/c/a/e/d/m/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/h;->n:Lc/c/a/e/d/m/d;

    return-object p0
.end method

.method public static final synthetic i(Lc/c/a/n/t/h;)Lc/c/a/p/I;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/h;->r:Lc/c/a/p/I;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lc/c/a/n/t/b;->a:Lc/c/a/n/t/b$a;

    .line 3
    iget-object v0, p0, Lc/c/a/n/t/h;->l:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lc/c/a/n/t/h;->l:Lc/c/a/e/d/a/a;

    invoke-virtual {v1}, Lc/c/a/e/d/a/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v0, v1}, Lc/c/a/n/t/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/t/h;->m()V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/t/h;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/h;->j:Lb/r/t;

    return-object v0
.end method

.method public final k()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lc/c/a/n/t/h;->k:Lb/r/t;

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/user/User;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/h;->m:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 14

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/h;->j:Lb/r/t;

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
    new-instance v11, Lcom/farsitel/bazaar/ui/profile/ProfileViewModel$loadCredit$1;

    const/4 v0, 0x0

    invoke-direct {v11, p0, v0}, Lcom/farsitel/bazaar/ui/profile/ProfileViewModel$loadCredit$1;-><init>(Lc/c/a/n/t/h;Lh/c/b;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final n()V
    .locals 14

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/h;->k:Lb/r/t;

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
    new-instance v11, Lcom/farsitel/bazaar/ui/profile/ProfileViewModel$logout$1;

    const/4 v0, 0x0

    invoke-direct {v11, p0, v0}, Lcom/farsitel/bazaar/ui/profile/ProfileViewModel$logout$1;-><init>(Lc/c/a/n/t/h;Lh/c/b;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method
