.class public final Li/a/ra$a;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/ra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Li/a/ra;Lh/c/e$c;)Lh/c/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lh/c/e$b;",
            ">(",
            "Li/a/ra;",
            "Lh/c/e$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lh/c/e$b$a;->a(Lh/c/e$b;Lh/c/e$c;)Lh/c/e$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Li/a/ra;Lh/c/e;)Lh/c/e;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lh/c/e$b$a;->a(Lh/c/e$b;Lh/c/e;)Lh/c/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Li/a/ra;ZZLh/f/a/b;ILjava/lang/Object;)Li/a/X;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 3
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Li/a/ra;->a(ZZLh/f/a/b;)Li/a/X;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Li/a/ra;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/ra;",
            "TR;",
            "Lh/f/a/c<",
            "-TR;-",
            "Lh/c/e$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lh/c/e$b$a;->a(Lh/c/e$b;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Li/a/ra;->a(Ljava/util/concurrent/CancellationException;)V

    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Li/a/ra;Lh/c/e$c;)Lh/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/ra;",
            "Lh/c/e$c<",
            "*>;)",
            "Lh/c/e;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lh/c/e$b$a;->b(Lh/c/e$b;Lh/c/e$c;)Lh/c/e;

    move-result-object p0

    return-object p0
.end method
