.class public final Lc/c/a/n/t/a/e;
.super Lc/c/a/d/f/p;
.source "NickNameViewModel.kt"


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

.field public final e:Lc/c/a/e/d/a/a;

.field public final f:Lc/c/a/d/c/b;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/a;Lc/c/a/d/c/b;)V
    .locals 1

    const-string v0, "accountRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/t/a/e;->e:Lc/c/a/e/d/a/a;

    iput-object p2, p0, Lc/c/a/n/t/a/e;->f:Lc/c/a/d/c/b;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/t/a/e;->d:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/t/a/e;)Lc/c/a/d/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/a/e;->f:Lc/c/a/d/c/b;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/t/a/e;)Lc/c/a/e/d/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/a/e;->e:Lc/c/a/e/d/a/a;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/t/a/e;)Lb/r/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/t/a/e;->d:Lb/r/t;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 14

    const-string v0, "nickName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/t/a/e;->d:Lb/r/t;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 3
    new-instance v11, Lcom/farsitel/bazaar/ui/profile/nickname/NickNameViewModel$setNickName$1;

    const/4 v0, 0x0

    invoke-direct {v11, p0, p1, v0}, Lcom/farsitel/bazaar/ui/profile/nickname/NickNameViewModel$setNickName$1;-><init>(Lc/c/a/n/t/a/e;Ljava/lang/String;Lh/c/b;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

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
    iget-object v0, p0, Lc/c/a/n/t/a/e;->d:Lb/r/t;

    return-object v0
.end method
