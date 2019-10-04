.class public Li/a/e/d;
.super Li/a/c/l;
.source "Tasks.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/c/l<",
        "Li/a/e/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Li/a/c/l;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/scheduling/TaskMode;)Li/a/e/h;
    .locals 11

    const-string v0, "mode"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_0
    iget-object v0, p0, Li/a/c/l;->_cur$internal:Ljava/lang/Object;

    check-cast v0, Li/a/c/m;

    .line 2
    :cond_0
    :goto_1
    iget-wide v3, v0, Li/a/c/m;->_state$internal:J

    const-wide/high16 v1, 0x1000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v1, v5

    if-eqz v8, :cond_1

    .line 3
    sget-object v7, Li/a/c/m;->c:Li/a/c/v;

    goto/16 :goto_4

    .line 4
    :cond_1
    sget-object v1, Li/a/c/m;->d:Li/a/c/m$a;

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, v3

    const/4 v5, 0x0

    shr-long/2addr v1, v5

    long-to-int v8, v1

    const-wide v1, 0xfffffffc0000000L

    and-long/2addr v1, v3

    const/16 v6, 0x1e

    shr-long/2addr v1, v6

    long-to-int v2, v1

    .line 5
    invoke-static {v0}, Li/a/c/m;->a(Li/a/c/m;)I

    move-result v1

    and-int/2addr v1, v2

    invoke-static {v0}, Li/a/c/m;->a(Li/a/c/m;)I

    move-result v2

    and-int/2addr v2, v8

    if-ne v1, v2, :cond_2

    goto :goto_4

    .line 6
    :cond_2
    iget-object v1, v0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v0}, Li/a/c/m;->a(Li/a/c/m;)I

    move-result v2

    and-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 7
    invoke-static {v0}, Li/a/c/m;->b(Li/a/c/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 8
    :cond_3
    instance-of v1, v9, Li/a/c/m$b;

    if-eqz v1, :cond_4

    goto :goto_4

    .line 9
    :cond_4
    move-object v1, v9

    check-cast v1, Li/a/e/h;

    .line 10
    invoke-virtual {v1}, Li/a/e/h;->a()Lkotlinx/coroutines/scheduling/TaskMode;

    move-result-object v1

    if-ne v1, p1, :cond_5

    const/4 v5, 0x1

    :cond_5
    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v8, 0x1

    const v2, 0x3fffffff    # 1.9999999f

    and-int v10, v1, v2

    .line 11
    sget-object v1, Li/a/c/m;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v2, Li/a/c/m;->d:Li/a/c/m$a;

    invoke-virtual {v2, v3, v4, v10}, Li/a/c/m$a;->a(JI)J

    move-result-wide v5

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12
    iget-object v1, v0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v0}, Li/a/c/m;->a(Li/a/c/m;)I

    move-result v2

    and-int/2addr v2, v8

    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 13
    :cond_7
    invoke-static {v0}, Li/a/c/m;->b(Li/a/c/m;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    move-object v1, v0

    .line 14
    :goto_2
    invoke-static {v1, v8, v10}, Li/a/c/m;->a(Li/a/c/m;II)Li/a/c/m;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    move-object v7, v9

    .line 15
    :goto_4
    sget-object v1, Li/a/c/m;->c:Li/a/c/v;

    if-eq v7, v1, :cond_a

    .line 16
    check-cast v7, Li/a/e/h;

    return-object v7

    .line 17
    :cond_a
    sget-object v1, Li/a/c/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Li/a/c/m;->e()Li/a/c/m;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
