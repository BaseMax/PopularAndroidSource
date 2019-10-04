.class public Lb/H/a/d/b/d;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Lb/H/a/d/b/a;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/concurrent/Executor;

.field public volatile c:Ljava/lang/Thread;

.field public final d:Ljava/util/concurrent/ThreadFactory;

.field public final e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lb/H/a/d/b/d;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Lb/H/a/d/b/b;

    invoke-direct {v0, p0}, Lb/H/a/d/b/b;-><init>(Lb/H/a/d/b/d;)V

    iput-object v0, p0, Lb/H/a/d/b/d;->b:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lb/H/a/d/b/c;

    invoke-direct {v0, p0}, Lb/H/a/d/b/c;-><init>(Lb/H/a/d/b/d;)V

    iput-object v0, p0, Lb/H/a/d/b/d;->d:Ljava/util/concurrent/ThreadFactory;

    .line 5
    iget-object v0, p0, Lb/H/a/d/b/d;->d:Ljava/util/concurrent/ThreadFactory;

    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/d/b/d;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Thread;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/H/a/d/b/d;->c:Ljava/lang/Thread;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/d/b/d;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/H/a/d/b/d;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/d/b/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/d/b/d;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
