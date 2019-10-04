.class public final Li/a/c/m;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/c/m$b;,
        Li/a/c/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final c:Li/a/c/v;

.field public static final d:Li/a/c/m$a;


# instance fields
.field public volatile _next:Ljava/lang/Object;

.field public volatile synthetic _state$internal:J

.field public final e:I

.field public synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final g:I

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li/a/c/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/a/c/m$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Li/a/c/m;->d:Li/a/c/m$a;

    .line 1
    new-instance v0, Li/a/c/v;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/c/m;->c:Li/a/c/v;

    const-class v0, Li/a/c/m;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/c/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Li/a/c/m;

    const-string v1, "_state$internal"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/c/m;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Li/a/c/m;->g:I

    iput-boolean p2, p0, Li/a/c/m;->h:Z

    .line 2
    iget p1, p0, Li/a/c/m;->g:I

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Li/a/c/m;->e:I

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Li/a/c/m;->_next:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Li/a/c/m;->_state$internal:J

    .line 5
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p2, p0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    iget p1, p0, Li/a/c/m;->e:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "Check failed."

    if-eqz p1, :cond_3

    .line 7
    iget p1, p0, Li/a/c/m;->g:I

    iget v2, p0, Li/a/c/m;->e:I

    and-int/2addr p1, v2

    if-nez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Li/a/c/m;)I
    .locals 0

    .line 1
    iget p0, p0, Li/a/c/m;->e:I

    return p0
.end method

.method public static final synthetic a(Li/a/c/m;II)Li/a/c/m;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Li/a/c/m;->a(II)Li/a/c/m;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Li/a/c/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Li/a/c/m;->h:Z

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-wide v3, p0, Li/a/c/m;->_state$internal:J

    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v0, v3

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 15
    sget-object p1, Li/a/c/m;->d:Li/a/c/m$a;

    invoke-virtual {p1, v3, v4}, Li/a/c/m$a;->a(J)I

    move-result p1

    return p1

    .line 16
    :cond_1
    sget-object v0, Li/a/c/m;->d:Li/a/c/m$a;

    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v3

    const/4 v9, 0x0

    shr-long/2addr v0, v9

    long-to-int v1, v0

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v5, v3

    const/16 v0, 0x1e

    shr-long/2addr v5, v0

    long-to-int v0, v5

    .line 17
    iget v10, p0, Li/a/c/m;->e:I

    add-int/lit8 v2, v0, 0x2

    and-int/2addr v2, v10

    and-int v5, v1, v10

    const/4 v6, 0x1

    if-ne v2, v5, :cond_2

    return v6

    .line 18
    :cond_2
    iget-boolean v2, p0, Li/a/c/m;->h:Z

    const v5, 0x3fffffff    # 1.9999999f

    if-nez v2, :cond_4

    iget-object v2, p0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v11, v0, v10

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 19
    iget v2, p0, Li/a/c/m;->g:I

    const/16 v3, 0x400

    if-lt v2, v3, :cond_3

    sub-int/2addr v0, v1

    and-int/2addr v0, v5

    shr-int/lit8 v1, v2, 0x1

    if-le v0, v1, :cond_0

    :cond_3
    return v6

    :cond_4
    add-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v5

    .line 20
    sget-object v2, Li/a/c/m;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v5, Li/a/c/m;->d:Li/a/c/m$a;

    invoke-virtual {v5, v3, v4, v1}, Li/a/c/m$a;->b(JI)J

    move-result-wide v5

    move-object v1, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v2, v0, v10

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v1, p0

    .line 22
    :goto_0
    iget-wide v2, v1, Li/a/c/m;->_state$internal:J

    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v2, v4

    cmp-long v4, v2, v7

    if-nez v4, :cond_5

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {v1}, Li/a/c/m;->e()Li/a/c/m;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Li/a/c/m;->a(ILjava/lang/Object;)Li/a/c/m;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return v9
.end method

.method public final a(II)Li/a/c/m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Li/a/c/m<",
            "TE;>;"
        }
    .end annotation

    .line 24
    :cond_0
    iget-wide v2, p0, Li/a/c/m;->_state$internal:J

    .line 25
    sget-object v0, Li/a/c/m;->d:Li/a/c/m$a;

    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v6, v0

    .line 26
    invoke-static {}, Li/a/K;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v6, p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v7, v0, v4

    if-eqz v7, :cond_4

    .line 27
    invoke-virtual {p0}, Li/a/c/m;->e()Li/a/c/m;

    move-result-object p1

    return-object p1

    .line 28
    :cond_4
    sget-object v0, Li/a/c/m;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Li/a/c/m;->d:Li/a/c/m$a;

    invoke-virtual {v1, v2, v3, p2}, Li/a/c/m$a;->a(JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object p1, p0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p2, p0, Li/a/c/m;->e:I

    and-int/2addr p2, v6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final a(ILjava/lang/Object;)Li/a/c/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Li/a/c/m<",
            "TE;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Li/a/c/m;->e:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Li/a/c/m$b;

    if-eqz v1, :cond_0

    check-cast v0, Li/a/c/m$b;

    iget v0, v0, Li/a/c/m$b;->a:I

    if-ne v0, p1, :cond_0

    .line 5
    iget-object v0, p0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Li/a/c/m;->e:I

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(J)Li/a/c/m;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/a/c/m<",
            "TE;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Li/a/c/m;

    iget v1, p0, Li/a/c/m;->g:I

    mul-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Li/a/c/m;->h:Z

    invoke-direct {v0, v1, v2}, Li/a/c/m;-><init>(IZ)V

    .line 7
    sget-object v1, Li/a/c/m;->d:Li/a/c/m$a;

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, p1

    const/4 v3, 0x0

    shr-long/2addr v1, v3

    long-to-int v2, v1

    const-wide v3, 0xfffffffc0000000L

    and-long/2addr v3, p1

    const/16 v1, 0x1e

    shr-long/2addr v3, v1

    long-to-int v1, v3

    .line 8
    :goto_0
    iget v3, p0, Li/a/c/m;->e:I

    and-int v4, v2, v3

    and-int v5, v1, v3

    if-eq v4, v5, :cond_1

    .line 9
    iget-object v4, p0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Li/a/c/m$b;

    invoke-direct {v3, v2}, Li/a/c/m$b;-><init>(I)V

    .line 10
    :goto_1
    iget-object v4, v0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v5, v0, Li/a/c/m;->e:I

    and-int/2addr v5, v2

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Li/a/c/m;->d:Li/a/c/m$a;

    const-wide/high16 v2, 0x1000000000000000L

    invoke-virtual {v1, p1, p2, v2, v3}, Li/a/c/m$a;->a(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Li/a/c/m;->_state$internal:J

    return-object v0
.end method

.method public final a()Z
    .locals 10

    .line 12
    :cond_0
    iget-wide v2, p0, Li/a/c/m;->_state$internal:J

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_1

    return v6

    :cond_1
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v9, v4, v7

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    or-long v4, v2, v0

    .line 13
    sget-object v0, Li/a/c/m;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final b()I
    .locals 6

    .line 2
    sget-object v0, Li/a/c/m;->d:Li/a/c/m$a;

    iget-wide v0, p0, Li/a/c/m;->_state$internal:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v0, v4

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    sub-int/2addr v1, v3

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public final b(J)Li/a/c/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/a/c/m<",
            "TE;>;"
        }
    .end annotation

    .line 3
    :goto_0
    iget-object v0, p0, Li/a/c/m;->_next:Ljava/lang/Object;

    check-cast v0, Li/a/c/m;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Li/a/c/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Li/a/c/m;->a(J)Li/a/c/m;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 7

    .line 1
    sget-object v0, Li/a/c/m;->d:Li/a/c/m$a;

    iget-wide v0, p0, Li/a/c/m;->_state$internal:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v0, v5

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    if-ne v3, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public final d()J
    .locals 9

    .line 1
    :cond_0
    iget-wide v2, p0, Li/a/c/m;->_state$internal:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    return-wide v2

    :cond_1
    or-long v6, v2, v0

    .line 2
    sget-object v0, Li/a/c/m;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6
.end method

.method public final e()Li/a/c/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/c/m<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/a/c/m;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Li/a/c/m;->b(J)Li/a/c/m;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 10

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Li/a/c/m;->_state$internal:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v0, v4

    if-eqz v7, :cond_1

    .line 2
    sget-object v6, Li/a/c/m;->c:Li/a/c/v;

    goto/16 :goto_3

    .line 3
    :cond_1
    sget-object v0, Li/a/c/m;->d:Li/a/c/m$a;

    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v7, v0

    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v1, v0

    .line 4
    invoke-static {p0}, Li/a/c/m;->a(Li/a/c/m;)I

    move-result v0

    and-int/2addr v0, v1

    invoke-static {p0}, Li/a/c/m;->a(Li/a/c/m;)I

    move-result v1

    and-int/2addr v1, v7

    if-ne v0, v1, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    iget-object v0, p0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {p0}, Li/a/c/m;->a(Li/a/c/m;)I

    move-result v1

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 6
    invoke-static {p0}, Li/a/c/m;->b(Li/a/c/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 7
    :cond_3
    instance-of v0, v8, Li/a/c/m$b;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v7, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    and-int v9, v0, v1

    .line 8
    sget-object v0, Li/a/c/m;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Li/a/c/m;->d:Li/a/c/m$a;

    invoke-virtual {v1, v2, v3, v9}, Li/a/c/m$a;->a(JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Li/a/c/m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {p0}, Li/a/c/m;->a(Li/a/c/m;)I

    move-result v1

    and-int/2addr v1, v7

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_5
    invoke-static {p0}, Li/a/c/m;->b(Li/a/c/m;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, p0

    .line 11
    :goto_1
    invoke-static {v0, v7, v9}, Li/a/c/m;->a(Li/a/c/m;II)Li/a/c/m;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    move-object v6, v8

    :goto_3
    return-object v6
.end method
