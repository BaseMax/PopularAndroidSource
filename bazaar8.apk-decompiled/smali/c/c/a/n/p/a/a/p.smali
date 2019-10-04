.class public final Lc/c/a/n/p/a/a/p;
.super Lc/c/a/d/f/p;
.source "VerifyEmailOtpViewModel.kt"


# instance fields
.field public final d:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lcom/farsitel/bazaar/core/model/Resource;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lc/c/a/e/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/a;)V
    .locals 1

    const-string v0, "accountRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/p/a/a/p;->f:Lc/c/a/e/d/a/a;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/p/a/a/p;->d:Lc/c/a/c/h/g;

    .line 3
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/p/a/a/p;->e:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/p/a/a/p;)Lc/c/a/e/d/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/p/a/a/p;->f:Lc/c/a/e/d/a/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/p/a/a/p;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/p/a/a/p;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/p/a/a/p;Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/p/a/a/p;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/p/a/a/p;)Lb/r/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/p/a/a/p;->e:Lb/r/t;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Li/a/ra;
    .locals 7

    const-string v0, "email"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;-><init>(Lc/c/a/n/p/a/a/p;Ljava/lang/String;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 8

    .line 7
    iget-object v0, p0, Lc/c/a/n/p/a/a/p;->d:Lc/c/a/c/h/g;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 7

    .line 6
    iget-object p1, p0, Lc/c/a/n/p/a/a/p;->d:Lc/c/a/c/h/g;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v2, "email"

    invoke-static {p1, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "code"

    invoke-static {p2, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lc/c/a/n/p/a/a/p;->d:Lc/c/a/c/h/g;

    new-instance v3, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v7, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v2, v3}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    .line 5
    new-instance v3, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$verifyCode$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$verifyCode$1;-><init>(Lc/c/a/n/p/a/a/p;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lc/c/a/n/p/a/a/p;->e:Lb/r/t;

    return-object v0
.end method

.method public final f()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/a/a/p;->d:Lc/c/a/c/h/g;

    return-object v0
.end method
