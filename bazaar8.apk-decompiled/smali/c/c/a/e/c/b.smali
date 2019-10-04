.class public final Lc/c/a/e/c/b;
.super Ljava/lang/Object;
.source "CallExt.kt"


# direct methods
.method public static final synthetic a(Ljava/lang/Throwable;)Lcom/farsitel/bazaar/data/entity/ErrorModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lc/c/a/e/c/b;->b(Ljava/lang/Throwable;)Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lretrofit2/HttpException;)Lcom/farsitel/bazaar/data/entity/ErrorModel;
    .locals 5

    const-string v0, "Internal Server Error"

    .line 2
    invoke-virtual {p0}, Lretrofit2/HttpException;->a()Ll/D;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ll/D;->c()Lj/S;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "Server Error"

    if-nez v2, :cond_1

    .line 4
    new-instance p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response.errorBody() is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v3, v0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ll/D;->c()Lj/S;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lj/S;->x()Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v2, Lc/e/d/k;

    invoke-direct {v2}, Lc/e/d/k;-><init>()V

    invoke-virtual {v2}, Lc/e/d/k;->a()Lc/e/d/j;

    move-result-object v2

    const-class v4, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;

    invoke-virtual {v2, p0, v4}, Lc/e/d/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;

    .line 9
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->getProperties()Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 10
    :cond_2
    sget-object v2, Lcom/farsitel/bazaar/data/entity/ErrorCode;->NOT_FOUND:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/ErrorCode;->getValue()I

    move-result v2

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_4

    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$NotFound;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->getProperties()Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$NotFound;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 11
    :cond_4
    :goto_1
    sget-object v2, Lcom/farsitel/bazaar/data/entity/ErrorCode;->RATE_LIMIT_EXCEEDED:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/ErrorCode;->getValue()I

    move-result v2

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_6

    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$RateLimitExceeded;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->getProperties()Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    move-result-object p0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$RateLimitExceeded;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 12
    :cond_6
    :goto_2
    sget-object v2, Lcom/farsitel/bazaar/data/entity/ErrorCode;->INTERNAL_SERVER_ERROR:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/ErrorCode;->getValue()I

    move-result v2

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_8

    new-instance p0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;

    new-instance v1, Landroid/accounts/NetworkErrorException;

    invoke-direct {v1, v0}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, p0

    goto :goto_6

    .line 13
    :cond_8
    :goto_3
    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;

    .line 14
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->getProperties()Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    const-string v1, ""

    .line 15
    :goto_4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/ErrorResponseDto;->getProperties()Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PropertiesResponseDto;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lc/c/a/e/f/g;->a(I)Lcom/farsitel/bazaar/data/entity/ErrorCode;

    move-result-object p0

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    sget-object p0, Lcom/farsitel/bazaar/data/entity/ErrorCode;->UNKNOWN:Lcom/farsitel/bazaar/data/entity/ErrorCode;

    .line 16
    :goto_5
    invoke-direct {v0, v1, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Http;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/ErrorCode;)V

    goto :goto_6

    .line 17
    :cond_b
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;

    const-string v1, "Internal error during parsing error body"

    invoke-direct {v0, v1, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception p0

    .line 19
    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;

    invoke-direct {v0, v3, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_2
    move-exception p0

    .line 20
    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;

    invoke-direct {v0, v3, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception p0

    .line 21
    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;

    invoke-direct {v0, v3, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_4
    move-exception p0

    .line 22
    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;

    invoke-direct {v0, v3, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move-object p0, v0

    :goto_7
    return-object p0
.end method

.method public static final a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/b<",
            "TT;>;",
            "Lh/f/a/b<",
            "-TT;+TR;>;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    new-instance v0, Li/a/k;

    invoke-static {p2}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li/a/k;-><init>(Lh/c/b;I)V

    .line 24
    :try_start_0
    new-instance v1, Lc/c/a/e/c/a;

    invoke-direct {v1, v0, p0, p1}, Lc/c/a/e/c/a;-><init>(Li/a/j;Ll/b;Lh/f/a/b;)V

    invoke-interface {p0, v1}, Ll/b;->a(Ll/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 25
    new-instance v2, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-static {v1}, Lc/c/a/e/c/b;->a(Ljava/lang/Throwable;)Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;-><init>(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 26
    :goto_0
    new-instance v1, Lcom/farsitel/bazaar/data/extension/CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/farsitel/bazaar/data/extension/CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2;-><init>(Ll/b;Lh/f/a/b;)V

    invoke-interface {v0, v1}, Li/a/j;->a(Lh/f/a/b;)V

    .line 27
    invoke-virtual {v0}, Li/a/k;->h()Ljava/lang/Object;

    move-result-object p0

    .line 28
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lh/c/b/a/f;->c(Lh/c/b;)V

    :cond_0
    return-object p0
.end method

.method public static final b(Ljava/lang/Throwable;)Lcom/farsitel/bazaar/data/entity/ErrorModel;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p0}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    .line 2
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$NetworkConnection;

    const-string v1, "No Network Connection"

    invoke-direct {v0, v1, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$NetworkConnection;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Lretrofit2/HttpException;

    if-eqz v0, :cond_1

    check-cast p0, Lretrofit2/HttpException;

    invoke-static {p0}, Lc/c/a/e/c/b;->a(Lretrofit2/HttpException;)Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p0, Lcom/farsitel/bazaar/data/entity/ErrorModel;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/farsitel/bazaar/data/entity/ErrorModel;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;

    const-string v1, "Server Error"

    invoke-direct {v0, v1, p0}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Server;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static final b(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/b<",
            "TT;>;",
            "Lh/f/a/b<",
            "-TT;+TR;>;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    new-instance v0, Li/a/k;

    invoke-static {p2}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li/a/k;-><init>(Lh/c/b;I)V

    .line 7
    :try_start_0
    invoke-interface {p0}, Ll/b;->execute()Ll/D;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ll/D;->b()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    const-string v2, "response"

    .line 9
    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ll/D;->d()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 10
    :try_start_1
    new-instance v2, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v1}, Ll/D;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x0

    throw p0

    :catch_0
    move-exception v1

    .line 11
    :try_start_2
    new-instance v2, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-static {v1}, Lc/c/a/e/c/b;->a(Ljava/lang/Throwable;)Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;-><init>(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v2, Lretrofit2/HttpException;

    invoke-direct {v2, v1}, Lretrofit2/HttpException;-><init>(Ll/D;)V

    .line 13
    new-instance v1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-static {v2}, Lc/c/a/e/c/b;->a(Ljava/lang/Throwable;)Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/farsitel/bazaar/data/entity/Either$Failure;-><init>(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance v2, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    new-instance v3, Lretrofit2/HttpException;

    invoke-direct {v3, v1}, Lretrofit2/HttpException;-><init>(Ll/D;)V

    invoke-static {v3}, Lc/c/a/e/c/b;->a(Ljava/lang/Throwable;)Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;-><init>(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Lh/c/b;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 15
    new-instance v2, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-static {v1}, Lc/c/a/e/c/b;->a(Ljava/lang/Throwable;)Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;-><init>(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 16
    :goto_0
    new-instance v1, Lcom/farsitel/bazaar/data/extension/CallExtKt$syncEither$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/farsitel/bazaar/data/extension/CallExtKt$syncEither$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Ll/b;Lh/f/a/b;)V

    invoke-interface {v0, v1}, Li/a/j;->a(Lh/f/a/b;)V

    .line 17
    invoke-virtual {v0}, Li/a/k;->h()Ljava/lang/Object;

    move-result-object p0

    .line 18
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    invoke-static {p2}, Lh/c/b/a/f;->c(Lh/c/b;)V

    :cond_3
    return-object p0
.end method
