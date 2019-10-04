.class public final Lcom/farsitel/bazaar/data/entity/EitherKt;
.super Ljava/lang/Object;
.source "Either.kt"


# direct methods
.method public static final fold(Lcom/farsitel/bazaar/data/entity/Either;Lh/f/a/b;Lh/f/a/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+TT;>;",
            "Lh/f/a/b<",
            "-TT;+TR;>;",
            "Lh/f/a/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "$this$fold"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifSuccess"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifFailure"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p1, p0, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p0

    invoke-interface {p2, p0}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final getOrDefault(Lcom/farsitel/bazaar/data/entity/Either;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+TV;>;TV;)TV;"
        }
    .end annotation

    const-string v0, "$this$getOrDefault"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrNull(Lcom/farsitel/bazaar/data/entity/Either;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static final getOrNull(Lcom/farsitel/bazaar/data/entity/Either;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+TV;>;)TV;"
        }
    .end annotation

    const-string v0, "$this$getOrNull"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static final map(Lcom/farsitel/bazaar/data/entity/Either;Lh/f/a/b;)Lcom/farsitel/bazaar/data/entity/Either;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+TV;>;",
            "Lh/f/a/b<",
            "-TV;+TV2;>;)",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "TV2;>;"
        }
    .end annotation

    const-string v0, "$this$map"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    check-cast p0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
