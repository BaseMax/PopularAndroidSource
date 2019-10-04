.class public final Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyEmailOtpViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/p/a/a/p;->a(Ljava/lang/String;)Li/a/ra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/c<",
        "Li/a/H;",
        "Lh/c/b<",
        "-",
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.ui.login.merge.account.VerifyEmailOtpViewModel$resendEmail$1"
    f = "VerifyEmailOtpViewModel.kt"
    l = {
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $email:Ljava/lang/String;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/p/a/a/p;


# direct methods
.method public constructor <init>(Lc/c/a/n/p/a/a/p;Ljava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->this$0:Lc/c/a/n/p/a/a/p;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->$email:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->this$0:Lc/c/a/n/p/a/a/p;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->$email:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;-><init>(Lc/c/a/n/p/a/a/p;Ljava/lang/String;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->this$0:Lc/c/a/n/p/a/a/p;

    invoke-static {p1}, Lc/c/a/n/p/a/a/p;->b(Lc/c/a/n/p/a/a/p;)Lb/r/t;

    move-result-object p1

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v4, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->this$0:Lc/c/a/n/p/a/a/p;

    invoke-static {p1}, Lc/c/a/n/p/a/a/p;->a(Lc/c/a/n/p/a/a/p;)Lc/c/a/e/d/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->$email:Ljava/lang/String;

    iput v2, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->label:I

    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/a/a;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 7
    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/entity/WaitingTime;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/WaitingTime;->unbox-impl()J

    move-result-wide v0

    .line 8
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->this$0:Lc/c/a/n/p/a/a/p;

    invoke-static {p1}, Lc/c/a/n/p/a/a/p;->b(Lc/c/a/n/p/a/a/p;)Lb/r/t;

    move-result-object p1

    new-instance v8, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v3, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/c/b/a/a;->a(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v8}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_3
    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v3

    .line 10
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpViewModel$resendEmail$1;->this$0:Lc/c/a/n/p/a/a/p;

    invoke-static {p1}, Lc/c/a/n/p/a/a/p;->b(Lc/c/a/n/p/a/a/p;)Lb/r/t;

    move-result-object p1

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 11
    :goto_1
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
