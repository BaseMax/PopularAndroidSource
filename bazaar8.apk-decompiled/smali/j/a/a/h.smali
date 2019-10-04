.class public final Lj/a/a/h;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/a/a/h$b;,
        Lj/a/a/h$a;,
        Lj/a/a/h$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# instance fields
.field public final b:Lj/a/f/b;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;

.field public final g:I

.field public h:J

.field public final i:I

.field public j:J

.field public k:Lk/h;

.field public final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lj/a/a/h$b;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:J

.field public final t:Ljava/util/concurrent/Executor;

.field public final u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj/a/a/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lj/a/f/b;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lj/a/a/h;->j:J

    .line 3
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    .line 4
    iput-wide v0, p0, Lj/a/a/h;->s:J

    .line 5
    new-instance v0, Lj/a/a/e;

    invoke-direct {v0, p0}, Lj/a/a/e;-><init>(Lj/a/a/h;)V

    iput-object v0, p0, Lj/a/a/h;->u:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lj/a/a/h;->b:Lj/a/f/b;

    .line 7
    iput-object p2, p0, Lj/a/a/h;->c:Ljava/io/File;

    .line 8
    iput p3, p0, Lj/a/a/h;->g:I

    .line 9
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lj/a/a/h;->d:Ljava/io/File;

    .line 10
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lj/a/a/h;->e:Ljava/io/File;

    .line 11
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lj/a/a/h;->f:Ljava/io/File;

    .line 12
    iput p4, p0, Lj/a/a/h;->i:I

    .line 13
    iput-wide p5, p0, Lj/a/a/h;->h:J

    .line 14
    iput-object p7, p0, Lj/a/a/h;->t:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a(Lj/a/f/b;Ljava/io/File;IIJ)Lj/a/a/h;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    if-lez p3, :cond_0

    .line 1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp DiskLruCache"

    .line 2
    invoke-static {v7, v0}, Lj/a/e;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 3
    new-instance v0, Lj/a/a/h;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lj/a/a/h;-><init>(Lj/a/f/b;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized A()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/a/a/h;->k:Lk/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/a/a/h;->k:Lk/h;

    invoke-interface {v0}, Lk/y;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->b(Ljava/io/File;)Lk/y;

    move-result-object v0

    invoke-static {v0}, Lk/s;->a(Lk/y;)Lk/h;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 4
    invoke-interface {v0, v1}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lk/h;->writeByte(I)Lk/h;

    const-string v1, "1"

    .line 5
    invoke-interface {v0, v1}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v1

    invoke-interface {v1, v2}, Lk/h;->writeByte(I)Lk/h;

    .line 6
    iget v1, p0, Lj/a/a/h;->g:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lk/h;->g(J)Lk/h;

    move-result-object v1

    invoke-interface {v1, v2}, Lk/h;->writeByte(I)Lk/h;

    .line 7
    iget v1, p0, Lj/a/a/h;->i:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lk/h;->g(J)Lk/h;

    move-result-object v1

    invoke-interface {v1, v2}, Lk/h;->writeByte(I)Lk/h;

    .line 8
    invoke-interface {v0, v2}, Lk/h;->writeByte(I)Lk/h;

    .line 9
    iget-object v1, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/a/a/h$b;

    .line 10
    iget-object v4, v3, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    .line 11
    invoke-interface {v0, v4}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v4

    invoke-interface {v4, v5}, Lk/h;->writeByte(I)Lk/h;

    .line 12
    iget-object v3, v3, Lj/a/a/h$b;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    .line 13
    invoke-interface {v0, v2}, Lk/h;->writeByte(I)Lk/h;

    goto :goto_0

    :cond_1
    const-string v4, "CLEAN"

    .line 14
    invoke-interface {v0, v4}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v4

    invoke-interface {v4, v5}, Lk/h;->writeByte(I)Lk/h;

    .line 15
    iget-object v4, v3, Lj/a/a/h$b;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    .line 16
    invoke-virtual {v3, v0}, Lj/a/a/h$b;->a(Lk/h;)V

    .line 17
    invoke-interface {v0, v2}, Lk/h;->writeByte(I)Lk/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lk/y;->close()V

    .line 19
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->d:Ljava/io/File;

    iget-object v2, p0, Lj/a/a/h;->f:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lj/a/f/b;->a(Ljava/io/File;Ljava/io/File;)V

    .line 21
    :cond_3
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->e:Ljava/io/File;

    iget-object v2, p0, Lj/a/a/h;->d:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lj/a/f/b;->a(Ljava/io/File;Ljava/io/File;)V

    .line 22
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->f:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->e(Ljava/io/File;)V

    .line 23
    invoke-virtual {p0}, Lj/a/a/h;->x()Lk/h;

    move-result-object v0

    iput-object v0, p0, Lj/a/a/h;->k:Lk/h;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lj/a/a/h;->n:Z

    .line 25
    iput-boolean v0, p0, Lj/a/a/h;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 27
    :try_start_3
    invoke-interface {v0}, Lk/y;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public B()V
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lj/a/a/h;->j:J

    iget-wide v2, p0, Lj/a/a/h;->h:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/a/a/h$b;

    .line 3
    invoke-virtual {p0, v0}, Lj/a/a/h;->a(Lj/a/a/h$b;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lj/a/a/h;->q:Z

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;J)Lj/a/a/h$a;
    .locals 5

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lj/a/a/h;->v()V

    .line 7
    invoke-virtual {p0}, Lj/a/a/h;->s()V

    .line 8
    invoke-virtual {p0, p1}, Lj/a/a/h;->i(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/a/a/h$b;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 10
    iget-wide v1, v0, Lj/a/a/h$b;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 11
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    .line 12
    :try_start_1
    iget-object p2, v0, Lj/a/a/h$b;->f:Lj/a/a/h$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 13
    monitor-exit p0

    return-object v3

    .line 14
    :cond_2
    :try_start_2
    iget-boolean p2, p0, Lj/a/a/h;->q:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lj/a/a/h;->r:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    iget-object p2, p0, Lj/a/a/h;->k:Lk/h;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Lk/h;->writeByte(I)Lk/h;

    move-result-object p2

    invoke-interface {p2, p1}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Lk/h;->writeByte(I)Lk/h;

    .line 16
    iget-object p2, p0, Lj/a/a/h;->k:Lk/h;

    invoke-interface {p2}, Lk/h;->flush()V

    .line 17
    iget-boolean p2, p0, Lj/a/a/h;->n:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 18
    monitor-exit p0

    return-object v3

    :cond_4
    if-nez v0, :cond_5

    .line 19
    :try_start_3
    new-instance v0, Lj/a/a/h$b;

    invoke-direct {v0, p0, p1}, Lj/a/a/h$b;-><init>(Lj/a/a/h;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_5
    new-instance p1, Lj/a/a/h$a;

    invoke-direct {p1, p0, v0}, Lj/a/a/h$a;-><init>(Lj/a/a/h;Lj/a/a/h$b;)V

    .line 22
    iput-object p1, v0, Lj/a/a/h$b;->f:Lj/a/a/h$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    monitor-exit p0

    return-object p1

    .line 24
    :cond_6
    :goto_0
    :try_start_4
    iget-object p1, p0, Lj/a/a/h;->t:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lj/a/a/h;->u:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lj/a/a/h$a;Z)V
    .locals 9

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p1, Lj/a/a/h$a;->a:Lj/a/a/h$b;

    .line 27
    iget-object v1, v0, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 28
    iget-boolean v2, v0, Lj/a/a/h$b;->e:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 29
    :goto_0
    iget v3, p0, Lj/a/a/h;->i:I

    if-ge v2, v3, :cond_2

    .line 30
    iget-object v3, p1, Lj/a/a/h$a;->b:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 31
    iget-object v3, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v4, v0, Lj/a/a/h$b;->d:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lj/a/f/b;->d(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    invoke-virtual {p1}, Lj/a/a/h$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lj/a/a/h$a;->a()V

    .line 35
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    :goto_1
    iget p1, p0, Lj/a/a/h;->i:I

    if-ge v1, p1, :cond_5

    .line 37
    iget-object p1, v0, Lj/a/a/h$b;->d:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    .line 38
    iget-object v2, p0, Lj/a/a/h;->b:Lj/a/f/b;

    invoke-interface {v2, p1}, Lj/a/f/b;->d(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    iget-object v2, v0, Lj/a/a/h$b;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 40
    iget-object v3, p0, Lj/a/a/h;->b:Lj/a/f/b;

    invoke-interface {v3, p1, v2}, Lj/a/f/b;->a(Ljava/io/File;Ljava/io/File;)V

    .line 41
    iget-object p1, v0, Lj/a/a/h$b;->b:[J

    aget-wide v3, p1, v1

    .line 42
    iget-object p1, p0, Lj/a/a/h;->b:Lj/a/f/b;

    invoke-interface {p1, v2}, Lj/a/f/b;->g(Ljava/io/File;)J

    move-result-wide v5

    .line 43
    iget-object p1, v0, Lj/a/a/h$b;->b:[J

    aput-wide v5, p1, v1

    .line 44
    iget-wide v7, p0, Lj/a/a/h;->j:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lj/a/a/h;->j:J

    goto :goto_2

    .line 45
    :cond_3
    iget-object v2, p0, Lj/a/a/h;->b:Lj/a/f/b;

    invoke-interface {v2, p1}, Lj/a/f/b;->e(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 46
    :cond_5
    iget p1, p0, Lj/a/a/h;->m:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lj/a/a/h;->m:I

    const/4 p1, 0x0

    .line 47
    iput-object p1, v0, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    .line 48
    iget-boolean p1, v0, Lj/a/a/h$b;->e:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    .line 49
    iput-boolean v1, v0, Lj/a/a/h$b;->e:Z

    .line 50
    iget-object p1, p0, Lj/a/a/h;->k:Lk/h;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object p1

    invoke-interface {p1, v3}, Lk/h;->writeByte(I)Lk/h;

    .line 51
    iget-object p1, p0, Lj/a/a/h;->k:Lk/h;

    iget-object v1, v0, Lj/a/a/h$b;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    .line 52
    iget-object p1, p0, Lj/a/a/h;->k:Lk/h;

    invoke-virtual {v0, p1}, Lj/a/a/h$b;->a(Lk/h;)V

    .line 53
    iget-object p1, p0, Lj/a/a/h;->k:Lk/h;

    invoke-interface {p1, v2}, Lk/h;->writeByte(I)Lk/h;

    if-eqz p2, :cond_7

    .line 54
    iget-wide p1, p0, Lj/a/a/h;->s:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lj/a/a/h;->s:J

    iput-wide p1, v0, Lj/a/a/h$b;->g:J

    goto :goto_3

    .line 55
    :cond_6
    iget-object p1, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lj/a/a/h$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lj/a/a/h;->k:Lk/h;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object p1

    invoke-interface {p1, v3}, Lk/h;->writeByte(I)Lk/h;

    .line 57
    iget-object p1, p0, Lj/a/a/h;->k:Lk/h;

    iget-object p2, v0, Lj/a/a/h$b;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    .line 58
    iget-object p1, p0, Lj/a/a/h;->k:Lk/h;

    invoke-interface {p1, v2}, Lk/h;->writeByte(I)Lk/h;

    .line 59
    :cond_7
    :goto_3
    iget-object p1, p0, Lj/a/a/h;->k:Lk/h;

    invoke-interface {p1}, Lk/h;->flush()V

    .line 60
    iget-wide p1, p0, Lj/a/a/h;->j:J

    iget-wide v0, p0, Lj/a/a/h;->h:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-virtual {p0}, Lj/a/a/h;->w()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 61
    :cond_8
    iget-object p1, p0, Lj/a/a/h;->t:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lj/a/a/h;->u:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :cond_9
    monitor-exit p0

    return-void

    .line 63
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public a(Lj/a/a/h$b;)Z
    .locals 6

    .line 64
    iget-object v0, p1, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lj/a/a/h$a;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget v1, p0, Lj/a/a/h;->i:I

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v2, p1, Lj/a/a/h$b;->c:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lj/a/f/b;->e(Ljava/io/File;)V

    .line 68
    iget-wide v1, p0, Lj/a/a/h;->j:J

    iget-object v3, p1, Lj/a/a/h$b;->b:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lj/a/a/h;->j:J

    const-wide/16 v1, 0x0

    .line 69
    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget v0, p0, Lj/a/a/h;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lj/a/a/h;->m:I

    .line 71
    iget-object v0, p0, Lj/a/a/h;->k:Lk/h;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lk/h;->writeByte(I)Lk/h;

    move-result-object v0

    iget-object v2, p1, Lj/a/a/h$b;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lk/h;->writeByte(I)Lk/h;

    .line 72
    iget-object v0, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lj/a/a/h$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lj/a/a/h;->w()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p0, Lj/a/a/h;->t:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lj/a/a/h;->u:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method public declared-synchronized close()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/a/h;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lj/a/a/h;->p:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lj/a/a/h$b;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/a/a/h$b;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 3
    iget-object v5, v4, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    if-eqz v5, :cond_1

    .line 4
    iget-object v4, v4, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    invoke-virtual {v4}, Lj/a/a/h$a;->a()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lj/a/a/h;->B()V

    .line 6
    iget-object v0, p0, Lj/a/a/h;->k:Lk/h;

    invoke-interface {v0}, Lk/y;->close()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lj/a/a/h;->k:Lk/h;

    .line 8
    iput-boolean v1, p0, Lj/a/a/h;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v1, p0, Lj/a/a/h;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public e(Ljava/lang/String;)Lj/a/a/h$a;
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lj/a/a/h;->a(Ljava/lang/String;J)Lj/a/a/h$a;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized f(Ljava/lang/String;)Lj/a/a/h$c;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lj/a/a/h;->v()V

    .line 2
    invoke-virtual {p0}, Lj/a/a/h;->s()V

    .line 3
    invoke-virtual {p0, p1}, Lj/a/a/h;->i(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/a/a/h$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v2, v0, Lj/a/a/h$b;->e:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lj/a/a/h$b;->a()Lj/a/a/h$c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 7
    monitor-exit p0

    return-object v1

    .line 8
    :cond_1
    :try_start_1
    iget v1, p0, Lj/a/a/h;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj/a/a/h;->m:I

    .line 9
    iget-object v1, p0, Lj/a/a/h;->k:Lk/h;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lk/h;->writeByte(I)Lk/h;

    move-result-object v1

    invoke-interface {v1, p1}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 10
    invoke-virtual {p0}, Lj/a/a/h;->w()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lj/a/a/h;->t:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lj/a/a/h;->u:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_2
    monitor-exit p0

    return-object v0

    .line 13
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/a/h;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lj/a/a/h;->s()V

    .line 3
    invoke-virtual {p0}, Lj/a/a/h;->B()V

    .line 4
    iget-object v0, p0, Lj/a/a/h;->k:Lk/h;

    invoke-interface {v0}, Lk/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    .line 4
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    iget-object p1, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_1
    iget-object v5, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj/a/a/h$b;

    if-nez v5, :cond_2

    .line 8
    new-instance v5, Lj/a/a/h$b;

    invoke-direct {v5, p0, v4}, Lj/a/a/h$b;-><init>(Lj/a/a/h;Ljava/lang/String;)V

    .line 9
    iget-object v6, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v6, "CLEAN"

    .line 10
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    iput-boolean v1, v5, Lj/a/a/h$b;->e:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, v5, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    .line 14
    invoke-virtual {v5, p1}, Lj/a/a/h$b;->b([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    new-instance p1, Lj/a/a/h$a;

    invoke-direct {p1, p0, v5}, Lj/a/a/h$a;-><init>(Lj/a/a/h;Lj/a/a/h$b;)V

    iput-object p1, v5, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    .line 18
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized h(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lj/a/a/h;->v()V

    .line 2
    invoke-virtual {p0}, Lj/a/a/h;->s()V

    .line 3
    invoke-virtual {p0, p1}, Lj/a/a/h;->i(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj/a/a/h$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5
    monitor-exit p0

    return v0

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lj/a/a/h;->a(Lj/a/a/h$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-wide v1, p0, Lj/a/a/h;->j:J

    iget-wide v3, p0, Lj/a/a/h;->h:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iput-boolean v0, p0, Lj/a/a/h;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lj/a/a/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/a/h;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lj/a/a/h;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj/a/a/h;->close()V

    .line 2
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->c(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized u()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lj/a/a/h;->v()V

    .line 2
    iget-object v0, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lj/a/a/h$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/a/a/h$b;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {p0, v4}, Lj/a/a/h;->a(Lj/a/a/h$b;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v2, p0, Lj/a/a/h;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized v()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lj/a/a/h;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->f:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->f:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->e(Ljava/io/File;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->f:Ljava/io/File;

    iget-object v2, p0, Lj/a/a/h;->d:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lj/a/f/b;->a(Ljava/io/File;Ljava/io/File;)V

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->d(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 8
    :try_start_2
    invoke-virtual {p0}, Lj/a/a/h;->z()V

    .line 9
    invoke-virtual {p0}, Lj/a/a/h;->y()V

    .line 10
    iput-boolean v1, p0, Lj/a/a/h;->o:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 12
    :try_start_3
    invoke-static {}, Lj/a/g/f;->b()Lj/a/g/f;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lj/a/a/h;->c:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v2, v3, v4, v0}, Lj/a/g/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    .line 15
    :try_start_4
    invoke-virtual {p0}, Lj/a/a/h;->t()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    :try_start_5
    iput-boolean v0, p0, Lj/a/a/h;->p:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lj/a/a/h;->p:Z

    throw v1

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lj/a/a/h;->A()V

    .line 18
    iput-boolean v1, p0, Lj/a/a/h;->o:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 19
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w()Z
    .locals 2

    .line 1
    iget v0, p0, Lj/a/a/h;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()Lk/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->f(Ljava/io/File;)Lk/y;

    move-result-object v0

    .line 2
    new-instance v1, Lj/a/a/f;

    invoke-direct {v1, p0, v0}, Lj/a/a/f;-><init>(Lj/a/a/h;Lk/y;)V

    .line 3
    invoke-static {v1}, Lk/s;->a(Lk/y;)Lk/h;

    move-result-object v0

    return-object v0
.end method

.method public final y()V
    .locals 8

    .line 1
    iget-object v0, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v1, p0, Lj/a/a/h;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lj/a/f/b;->e(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a/a/h$b;

    .line 4
    iget-object v2, v1, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    :goto_1
    iget v2, p0, Lj/a/a/h;->i:I

    if-ge v3, v2, :cond_0

    .line 6
    iget-wide v4, p0, Lj/a/a/h;->j:J

    iget-object v2, v1, Lj/a/a/h$b;->b:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lj/a/a/h;->j:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lj/a/a/h$b;->f:Lj/a/a/h$a;

    .line 8
    :goto_2
    iget v2, p0, Lj/a/a/h;->i:I

    if-ge v3, v2, :cond_2

    .line 9
    iget-object v2, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v4, v1, Lj/a/a/h$b;->c:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lj/a/f/b;->e(Ljava/io/File;)V

    .line 10
    iget-object v2, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v4, v1, Lj/a/a/h$b;->d:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lj/a/f/b;->e(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final z()V
    .locals 9

    const-string v0, ", "

    .line 1
    iget-object v1, p0, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v2, p0, Lj/a/a/h;->d:Ljava/io/File;

    invoke-interface {v1, v2}, Lj/a/f/b;->a(Ljava/io/File;)Lk/z;

    move-result-object v1

    invoke-static {v1}, Lk/s;->a(Lk/z;)Lk/i;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-interface {v1}, Lk/i;->g()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v1}, Lk/i;->g()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v1}, Lk/i;->g()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v1}, Lk/i;->g()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {v1}, Lk/i;->g()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 7
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    .line 8
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lj/a/a/h;->g:I

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lj/a/a/h;->i:I

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    .line 11
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 12
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lk/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lj/a/a/h;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :catch_0
    :try_start_2
    iget-object v2, p0, Lj/a/a/h;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lj/a/a/h;->m:I

    .line 14
    invoke-interface {v1}, Lk/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lj/a/a/h;->A()V

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lj/a/a/h;->x()Lk/h;

    move-result-object v0

    iput-object v0, p0, Lj/a/a/h;->k:Lk/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :goto_1
    invoke-static {v1}, Lj/a/e;->a(Ljava/io/Closeable;)V

    return-void

    .line 18
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 19
    invoke-static {v1}, Lj/a/e;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
