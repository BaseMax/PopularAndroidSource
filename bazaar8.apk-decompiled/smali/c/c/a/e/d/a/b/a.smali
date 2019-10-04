.class public final Lc/c/a/e/d/a/b/a;
.super Ljava/lang/Object;
.source "AccountRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/a/b/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/b/c;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    new-instance v1, Lc/c/a/e/d/a/b/a/e;

    invoke-direct {v1}, Lc/c/a/e/d/a/b/a/e;-><init>()V

    invoke-interface {v0, v1}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/e;)Ll/b;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$getUserInfo$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$getUserInfo$2;

    invoke-static {v0, v1, p1}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

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
    new-instance v0, Lc/c/a/e/d/a/b/a/a;

    invoke-direct {v0, p1}, Lc/c/a/e/d/a/b/a/a;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    invoke-interface {p1, v0}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/a;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$changePhoneNumber$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$changePhoneNumber$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lc/c/a/e/d/m/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    new-instance v1, Lc/c/a/e/d/a/b/a/g;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/a/b/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/g;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$mergeAccount$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$mergeAccount$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    new-instance v1, Lc/c/a/e/d/a/b/a/c;

    invoke-direct {v1, p1}, Lc/c/a/e/d/a/b/a/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/c;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$getMergeAccountOtpToken$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$getMergeAccountOtpToken$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    new-instance v1, Lc/c/a/e/d/a/b/a/h;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/a/b/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/h;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$registerDeviceAndGetInfo$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$registerDeviceAndGetInfo$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

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

    .line 1
    new-instance v0, Lc/c/a/e/d/a/b/a/d;

    invoke-direct {v0, p1}, Lc/c/a/e/d/a/b/a/d;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    invoke-interface {p1, v0}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/d;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$getOtpToken$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$getOtpToken$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    new-instance v1, Lc/c/a/e/d/a/b/a/j;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/a/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/j;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyEmailOtpToken$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyEmailOtpToken$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    new-instance v1, Lc/c/a/e/d/a/b/a/f;

    invoke-direct {v1, p1}, Lc/c/a/e/d/a/b/a/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/f;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$logout$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$logout$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
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

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    new-instance v1, Lc/c/a/e/d/a/b/a/k;

    invoke-direct {v1, p1, p2}, Lc/c/a/e/d/a/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/k;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyOtpToken$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyOtpToken$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Lc/c/a/e/d/a/b/a;->a:Lc/c/a/e/d/a/b/c;

    new-instance v1, Lc/c/a/e/d/a/b/a/i;

    invoke-direct {v1, p1}, Lc/c/a/e/d/a/b/a/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/a/b/c;->a(Lc/c/a/e/d/a/b/a/i;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$setNickName$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$setNickName$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
