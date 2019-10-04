.class public final Li/a/B;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlinx.coroutines.scheduler"

    .line 1
    invoke-static {v0}, Li/a/c/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_1

    const v2, 0x1ad6f

    if-ne v1, v2, :cond_3

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    sput-boolean v0, Li/a/B;->a:Z

    return-void

    .line 4
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System property \'kotlinx.coroutines.scheduler\' has unrecognized value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final a(Li/a/H;Lh/c/e;)Lh/c/e;
    .locals 2

    const-string v0, "$this$newCoroutineContext"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Li/a/H;->a()Lh/c/e;

    move-result-object p0

    invoke-interface {p0, p1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object p0

    .line 3
    invoke-static {}, Li/a/K;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Li/a/F;

    invoke-static {}, Li/a/K;->b()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Li/a/F;-><init>(J)V

    invoke-interface {p0, p1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 4
    :goto_0
    invoke-static {}, Li/a/W;->a()Li/a/C;

    move-result-object v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lh/c/c;->c:Lh/c/c$b;

    invoke-interface {p0, v0}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {}, Li/a/W;->a()Li/a/C;

    move-result-object p0

    invoke-interface {p1, p0}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static final a()Li/a/C;
    .locals 1

    .line 1
    sget-boolean v0, Li/a/B;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Li/a/e/b;->g:Li/a/e/b;

    goto :goto_0

    :cond_0
    sget-object v0, Li/a/t;->c:Li/a/t;

    :goto_0
    return-object v0
.end method

.method public static final a(Lh/c/e;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$coroutineName"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Li/a/K;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    sget-object v0, Li/a/F;->a:Li/a/F$a;

    invoke-interface {p0, v0}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object v0

    check-cast v0, Li/a/F;

    if-eqz v0, :cond_2

    .line 8
    sget-object v1, Li/a/G;->a:Li/a/G$a;

    invoke-interface {p0, v1}, Lh/c/e;->get(Lh/c/e$c;)Lh/c/e$b;

    move-result-object p0

    check-cast p0, Li/a/G;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Li/a/G;->x()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "coroutine"

    .line 9
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x23

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Li/a/F;->x()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method
