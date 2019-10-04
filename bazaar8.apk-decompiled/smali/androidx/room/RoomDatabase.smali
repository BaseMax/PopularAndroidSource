.class public abstract Landroidx/room/RoomDatabase;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomDatabase$b;,
        Landroidx/room/RoomDatabase$c;,
        Landroidx/room/RoomDatabase$a;,
        Landroidx/room/RoomDatabase$JournalMode;
    }
.end annotation


# instance fields
.field public volatile a:Lb/C/a/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Lb/C/a/c;

.field public final e:Lb/z/j;

.field public f:Z

.field public g:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->j:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->k:Ljava/util/Map;

    .line 5
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->d()Lb/z/j;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->e:Lb/z/j;

    return-void
.end method

.method public static m()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lb/C/a/e;)Landroid/database/Cursor;
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->a()V

    .line 5
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->b()V

    .line 6
    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Lb/C/a/c;

    invoke-interface {v0}, Lb/C/a/c;->a()Lb/C/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/C/a/b;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lb/z/c;)Lb/C/a/c;
.end method

.method public a(Ljava/lang/String;)Lb/C/a/f;
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->a()V

    .line 8
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->b()V

    .line 9
    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Lb/C/a/c;

    invoke-interface {v0}, Lb/C/a/c;->a()Lb/C/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/C/a/b;->c(Ljava/lang/String;)Lb/C/a/f;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/room/RoomDatabase;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroidx/room/RoomDatabase;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/C/a/b;)V
    .locals 1

    .line 10
    iget-object v0, p0, Landroidx/room/RoomDatabase;->e:Lb/z/j;

    invoke-virtual {v0, p1}, Lb/z/j;->a(Lb/C/a/b;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 12
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lb/z/c;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->a(Lb/z/c;)Lb/C/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->d:Lb/C/a/c;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 3
    iget-object v0, p1, Lb/z/c;->g:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v2, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Lb/C/a/c;

    invoke-interface {v0, v1}, Lb/C/a/c;->a(Z)V

    .line 5
    :cond_1
    iget-object v0, p1, Lb/z/c;->e:Ljava/util/List;

    iput-object v0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lb/z/c;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/RoomDatabase;->b:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v0, Lb/z/F;

    iget-object v2, p1, Lb/z/c;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2}, Lb/z/F;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->c:Ljava/util/concurrent/Executor;

    .line 8
    iget-boolean v0, p1, Lb/z/c;->f:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->f:Z

    .line 9
    iput-boolean v1, p0, Landroidx/room/RoomDatabase;->g:Z

    .line 10
    iget-boolean v0, p1, Lb/z/c;->j:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Landroidx/room/RoomDatabase;->e:Lb/z/j;

    iget-object v1, p1, Lb/z/c;->b:Landroid/content/Context;

    iget-object p1, p1, Lb/z/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lb/z/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->a()V

    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Lb/C/a/c;

    invoke-interface {v0}, Lb/C/a/c;->a()Lb/C/a/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/room/RoomDatabase;->e:Lb/z/j;

    invoke-virtual {v1, v0}, Lb/z/j;->b(Lb/C/a/b;)V

    .line 4
    invoke-interface {v0}, Lb/C/a/b;->n()V

    return-void
.end method

.method public abstract d()Lb/z/j;
.end method

.method public e()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Lb/C/a/c;

    invoke-interface {v0}, Lb/C/a/c;->a()Lb/C/a/b;

    move-result-object v0

    invoke-interface {v0}, Lb/C/a/b;->q()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/room/RoomDatabase;->e:Lb/z/j;

    invoke-virtual {v0}, Lb/z/j;->b()V

    :cond_0
    return-void
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->k:Ljava/util/Map;

    return-object v0
.end method

.method public g()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public h()Lb/z/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->e:Lb/z/j;

    return-object v0
.end method

.method public i()Lb/C/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Lb/C/a/c;

    return-object v0
.end method

.method public j()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public k()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Lb/C/a/c;

    invoke-interface {v0}, Lb/C/a/c;->a()Lb/C/a/b;

    move-result-object v0

    invoke-interface {v0}, Lb/C/a/b;->r()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->a:Lb/C/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lb/C/a/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Lb/C/a/c;

    invoke-interface {v0}, Lb/C/a/c;->a()Lb/C/a/b;

    move-result-object v0

    invoke-interface {v0}, Lb/C/a/b;->p()V

    return-void
.end method
