.class public final Lc/c/a/n/p/A;
.super Lc/c/a/d/f/p;
.source "VerifyOtpViewModel.kt"


# instance fields
.field public final d:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
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

.field public final f:Lc/c/a/d/c/b;

.field public final g:Lc/c/a/p/I;

.field public final h:Lc/c/a/e/d/m/d;


# direct methods
.method public constructor <init>(Lc/c/a/d/c/b;Lc/c/a/p/I;Lc/c/a/e/d/m/d;)V
    .locals 1

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/p/A;->f:Lc/c/a/d/c/b;

    iput-object p2, p0, Lc/c/a/n/p/A;->g:Lc/c/a/p/I;

    iput-object p3, p0, Lc/c/a/n/p/A;->h:Lc/c/a/e/d/m/d;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/p/A;->d:Lb/r/t;

    .line 3
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/p/A;->e:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/p/A;)Lc/c/a/d/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/p/A;->f:Lc/c/a/d/c/b;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/p/A;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/p/A;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/p/A;)Lb/r/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/p/A;->e:Lb/r/t;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/p/A;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/p/A;->h()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Li/a/ra;
    .locals 7

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;-><init>(Lc/c/a/n/p/A;Ljava/lang/String;Lh/c/b;)V

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

    .line 5
    iget-object v0, p0, Lc/c/a/n/p/A;->d:Lb/r/t;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;)V
    .locals 12

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginType"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lc/c/a/n/p/A;->d:Lb/r/t;

    new-instance v2, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v7, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v1, v2}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v7, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;-><init>(Lc/c/a/n/p/A;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object v1, p0

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/A;->h:Lc/c/a/e/d/m/d;

    invoke-virtual {v0}, Lc/c/a/e/d/m/d;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lc/c/a/n/p/A;->e:Lb/r/t;

    return-object v0
.end method

.method public final g()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lc/c/a/n/p/A;->d:Lb/r/t;

    return-object v0
.end method

.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/A;->g:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->i()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/p/A;->g:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->n()V

    .line 3
    iget-object v0, p0, Lc/c/a/n/p/A;->d:Lb/r/t;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method
