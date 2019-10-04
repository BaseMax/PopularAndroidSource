.class public final Li/a/Ja;
.super Ljava/lang/Object;
.source "ResumeMode.kt"


# direct methods
.method public static final a(Lh/c/b;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;TT;I)V"
        }
    .end annotation

    const-string v0, "$this$resumeMode"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    check-cast p0, Li/a/Q;

    .line 3
    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object p2

    iget-object v0, p0, Li/a/Q;->f:Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object p0, p0, Li/a/Q;->h:Lh/c/b;

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 6
    sget-object p0, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p2, v0}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw p0

    .line 8
    :cond_2
    invoke-static {p0, p1}, Li/a/T;->b(Lh/c/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p0, p1}, Li/a/T;->a(Lh/c/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_4
    sget-object p2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Lh/c/b;Ljava/lang/Throwable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            "I)V"
        }
    .end annotation

    const-string v0, "$this$resumeUninterceptedWithExceptionMode"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    invoke-interface {p0}, Lh/c/b;->b()Lh/c/e;

    move-result-object p2

    const/4 v0, 0x0

    .line 13
    invoke-static {p2, v0}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    :try_start_0
    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    sget-object p0, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {p2, v0}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw p0

    .line 16
    :cond_2
    sget-object p2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {p0}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object p0

    invoke-static {p0, p1}, Li/a/T;->a(Lh/c/b;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {p0}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object p0

    sget-object p2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final b(Lh/c/b;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;TT;I)V"
        }
    .end annotation

    const-string v0, "$this$resumeUninterceptedMode"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    invoke-interface {p0}, Lh/c/b;->b()Lh/c/e;

    move-result-object p2

    const/4 v0, 0x0

    .line 14
    invoke-static {p2, v0}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    :try_start_0
    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    sget-object p0, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {p2, v0}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw p0

    .line 17
    :cond_2
    sget-object p2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {p0}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object p0

    invoke-static {p0, p1}, Li/a/T;->a(Lh/c/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {p0}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object p0

    sget-object p2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lh/c/b;Ljava/lang/Throwable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            "I)V"
        }
    .end annotation

    const-string v0, "$this$resumeWithExceptionMode"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    check-cast p0, Li/a/Q;

    .line 3
    invoke-virtual {p0}, Li/a/Q;->b()Lh/c/e;

    move-result-object p2

    iget-object v0, p0, Li/a/Q;->f:Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Li/a/c/z;->b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object p0, p0, Li/a/Q;->h:Lh/c/b;

    .line 6
    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1, p0}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 7
    sget-object p0, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p2, v0}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Li/a/c/z;->a(Lh/c/e;Ljava/lang/Object;)V

    throw p0

    .line 9
    :cond_2
    invoke-static {p0, p1}, Li/a/T;->b(Lh/c/b;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p0, p1}, Li/a/T;->a(Lh/c/b;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_4
    sget-object p2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lh/c/b;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
