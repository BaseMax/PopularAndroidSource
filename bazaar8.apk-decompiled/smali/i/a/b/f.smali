.class public final Li/a/b/f;
.super Li/a/b/d;
.source "ArrayBroadcastChannel.kt"

# interfaces
.implements Li/a/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/b/d<",
        "TE;>;",
        "Li/a/b/h<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/locks/ReentrantLock;

.field public final d:[Ljava/lang/Object;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/a/b/f$a<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field public final f:I

.field public volatile head:J

.field public volatile size:I

.field public volatile tail:J


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/a/b/d;-><init>()V

    iput p1, p0, Li/a/b/f;->f:I

    .line 2
    iget p1, p0, Li/a/b/f;->f:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Li/a/b/f;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    iget p1, p0, Li/a/b/f;->f:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Li/a/b/f;->d:[Ljava/lang/Object;

    .line 5
    invoke-static {}, Li/a/c/d;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li/a/b/f;->e:Ljava/util/List;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ArrayBroadcastChannel capacity must be at least 1, but "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Li/a/b/f;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was specified"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic a(Li/a/b/f;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Li/a/b/f;->tail:J

    return-wide v0
.end method

.method public static final synthetic a(Li/a/b/f;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Li/a/b/f;->a(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Li/a/b/f;Li/a/b/f$a;Li/a/b/f$a;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Li/a/b/f;->a(Li/a/b/f$a;Li/a/b/f$a;)V

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Li/a/b/f;->d:[Ljava/lang/Object;

    iget v1, p0, Li/a/b/f;->f:I

    int-to-long v1, v1

    rem-long/2addr p1, v1

    long-to-int p2, p1

    aget-object p1, v0, p2

    return-object p1
.end method

.method public final a(Li/a/b/f$a;Li/a/b/f$a;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/f$a<",
            "TE;>;",
            "Li/a/b/f$a<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Li/a/b/f;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_0

    .line 8
    :try_start_0
    iget-wide v2, p0, Li/a/b/f;->tail:J

    iput-wide v2, p1, Li/a/b/f$a;->subHead:J

    .line 9
    iget-object v2, p0, Li/a/b/f;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 10
    iget-object v3, p0, Li/a/b/f;->e:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    .line 12
    :try_start_1
    iget-object p1, p0, Li/a/b/f;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-wide v2, p0, Li/a/b/f;->head:J

    iget-wide p1, p2, Li/a/b/f$a;->subHead:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v2, p1

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 14
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Li/a/b/f;->o()J

    move-result-wide p1

    .line 15
    iget-wide v2, p0, Li/a/b/f;->tail:J

    .line 16
    iget-wide v4, p0, Li/a/b/f;->head:J

    .line 17
    invoke-static {p1, p2, v2, v3}, Lh/h/g;->b(JJ)J

    move-result-wide p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v6, p1, v4

    if-gtz v6, :cond_2

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 19
    :cond_2
    :try_start_3
    iget v6, p0, Li/a/b/f;->size:I

    :cond_3
    :goto_1
    cmp-long v7, v4, p1

    if-gez v7, :cond_a

    .line 20
    iget-object v7, p0, Li/a/b/f;->d:[Ljava/lang/Object;

    iget v8, p0, Li/a/b/f;->f:I

    int-to-long v8, v8

    rem-long v8, v4, v8

    long-to-int v9, v8

    aput-object v0, v7, v9

    .line 21
    iget v7, p0, Li/a/b/f;->f:I

    if-lt v6, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 22
    iput-wide v4, p0, Li/a/b/f;->head:J

    add-int/lit8 v6, v6, -0x1

    .line 23
    iput v6, p0, Li/a/b/f;->size:I

    if-eqz v7, :cond_3

    .line 24
    :cond_5
    invoke-virtual {p0}, Li/a/b/d;->m()Li/a/b/w;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 25
    instance-of v10, v7, Li/a/b/o;

    if-eqz v10, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v7, :cond_9

    .line 26
    invoke-virtual {v7, v0}, Li/a/b/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 27
    iget-object p1, p0, Li/a/b/f;->d:[Ljava/lang/Object;

    iget p2, p0, Li/a/b/f;->f:I

    int-to-long v4, p2

    rem-long v4, v2, v4

    long-to-int p2, v4

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Li/a/b/w;->q()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, p2

    add-int/lit8 v6, v6, 0x1

    .line 28
    iput v6, p0, Li/a/b/f;->size:I

    add-long/2addr v2, v8

    .line 29
    iput-wide v2, p0, Li/a/b/f;->tail:J

    .line 30
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v7, :cond_7

    .line 31
    invoke-virtual {v7, v10}, Li/a/b/w;->c(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Li/a/b/f;->n()V

    move-object p1, v0

    move-object p2, p1

    goto/16 :goto_0

    .line 33
    :cond_7
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    .line 34
    :cond_8
    :try_start_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_9
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 36
    :cond_a
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 3
    invoke-super {p0, p1}, Li/a/b/d;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Li/a/b/f;->n()V

    const/4 p1, 0x1

    return p1
.end method

.method public b()Li/a/b/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/t<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/a/b/f$a;

    invoke-direct {v0, p0}, Li/a/b/f$a;-><init>(Li/a/b/f;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 2
    invoke-static {p0, v0, v1, v2, v1}, Li/a/b/f;->a(Li/a/b/f;Li/a/b/f$a;Li/a/b/f$a;ILjava/lang/Object;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Li/a/b/f;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Li/a/b/d;->f()Li/a/b/o;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 6
    :cond_0
    :try_start_1
    iget v1, p0, Li/a/b/f;->size:I

    .line 7
    iget v2, p0, Li/a/b/f;->f:I

    if-lt v1, v2, :cond_1

    sget-object p1, Li/a/b/c;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 8
    :cond_1
    :try_start_2
    iget-wide v2, p0, Li/a/b/f;->tail:J

    .line 9
    iget-object v4, p0, Li/a/b/f;->d:[Ljava/lang/Object;

    iget v5, p0, Li/a/b/f;->f:I

    int-to-long v5, v5

    rem-long v5, v2, v5

    long-to-int v6, v5

    aput-object p1, v4, v6

    add-int/lit8 v1, v1, 0x1

    .line 10
    iput v1, p0, Li/a/b/f;->size:I

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 11
    iput-wide v2, p0, Li/a/b/f;->tail:J

    .line 12
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    invoke-virtual {p0}, Li/a/b/f;->n()V

    .line 14
    sget-object p1, Li/a/b/c;->a:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/b/f;->d:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/a/b/f;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Li/a/b/f;->size:I

    iget v1, p0, Li/a/b/f;->f:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Li/a/b/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/a/b/f$a;

    .line 2
    invoke-virtual {v3}, Li/a/b/f$a;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v1, v0, v1}, Li/a/b/f;->a(Li/a/b/f;Li/a/b/f$a;Li/a/b/f$a;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final o()J
    .locals 5

    .line 1
    iget-object v0, p0, Li/a/b/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/a/b/f$a;

    .line 2
    iget-wide v3, v3, Li/a/b/f$a;->subHead:J

    invoke-static {v1, v2, v3, v4}, Lh/h/g;->b(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
