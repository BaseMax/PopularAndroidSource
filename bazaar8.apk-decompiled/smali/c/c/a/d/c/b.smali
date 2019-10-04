.class public final Lc/c/a/d/c/b;
.super Ljava/lang/Object;
.source "AccountManager.kt"


# instance fields
.field public final a:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/common/model/user/User;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc/c/a/e/d/a/a;

.field public final c:Lc/c/a/e/d/u/a;

.field public final d:Lc/c/a/e/d/a/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/a;Lc/c/a/e/d/u/a;Lc/c/a/e/d/a/c;)V
    .locals 1

    const-string v0, "accountRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    iput-object p2, p0, Lc/c/a/d/c/b;->c:Lc/c/a/e/d/u/a;

    iput-object p3, p0, Lc/c/a/d/c/b;->d:Lc/c/a/e/d/a/c;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/d/c/b;->a:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/d/c/b;)Lc/c/a/e/d/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;",
            "Lh/f/a/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
            "Lh/h;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;

    iget v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;

    invoke-direct {v0, p0, p3}, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;-><init>(Lc/c/a/d/c/b;Lh/c/b;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 27
    iget v1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/ErrorModel;

    iget-object p2, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p2, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lh/f/a/b;

    iget-object v0, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lh/f/a/a;

    iget-object v0, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/d/c/b;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_2
    iget-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lc/c/a/e/d/a/b/b/f;

    iget-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lh/f/a/b;

    iget-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lh/f/a/a;

    iget-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/d/c/b;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lh/f/a/b;

    iget-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lh/f/a/a;

    iget-object v1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lc/c/a/d/c/b;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    .line 30
    new-instance p3, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$2;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$2;-><init>(Lc/c/a/d/c/b;Lh/c/b;)V

    iput-object p0, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$0:Ljava/lang/Object;

    iput-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$1:Ljava/lang/Object;

    iput-object p2, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$2:Ljava/lang/Object;

    iput v4, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->label:I

    invoke-static {p3, v6}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    :goto_1
    move-object v4, p1

    move-object v5, p2

    .line 31
    check-cast p3, Lcom/farsitel/bazaar/data/entity/Either;

    .line 32
    instance-of p1, p3, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz p1, :cond_7

    move-object p1, p3

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/a/b/b/f;

    .line 33
    iget-object p2, v1, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    invoke-virtual {p1}, Lc/c/a/e/d/a/b/b/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lc/c/a/e/d/a/a;->c(Ljava/lang/String;)V

    .line 34
    iget-object p2, v1, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    invoke-virtual {p1}, Lc/c/a/e/d/a/b/b/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lc/c/a/e/d/a/a;->a(Ljava/lang/String;)V

    .line 35
    iget-object p2, v1, Lc/c/a/d/c/b;->c:Lc/c/a/e/d/u/a;

    invoke-virtual {p2}, Lc/c/a/e/d/u/a;->k()Ljava/lang/String;

    move-result-object v2

    .line 36
    iget-object p2, v1, Lc/c/a/d/c/b;->c:Lc/c/a/e/d/u/a;

    invoke-virtual {p2}, Lc/c/a/e/d/u/a;->l()Ljava/lang/String;

    move-result-object p2

    .line 37
    iput-object v1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$0:Ljava/lang/Object;

    iput-object v4, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$2:Ljava/lang/Object;

    iput-object p3, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$3:Ljava/lang/Object;

    iput-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$4:Ljava/lang/Object;

    iput v3, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->label:I

    move-object v3, p2

    .line 38
    invoke-virtual/range {v1 .. v6}, Lc/c/a/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    return-object p3

    .line 39
    :cond_7
    instance-of p1, p3, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz p1, :cond_9

    move-object p1, p3

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    .line 40
    sget-object p2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {p2, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 41
    iget-object p2, v1, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    iput-object v1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$0:Ljava/lang/Object;

    iput-object v4, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$2:Ljava/lang/Object;

    iput-object p3, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$3:Ljava/lang/Object;

    iput-object p1, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->L$4:Ljava/lang/Object;

    iput v2, v6, Lcom/farsitel/bazaar/core/facade/AccountManager$getUserInfo$1;->label:I

    invoke-virtual {p2, v6}, Lc/c/a/e/d/a/a;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_8

    return-object v0

    :cond_8
    move-object p2, v5

    .line 42
    :goto_3
    invoke-interface {p2, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 44
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/String;Lh/f/a/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/f/a/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/WaitingTime;",
            "Lh/h;",
            ">;",
            "Lh/f/a/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
            "Lh/h;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;

    iget v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;

    invoke-direct {v0, p0, p4}, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;-><init>(Lc/c/a/d/c/b;Lh/c/b;)V

    :goto_0
    iget-object p4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->L$3:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lh/f/a/b;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lh/f/a/b;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/d/c/b;

    invoke-static {p4}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    invoke-static {p4}, Lh/e;->a(Ljava/lang/Object;)V

    .line 6
    new-instance p4, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$2;

    const/4 v2, 0x0

    invoke-direct {p4, p0, p1, v2}, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$2;-><init>(Lc/c/a/d/c/b;Ljava/lang/String;Lh/c/b;)V

    iput-object p0, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$getOtpToken$1;->label:I

    invoke-static {p4, v0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_1
    check-cast p4, Lcom/farsitel/bazaar/data/entity/Either;

    .line 8
    instance-of p1, p4, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz p1, :cond_4

    check-cast p4, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p4}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 9
    :cond_4
    instance-of p1, p4, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz p1, :cond_5

    check-cast p4, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p4}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-interface {p3, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_2
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 11
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/login/LoginType;",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;",
            "Lh/f/a/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
            "Lh/h;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;

    iget v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;

    invoke-direct {v0, p0, p6}, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;-><init>(Lc/c/a/d/c/b;Lh/c/b;)V

    :goto_0
    iget-object p6, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/LoginResponse;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lh/f/a/b;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lh/f/a/a;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/common/model/login/LoginType;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/d/c/b;

    invoke-static {p6}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/LoginResponse;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lh/f/a/b;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lh/f/a/a;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/common/model/login/LoginType;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/d/c/b;

    invoke-static {p6}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$5:Ljava/lang/Object;

    move-object p5, p1

    check-cast p5, Lh/f/a/b;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$4:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Lh/f/a/a;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$3:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/farsitel/bazaar/common/model/login/LoginType;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/d/c/b;

    invoke-static {p6}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p6}, Lh/e;->a(Ljava/lang/Object;)V

    .line 15
    new-instance p6, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;

    const/4 v2, 0x0

    invoke-direct {p6, p0, p1, p2, v2}, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;-><init>(Lc/c/a/d/c/b;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    iput-object p0, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$4:Ljava/lang/Object;

    iput-object p5, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$5:Ljava/lang/Object;

    iput v5, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->label:I

    invoke-static {p6, v0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 16
    :goto_1
    check-cast p6, Lcom/farsitel/bazaar/data/entity/Either;

    .line 17
    instance-of v6, p6, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v6, :cond_9

    move-object v6, p6

    check-cast v6, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/farsitel/bazaar/data/entity/LoginResponse;

    .line 18
    iget-object v7, v2, Lc/c/a/d/c/b;->d:Lc/c/a/e/d/a/c;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/entity/LoginResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc/c/a/e/d/a/c;->b(Ljava/lang/String;)V

    .line 19
    iget-object v7, v2, Lc/c/a/d/c/b;->d:Lc/c/a/e/d/a/c;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/entity/LoginResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc/c/a/e/d/a/c;->a(Ljava/lang/String;)V

    .line 20
    iget-object v7, v2, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    invoke-virtual {v7, p1}, Lc/c/a/e/d/a/a;->b(Ljava/lang/String;)V

    .line 21
    sget-object v7, Lc/c/a/d/c/a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_7

    .line 22
    iput-object v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$4:Ljava/lang/Object;

    iput-object p5, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$5:Ljava/lang/Object;

    iput-object p6, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$6:Ljava/lang/Object;

    iput-object v6, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->label:I

    invoke-virtual {v2, p4, p5, v0}, Lc/c/a/d/c/b;->a(Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object p6

    .line 23
    :cond_7
    iput-object v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$4:Ljava/lang/Object;

    iput-object p5, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$5:Ljava/lang/Object;

    iput-object p6, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$6:Ljava/lang/Object;

    iput-object v6, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->L$7:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->label:I

    invoke-virtual {v2, p4, p5, v0}, Lc/c/a/d/c/b;->b(Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    return-object p6

    .line 24
    :cond_9
    instance-of p1, p6, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz p1, :cond_a

    check-cast p6, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p6}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-interface {p5, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 26
    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;",
            "Lh/f/a/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
            "Lh/h;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;

    iget v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;

    invoke-direct {v0, p0, p5}, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;-><init>(Lc/c/a/d/c/b;Lh/c/b;)V

    :goto_0
    iget-object p5, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 45
    iget v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/ErrorModel;

    iget-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$4:Ljava/lang/Object;

    check-cast p2, Lh/f/a/b;

    iget-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$3:Ljava/lang/Object;

    check-cast p3, Lh/f/a/a;

    iget-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$2:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lc/c/a/d/c/b;

    invoke-static {p5}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$4:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Lh/f/a/b;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$3:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lh/f/a/a;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/d/c/b;

    invoke-static {p5}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p5}, Lh/e;->a(Ljava/lang/Object;)V

    .line 48
    new-instance p5, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$2;

    const/4 v2, 0x0

    invoke-direct {p5, p0, p1, p2, v2}, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$2;-><init>(Lc/c/a/d/c/b;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    iput-object p0, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->label:I

    invoke-static {p5, v0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 49
    :goto_1
    check-cast p5, Lcom/farsitel/bazaar/data/entity/Either;

    .line 50
    instance-of v4, p5, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v4, :cond_5

    check-cast p5, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p5}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/f;

    .line 51
    invoke-virtual {v2}, Lc/c/a/d/c/b;->g()V

    .line 52
    invoke-interface {p3}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    goto :goto_3

    .line 53
    :cond_5
    instance-of v4, p5, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v4, :cond_7

    move-object v4, p5

    check-cast v4, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v4

    .line 54
    sget-object v5, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v5, v4}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 55
    iget-object v5, v2, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    iput-object v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$4:Ljava/lang/Object;

    iput-object p5, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$5:Ljava/lang/Object;

    iput-object v4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$registerDeviceAndGetInfo$1;->label:I

    invoke-virtual {v5, v0}, Lc/c/a/e/d/a/a;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p2, p4

    move-object p1, v4

    .line 56
    :goto_2
    invoke-interface {p2, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_3
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 58
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;",
            "Lh/f/a/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
            "Lh/h;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;

    iget v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;

    invoke-direct {v0, p0, p3}, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;-><init>(Lc/c/a/d/c/b;Lh/c/b;)V

    :goto_0
    iget-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/ErrorModel;

    iget-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lh/f/a/b;

    iget-object v1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lh/f/a/a;

    iget-object v0, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/d/c/b;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-wide p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->J$0:J

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lh/f/a/b;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lh/f/a/a;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/d/c/b;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lh/f/a/b;

    iget-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lh/f/a/a;

    iget-object v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/d/c/b;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    new-instance p3, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$2;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2}, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$2;-><init>(Lc/c/a/d/c/b;Lh/c/b;)V

    iput-object p0, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->label:I

    invoke-static {p3, v0}, Lc/c/a/c/a/a;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p3, Lcom/farsitel/bazaar/data/entity/Either;

    .line 6
    instance-of v5, p3, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v5, :cond_7

    move-object v3, p3

    check-cast v3, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/a/e/d/m/a;

    invoke-virtual {v3}, Lc/c/a/e/d/m/a;->a()J

    move-result-wide v5

    .line 7
    iput-object v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$3:Ljava/lang/Object;

    iput-wide v5, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->J$0:J

    iput v4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->label:I

    invoke-virtual {v2, p1, p2, v0}, Lc/c/a/d/c/b;->a(Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object p3

    .line 8
    :cond_7
    instance-of v4, p3, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v4, :cond_9

    move-object v4, p3

    check-cast v4, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v4

    .line 9
    iget-object v5, v2, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    iput-object v2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$mergeAccount$1;->label:I

    invoke-virtual {v5, v0}, Lc/c/a/e/d/a/a;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object p1, v4

    .line 10
    :goto_3
    invoke-interface {p2, p1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 12
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lc/c/a/d/c/b;->a:Lb/r/t;

    return-object v0
.end method

.method public final d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/c/b;->g()V

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->t()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/c/b;->d:Lc/c/a/e/d/a/c;

    invoke-virtual {v0}, Lc/c/a/e/d/a/c;->c()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/d/c/b;->a:Lb/r/t;

    new-instance v1, Lcom/farsitel/bazaar/common/model/user/User;

    invoke-virtual {p0}, Lc/c/a/d/c/b;->f()Z

    move-result v2

    invoke-virtual {p0}, Lc/c/a/d/c/b;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc/c/a/d/c/b;->b:Lc/c/a/e/d/a/a;

    invoke-virtual {v4}, Lc/c/a/e/d/a/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lc/c/a/d/c/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/farsitel/bazaar/common/model/user/User;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method
