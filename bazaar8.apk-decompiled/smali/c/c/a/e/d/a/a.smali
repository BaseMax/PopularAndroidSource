.class public final Lc/c/a/e/d/a/a;
.super Ljava/lang/Object;
.source "AccountRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/a/b/a;

.field public final b:Lc/c/a/e/d/a/a/a;

.field public final c:Lc/c/a/e/d/m/a/c;

.field public final d:Lc/c/a/e/d/a/c;

.field public final e:Lc/c/a/e/d/u/a;

.field public final f:Lc/c/a/e/h/a/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/b/a;Lc/c/a/e/d/a/a/a;Lc/c/a/e/d/m/a/c;Lc/c/a/e/d/a/c;Lc/c/a/e/d/u/a;Lc/c/a/e/h/a/c;)V
    .locals 1

    const-string v0, "accountRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountLocalDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentLocalDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCache"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    iput-object p2, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    iput-object p3, p0, Lc/c/a/e/d/a/a;->c:Lc/c/a/e/d/m/a/c;

    iput-object p4, p0, Lc/c/a/e/d/a/a;->d:Lc/c/a/e/d/a/c;

    iput-object p5, p0, Lc/c/a/e/d/a/a;->e:Lc/c/a/e/d/u/a;

    iput-object p6, p0, Lc/c/a/e/d/a/a;->f:Lc/c/a/e/h/a/c;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->A()V

    return-void
.end method

.method public final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->B()V

    return-void
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/d/a/b/b/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/a/b/a;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/a/b/a;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/g/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;

    invoke-direct {v0, p0, p3}, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;-><init>(Lc/c/a/e/d/a/a;Lh/c/b;)V

    :goto_0
    iget-object p3, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/e/d/a/a;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p3, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$registerDeviceAndGetInfo$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lc/c/a/e/d/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 8
    :goto_1
    move-object p2, p3

    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    .line 9
    invoke-virtual {p1, p2}, Lc/c/a/e/d/a/a;->a(Lcom/farsitel/bazaar/data/entity/Either;)V

    return-object p3
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .line 14
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/a/a/a;->a(J)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/Either;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/g/f;",
            ">;)V"
        }
    .end annotation

    .line 11
    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/f;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/a/a/a;->a(Lc/c/a/e/g/f;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc/c/a/e/d/a/a;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nickName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/a/a/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 17
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->c()I

    move-result v0

    return v0
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lc/c/a/e/d/a/a;->d:Lc/c/a/e/d/a/c;

    invoke-virtual {v0}, Lc/c/a/e/d/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lc/c/a/e/d/a/a;->f:Lc/c/a/e/h/a/c;

    invoke-virtual {v1}, Lc/c/a/e/h/a/c;->s()V

    .line 14
    iget-object v1, p0, Lc/c/a/e/d/a/a;->d:Lc/c/a/e/d/a/c;

    invoke-virtual {v1}, Lc/c/a/e/d/a/c;->d()V

    .line 15
    iget-object v1, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v1}, Lc/c/a/e/d/a/a/a;->z()V

    .line 16
    iget-object v1, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    invoke-virtual {v1, v0, p1}, Lc/c/a/e/d/a/b/a;->d(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/WaitingTime;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/a/b/a;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;

    invoke-direct {v0, p0, p3}, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;-><init>(Lc/c/a/e/d/a/a;Lh/c/b;)V

    :goto_0
    iget-object p3, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/a/a;

    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-static {p3}, Lh/e;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p3, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$verifyEmailOtpToken$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lc/c/a/e/d/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 8
    :goto_1
    move-object v1, p3

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 9
    instance-of v1, v1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, v0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v1, p1}, Lc/c/a/e/d/a/a/a;->c(Ljava/lang/String;)V

    .line 11
    iget-object p1, v0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {p1, p2}, Lc/c/a/e/d/a/a/a;->b(Ljava/lang/String;)V

    :cond_4
    return-object p3
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/a/a/a;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/a/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lh/c/b;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/d/m/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;-><init>(Lc/c/a/e/d/a/a;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/a/a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    invoke-virtual {p0}, Lc/c/a/e/d/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lc/c/a/e/d/a/a;->f()Ljava/lang/String;

    move-result-object v4

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$mergeAccount$1;->label:I

    invoke-virtual {p1, v2, v4, v0}, Lc/c/a/e/d/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 7
    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 8
    instance-of v2, v1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v2, :cond_4

    .line 9
    iget-object v0, v0, Lc/c/a/e/d/a/a;->c:Lc/c/a/e/d/m/a/c;

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/d/m/a;

    invoke-virtual {v1}, Lc/c/a/e/d/m/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/m/a/c;->a(J)V

    :cond_4
    return-object p1
.end method

.method public final c(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/WaitingTime;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/a/b/a;->c(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/LoginResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/d/a/b/a;->d(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lc/c/a/e/d/a/a;->e:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/a/a/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final d()I
    .locals 1

    .line 8
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->e()I

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;-><init>(Lc/c/a/e/d/a/a;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/a/a;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lc/c/a/e/d/a/a;->a:Lc/c/a/e/d/a/b/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/account/AccountRepository$setNickName$1;->label:I

    invoke-virtual {p2, p1, v0}, Lc/c/a/e/d/a/b/a;->e(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    move-object v1, p2

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 6
    instance-of v1, v1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v1, :cond_4

    .line 7
    iget-object v0, v0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/a/a/a;->i(Ljava/lang/String;)V

    :cond_4
    return-object p2
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->n()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->o()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->p()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->q()Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->r()Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->s()Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->t()Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->u()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->d:Lc/c/a/e/d/a/c;

    invoke-virtual {v0}, Lc/c/a/e/d/a/c;->c()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->v()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->w()Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->x()Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/a;->b:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/a;->y()Z

    move-result v0

    return v0
.end method

.method public final z()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc/c/a/e/d/a/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/a;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
