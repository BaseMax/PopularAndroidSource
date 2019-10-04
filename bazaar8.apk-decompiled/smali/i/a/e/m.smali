.class public final Li/a/e/m;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public volatile consumerIndex:I

.field public final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Li/a/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public volatile lastScheduledTask:Ljava/lang/Object;

.field public volatile producerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Li/a/e/m;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/e/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Li/a/e/m;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/e/m;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Li/a/e/m;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/e/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Li/a/e/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Li/a/e/m;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Li/a/e/m;->producerIndex:I

    .line 5
    iput v0, p0, Li/a/e/m;->consumerIndex:I

    return-void
.end method

.method public static final synthetic a(Li/a/e/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 1
    iget-object p0, p0, Li/a/e/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 2
    iget v0, p0, Li/a/e/m;->producerIndex:I

    iget v1, p0, Li/a/e/m;->consumerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(Li/a/e/d;)V
    .locals 5

    const-string v0, "globalQueue"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Li/a/e/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/e/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Li/a/e/m;->a(Li/a/e/d;Li/a/e/h;)V

    .line 22
    :cond_0
    :goto_0
    iget v0, p0, Li/a/e/m;->consumerIndex:I

    .line 23
    iget v2, p0, Li/a/e/m;->producerIndex:I

    sub-int v2, v0, v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v0, 0x7f

    .line 24
    invoke-static {p0}, Li/a/e/m;->a(Li/a/e/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/a/e/h;

    if-eqz v3, :cond_0

    .line 25
    sget-object v3, Li/a/e/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0}, Li/a/e/m;->a(Li/a/e/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/e/h;

    :goto_1
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p0, p1, v0}, Li/a/e/m;->a(Li/a/e/d;Li/a/e/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Li/a/e/d;Li/a/e/h;)V
    .locals 0

    .line 20
    invoke-virtual {p1, p2}, Li/a/c/l;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "GlobalQueue could not be closed yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(JLi/a/e/m;Li/a/e/d;)Z
    .locals 5

    .line 16
    iget-object v0, p3, Li/a/e/m;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Li/a/e/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 17
    iget-wide v2, v0, Li/a/e/h;->a:J

    sub-long/2addr p1, v2

    sget-wide v2, Li/a/e/k;->a:J

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    return v1

    .line 18
    :cond_0
    sget-object p1, Li/a/e/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0, v0, p4}, Li/a/e/m;->a(Li/a/e/h;Li/a/e/d;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final a(Li/a/e/h;)Z
    .locals 3

    .line 28
    invoke-virtual {p0}, Li/a/e/m;->a()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_0

    return v1

    .line 29
    :cond_0
    iget v0, p0, Li/a/e/m;->producerIndex:I

    and-int/2addr v0, v2

    .line 30
    iget-object v2, p0, Li/a/e/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    .line 31
    :cond_1
    iget-object v1, p0, Li/a/e/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 32
    sget-object p1, Li/a/e/m;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Li/a/e/h;Li/a/e/d;)Z
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalQueue"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Li/a/e/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/a/e/h;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Li/a/e/m;->b(Li/a/e/h;Li/a/e/d;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Li/a/e/m;Li/a/e/d;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "victim"

    invoke-static {v1, v3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "globalQueue"

    invoke-static {v2, v3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Li/a/e/k;->g:Li/a/e/l;

    invoke-virtual {v3}, Li/a/e/l;->a()J

    move-result-wide v3

    .line 6
    invoke-virtual/range {p1 .. p1}, Li/a/e/m;->a()I

    move-result v5

    if-nez v5, :cond_0

    .line 7
    invoke-virtual {v0, v3, v4, v1, v2}, Li/a/e/m;->a(JLi/a/e/m;Li/a/e/d;)Z

    move-result v1

    return v1

    .line 8
    :cond_0
    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lh/h/g;->a(II)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v5, :cond_6

    .line 9
    :cond_1
    iget v10, v1, Li/a/e/m;->consumerIndex:I

    .line 10
    iget v11, v1, Li/a/e/m;->producerIndex:I

    sub-int v11, v10, v11

    const/4 v12, 0x0

    if-nez v11, :cond_2

    goto :goto_3

    :cond_2
    and-int/lit8 v11, v10, 0x7f

    .line 11
    invoke-static/range {p1 .. p1}, Li/a/e/m;->a(Li/a/e/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Li/a/e/h;

    if-eqz v13, :cond_1

    .line 12
    iget-wide v13, v13, Li/a/e/h;->a:J

    sub-long v13, v3, v13

    sget-wide v15, Li/a/e/k;->a:J

    cmp-long v17, v13, v15

    if-gez v17, :cond_4

    invoke-virtual/range {p1 .. p1}, Li/a/e/m;->a()I

    move-result v13

    sget v14, Li/a/e/k;->b:I

    if-le v13, v14, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v13, 0x1

    :goto_2
    if-nez v13, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    sget-object v13, Li/a/e/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v1, v10, v14}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 14
    invoke-static/range {p1 .. p1}, Li/a/e/m;->a(Li/a/e/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Li/a/e/h;

    :goto_3
    if-eqz v12, :cond_6

    .line 15
    invoke-virtual {v0, v12, v2}, Li/a/e/m;->a(Li/a/e/h;Li/a/e/d;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    return v9
.end method

.method public final b()Li/a/e/h;
    .locals 5

    .line 1
    sget-object v0, Li/a/e/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/e/h;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Li/a/e/m;->consumerIndex:I

    .line 3
    iget v2, p0, Li/a/e/m;->producerIndex:I

    sub-int v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x7f

    .line 4
    invoke-static {p0}, Li/a/e/m;->a(Li/a/e/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/a/e/h;

    if-eqz v3, :cond_0

    .line 5
    sget-object v3, Li/a/e/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0}, Li/a/e/m;->a(Li/a/e/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Li/a/e/h;

    :goto_0
    return-object v1
.end method

.method public final b(Li/a/e/d;)V
    .locals 7

    .line 9
    invoke-virtual {p0}, Li/a/e/m;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh/h/g;->a(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    :cond_0
    iget v2, p0, Li/a/e/m;->consumerIndex:I

    .line 11
    iget v3, p0, Li/a/e/m;->producerIndex:I

    sub-int v3, v2, v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x7f

    .line 12
    invoke-static {p0}, Li/a/e/m;->a(Li/a/e/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li/a/e/h;

    if-eqz v5, :cond_0

    .line 13
    sget-object v5, Li/a/e/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, p0, v2, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-static {p0}, Li/a/e/m;->a(Li/a/e/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Li/a/e/h;

    :goto_1
    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {p0, p1, v4}, Li/a/e/m;->a(Li/a/e/d;Li/a/e/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Li/a/e/h;Li/a/e/d;)Z
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalQueue"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Li/a/e/m;->a(Li/a/e/h;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Li/a/e/m;->b(Li/a/e/d;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/e/m;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/a/e/m;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li/a/e/m;->a()I

    move-result v0

    :goto_0
    return v0
.end method
