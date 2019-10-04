.class public abstract Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
.super Ljava/lang/Object;
.source "ContinuationImpl.kt"

# interfaces
.implements Lh/c/b;
.implements Lh/c/b/a/c;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/c/b<",
        "Ljava/lang/Object;",
        ">;",
        "Lh/c/b/a/c;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final completion:Lh/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/c/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->completion:Lh/c/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 0
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    move-object p1, p0

    .line 1
    :goto_0
    invoke-static {p1}, Lh/c/b/a/f;->b(Lh/c/b;)V

    .line 2
    iget-object v1, p1, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->completion:Lh/c/b;

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v0}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_1
    invoke-virtual {p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->f()V

    .line 8
    instance-of p1, v1, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-eqz p1, :cond_1

    .line 9
    move-object p1, v1

    check-cast p1, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1, v0}, Lh/c/b;->b(Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public c()Lh/c/b/a/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->completion:Lh/c/b;

    instance-of v1, v0, Lh/c/b/a/c;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lh/c/b/a/c;

    return-object v0
.end method

.method public abstract d(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public d()Ljava/lang/StackTraceElement;
    .locals 1

    .line 1
    invoke-static {p0}, Lh/c/b/a/e;->c(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lh/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/c/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->completion:Lh/c/b;

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuation at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->d()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
