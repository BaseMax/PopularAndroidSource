.class public abstract Lb/H/a/d/a/b;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lc/e/b/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/H/a/d/a/b$g;,
        Lb/H/a/d/a/b$e;,
        Lb/H/a/d/a/b$a;,
        Lb/H/a/d/a/b$f;,
        Lb/H/a/d/a/b$b;,
        Lb/H/a/d/a/b$c;,
        Lb/H/a/d/a/b$d;,
        Lb/H/a/d/a/b$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/e/b/a/a/a<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Lb/H/a/d/a/b$a;

.field public static final d:Ljava/lang/Object;


# instance fields
.field public volatile e:Ljava/lang/Object;

.field public volatile f:Lb/H/a/d/a/b$d;

.field public volatile g:Lb/H/a/d/a/b$h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lb/H/a/d/a/b;->a:Z

    .line 3
    const-class v0, Lb/H/a/d/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lb/H/a/d/a/b;->b:Ljava/util/logging/Logger;

    .line 4
    :try_start_0
    new-instance v0, Lb/H/a/d/a/b$e;

    const-class v1, Lb/H/a/d/a/b$h;

    const-class v2, Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "b"

    .line 5
    :try_start_1
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v1, Lb/H/a/d/a/b$h;

    const-class v3, Lb/H/a/d/a/b$h;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "c"

    .line 6
    :try_start_2
    invoke-static {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v1, Lb/H/a/d/a/b;

    const-class v4, Lb/H/a/d/a/b$h;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "g"

    .line 7
    :try_start_3
    invoke-static {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v1, Lb/H/a/d/a/b;

    const-class v5, Lb/H/a/d/a/b$d;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    const-string v6, "f"

    .line 8
    :try_start_4
    invoke-static {v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v1, Lb/H/a/d/a/b;

    const-class v6, Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    const-string v7, "e"

    .line 9
    :try_start_5
    invoke-static {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lb/H/a/d/a/b$e;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 10
    new-instance v0, Lb/H/a/d/a/b$g;

    invoke-direct {v0}, Lb/H/a/d/a/b$g;-><init>()V

    .line 11
    :goto_0
    sput-object v0, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    .line 12
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v1, :cond_0

    .line 13
    sget-object v0, Lb/H/a/d/a/b;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/H/a/d/a/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc/e/b/a/a/a;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/b/a/a/a<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 22
    instance-of v0, p0, Lb/H/a/d/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 23
    check-cast p0, Lb/H/a/d/a/b;

    iget-object p0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    .line 24
    instance-of v0, p0, Lb/H/a/d/a/b$b;

    if-eqz v0, :cond_1

    .line 25
    move-object v0, p0

    check-cast v0, Lb/H/a/d/a/b$b;

    .line 26
    iget-boolean v2, v0, Lb/H/a/d/a/b$b;->c:Z

    if-eqz v2, :cond_1

    .line 27
    iget-object p0, v0, Lb/H/a/d/a/b$b;->d:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance v0, Lb/H/a/d/a/b$b;

    invoke-direct {v0, v1, p0}, Lb/H/a/d/a/b$b;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lb/H/a/d/a/b$b;->b:Lb/H/a/d/a/b$b;

    :cond_1
    :goto_0
    return-object p0

    .line 28
    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    .line 29
    sget-boolean v2, Lb/H/a/d/a/b;->a:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 30
    sget-object p0, Lb/H/a/d/a/b$b;->b:Lb/H/a/d/a/b$b;

    return-object p0

    .line 31
    :cond_3
    :try_start_0
    invoke-static {p0}, Lb/H/a/d/a/b;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 32
    sget-object v2, Lb/H/a/d/a/b;->d:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v2

    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Lb/H/a/d/a/b$c;

    invoke-direct {v0, p0}, Lb/H/a/d/a/b$c;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_1
    move-exception v2

    if-nez v0, :cond_5

    .line 34
    new-instance v0, Lb/H/a/d/a/b$c;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lb/H/a/d/a/b$c;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 35
    :cond_5
    new-instance p0, Lb/H/a/d/a/b$b;

    invoke-direct {p0, v1, v2}, Lb/H/a/d/a/b$b;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_2
    move-exception p0

    .line 36
    new-instance v0, Lb/H/a/d/a/b$c;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/H/a/d/a/b$c;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 60
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static a(Lb/H/a/d/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/a/d/a/b<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-virtual {p0}, Lb/H/a/d/a/b;->d()V

    .line 40
    invoke-virtual {p0}, Lb/H/a/d/a/b;->a()V

    .line 41
    invoke-virtual {p0, v0}, Lb/H/a/d/a/b;->a(Lb/H/a/d/a/b$d;)Lb/H/a/d/a/b$d;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    .line 42
    iget-object v0, p0, Lb/H/a/d/a/b$d;->d:Lb/H/a/d/a/b$d;

    .line 43
    iget-object v1, p0, Lb/H/a/d/a/b$d;->b:Ljava/lang/Runnable;

    .line 44
    instance-of v2, v1, Lb/H/a/d/a/b$f;

    if-eqz v2, :cond_0

    .line 45
    check-cast v1, Lb/H/a/d/a/b$f;

    .line 46
    iget-object p0, v1, Lb/H/a/d/a/b$f;->a:Lb/H/a/d/a/b;

    .line 47
    iget-object v2, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    if-ne v2, v1, :cond_1

    .line 48
    iget-object v2, v1, Lb/H/a/d/a/b$f;->b:Lc/e/b/a/a/a;

    invoke-static {v2}, Lb/H/a/d/a/b;->a(Lc/e/b/a/a/a;)Ljava/lang/Object;

    move-result-object v2

    .line 49
    sget-object v3, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {v3, p0, v1, v2}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lb/H/a/d/a/b$d;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Lb/H/a/d/a/b;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    move-object p0, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 21
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    sget-object v1, Lb/H/a/d/a/b;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lb/H/a/d/a/b$d;)Lb/H/a/d/a/b$d;
    .locals 4

    .line 51
    :cond_0
    iget-object v0, p0, Lb/H/a/d/a/b;->f:Lb/H/a/d/a/b$d;

    .line 52
    sget-object v1, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    sget-object v2, Lb/H/a/d/a/b$d;->a:Lb/H/a/d/a/b$d;

    invoke-virtual {v1, p0, v0, v2}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Lb/H/a/d/a/b$d;Lb/H/a/d/a/b$d;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 53
    iget-object v1, p1, Lb/H/a/d/a/b$d;->d:Lb/H/a/d/a/b$d;

    .line 54
    iput-object v0, p1, Lb/H/a/d/a/b$d;->d:Lb/H/a/d/a/b$d;

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public final a(Lb/H/a/d/a/b$h;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lb/H/a/d/a/b$h;->b:Ljava/lang/Thread;

    .line 2
    :goto_0
    iget-object p1, p0, Lb/H/a/d/a/b;->g:Lb/H/a/d/a/b$h;

    .line 3
    sget-object v1, Lb/H/a/d/a/b$h;->a:Lb/H/a/d/a/b$h;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 4
    iget-object v2, p1, Lb/H/a/d/a/b$h;->c:Lb/H/a/d/a/b$h;

    .line 5
    iget-object v3, p1, Lb/H/a/d/a/b$h;->b:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    iput-object v2, v1, Lb/H/a/d/a/b$h;->c:Lb/H/a/d/a/b$h;

    .line 7
    iget-object p1, v1, Lb/H/a/d/a/b$h;->b:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    .line 8
    :cond_2
    sget-object v3, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {v3, p0, p1, v2}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Lb/H/a/d/a/b$h;Lb/H/a/d/a/b$h;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 9
    invoke-static {p1}, Lb/H/a/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Lb/H/a/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lb/H/a/d/a/b;->f:Lb/H/a/d/a/b$d;

    .line 12
    sget-object v1, Lb/H/a/d/a/b$d;->a:Lb/H/a/d/a/b$d;

    if-eq v0, v1, :cond_2

    .line 13
    new-instance v1, Lb/H/a/d/a/b$d;

    invoke-direct {v1, p1, p2}, Lb/H/a/d/a/b$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 14
    :cond_0
    iput-object v0, v1, Lb/H/a/d/a/b$d;->d:Lb/H/a/d/a/b$d;

    .line 15
    sget-object v2, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {v2, p0, v0, v1}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Lb/H/a/d/a/b$d;Lb/H/a/d/a/b$d;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lb/H/a/d/a/b;->f:Lb/H/a/d/a/b$d;

    .line 17
    sget-object v2, Lb/H/a/d/a/b$d;->a:Lb/H/a/d/a/b$d;

    if-ne v0, v2, :cond_0

    .line 18
    :cond_2
    invoke-static {p1, p2}, Lb/H/a/d/a/b;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 55
    :try_start_0
    invoke-static {p0}, Lb/H/a/d/a/b;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lb/H/a/d/a/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    const-string v0, "CANCELLED"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 2

    .line 19
    new-instance v0, Lb/H/a/d/a/b$c;

    invoke-static {p1}, Lb/H/a/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lb/H/a/d/a/b$c;-><init>(Ljava/lang/Throwable;)V

    .line 20
    sget-object p1, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-static {p0}, Lb/H/a/d/a/b;->a(Lb/H/a/d/a/b;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lb/H/a/d/a/b$b;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lb/H/a/d/a/b$c;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lb/H/a/d/a/b;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lb/H/a/d/a/b$c;

    iget-object p1, p1, Lb/H/a/d/a/b$c;->b:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_2
    check-cast p1, Lb/H/a/d/a/b$b;

    iget-object p1, p1, Lb/H/a/d/a/b$b;->d:Ljava/lang/Throwable;

    const-string v0, "Task was cancelled."

    invoke-static {v0, p1}, Lb/H/a/d/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lc/e/b/a/a/a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/b/a/a/a<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lb/H/a/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Lb/H/a/d/a/b;->a(Lc/e/b/a/a/a;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    sget-object v0, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {v0, p0, v3, p1}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p0}, Lb/H/a/d/a/b;->a(Lb/H/a/d/a/b;)V

    return v2

    :cond_0
    return v1

    .line 12
    :cond_1
    new-instance v0, Lb/H/a/d/a/b$f;

    invoke-direct {v0, p0, p1}, Lb/H/a/d/a/b$f;-><init>(Lb/H/a/d/a/b;Lc/e/b/a/a/a;)V

    .line 13
    sget-object v4, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {v4, p0, v3, v0}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    :try_start_0
    sget-object v1, Landroidx/work/impl/utils/futures/DirectExecutor;->INSTANCE:Landroidx/work/impl/utils/futures/DirectExecutor;

    invoke-interface {p1, v0, v1}, Lc/e/b/a/a/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    new-instance v1, Lb/H/a/d/a/b$c;

    invoke-direct {v1, p1}, Lb/H/a/d/a/b$c;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 16
    :catch_1
    sget-object v1, Lb/H/a/d/a/b$c;->a:Lb/H/a/d/a/b$c;

    .line 17
    :goto_0
    sget-object p1, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {p1, p0, v0, v1}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v2

    .line 18
    :cond_2
    iget-object v0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    .line 19
    :cond_3
    instance-of v2, v0, Lb/H/a/d/a/b$b;

    if-eqz v2, :cond_4

    .line 20
    check-cast v0, Lb/H/a/d/a/b$b;

    iget-boolean v0, v0, Lb/H/a/d/a/b$b;->c:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 4
    iget-object v0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    .line 5
    instance-of v1, v0, Lb/H/a/d/a/b$f;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lb/H/a/d/a/b$f;

    iget-object v0, v0, Lb/H/a/d/a/b$f;->b:Lc/e/b/a/a/a;

    invoke-virtual {p0, v0}, Lb/H/a/d/a/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remaining delay=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lb/H/a/d/a/b;->d:Ljava/lang/Object;

    .line 2
    :cond_0
    sget-object v0, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lb/H/a/d/a/b;->a(Lb/H/a/d/a/b;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final cancel(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    instance-of v4, v0, Lb/H/a/d/a/b$f;

    or-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 3
    sget-boolean v3, Lb/H/a/d/a/b;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Lb/H/a/d/a/b$b;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lb/H/a/d/a/b$b;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lb/H/a/d/a/b$b;->a:Lb/H/a/d/a/b$b;

    goto :goto_1

    :cond_2
    sget-object v3, Lb/H/a/d/a/b$b;->b:Lb/H/a/d/a/b$b;

    :goto_1
    const/4 v5, 0x0

    move-object v4, v0

    move-object v0, p0

    .line 4
    :cond_3
    :goto_2
    sget-object v6, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {v6, v0, v4, v3}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {v0}, Lb/H/a/d/a/b;->b()V

    .line 6
    :cond_4
    invoke-static {v0}, Lb/H/a/d/a/b;->a(Lb/H/a/d/a/b;)V

    .line 7
    instance-of v0, v4, Lb/H/a/d/a/b$f;

    if-eqz v0, :cond_9

    .line 8
    check-cast v4, Lb/H/a/d/a/b$f;

    iget-object v0, v4, Lb/H/a/d/a/b$f;->b:Lc/e/b/a/a/a;

    .line 9
    instance-of v4, v0, Lb/H/a/d/a/b;

    if-eqz v4, :cond_6

    .line 10
    check-cast v0, Lb/H/a/d/a/b;

    .line 11
    iget-object v4, v0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    if-nez v4, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 12
    :goto_3
    instance-of v6, v4, Lb/H/a/d/a/b$f;

    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    .line 13
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 14
    :cond_7
    iget-object v4, v0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    .line 15
    instance-of v6, v4, Lb/H/a/d/a/b$f;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_4
    return v1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-ne p1, p0, :cond_0

    const-string p1, "this future"

    return-object p1

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lb/H/a/d/a/b;->g:Lb/H/a/d/a/b$h;

    .line 2
    sget-object v1, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    sget-object v2, Lb/H/a/d/a/b$h;->a:Lb/H/a/d/a/b$h;

    invoke-virtual {v1, p0, v0, v2}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Lb/H/a/d/a/b$h;Lb/H/a/d/a/b$h;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lb/H/a/d/a/b$h;->a()V

    .line 4
    iget-object v0, v0, Lb/H/a/d/a/b$h;->c:Lb/H/a/d/a/b$h;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 45
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 46
    iget-object v0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    instance-of v4, v0, Lb/H/a/d/a/b$f;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 48
    invoke-virtual {p0, v0}, Lb/H/a/d/a/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 49
    :cond_2
    iget-object v0, p0, Lb/H/a/d/a/b;->g:Lb/H/a/d/a/b$h;

    .line 50
    sget-object v3, Lb/H/a/d/a/b$h;->a:Lb/H/a/d/a/b$h;

    if-eq v0, v3, :cond_9

    .line 51
    new-instance v3, Lb/H/a/d/a/b$h;

    invoke-direct {v3}, Lb/H/a/d/a/b$h;-><init>()V

    .line 52
    :cond_3
    invoke-virtual {v3, v0}, Lb/H/a/d/a/b$h;->a(Lb/H/a/d/a/b$h;)V

    .line 53
    sget-object v4, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {v4, p0, v0, v3}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Lb/H/a/d/a/b$h;Lb/H/a/d/a/b$h;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    :cond_4
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 56
    iget-object v0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 57
    :goto_2
    instance-of v5, v0, Lb/H/a/d/a/b$f;

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 58
    invoke-virtual {p0, v0}, Lb/H/a/d/a/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_7
    invoke-virtual {p0, v3}, Lb/H/a/d/a/b;->a(Lb/H/a/d/a/b$h;)V

    .line 60
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 61
    :cond_8
    iget-object v0, p0, Lb/H/a/d/a/b;->g:Lb/H/a/d/a/b$h;

    .line 62
    sget-object v4, Lb/H/a/d/a/b$h;->a:Lb/H/a/d/a/b$h;

    if-ne v0, v4, :cond_3

    .line 63
    :cond_9
    iget-object v0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lb/H/a/d/a/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_19

    .line 3
    iget-object v6, v0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 4
    :goto_0
    instance-of v10, v6, Lb/H/a/d/a/b$f;

    if-nez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    .line 5
    invoke-virtual {v0, v6}, Lb/H/a/d/a/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_3

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_2

    :cond_3
    move-wide v11, v9

    :goto_2
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_c

    .line 7
    iget-object v6, v0, Lb/H/a/d/a/b;->g:Lb/H/a/d/a/b$h;

    .line 8
    sget-object v15, Lb/H/a/d/a/b$h;->a:Lb/H/a/d/a/b$h;

    if-eq v6, v15, :cond_b

    .line 9
    new-instance v15, Lb/H/a/d/a/b$h;

    invoke-direct {v15}, Lb/H/a/d/a/b$h;-><init>()V

    .line 10
    :cond_4
    invoke-virtual {v15, v6}, Lb/H/a/d/a/b$h;->a(Lb/H/a/d/a/b$h;)V

    .line 11
    sget-object v7, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    invoke-virtual {v7, v0, v6, v15}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Lb/H/a/d/a/b$h;Lb/H/a/d/a/b$h;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 12
    :cond_5
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_9

    .line 14
    iget-object v4, v0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 15
    :goto_3
    instance-of v6, v4, Lb/H/a/d/a/b$f;

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    .line 16
    invoke-virtual {v0, v4}, Lb/H/a/d/a/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_5

    .line 18
    invoke-virtual {v0, v15}, Lb/H/a/d/a/b;->a(Lb/H/a/d/a/b$h;)V

    goto :goto_5

    .line 19
    :cond_9
    invoke-virtual {v0, v15}, Lb/H/a/d/a/b;->a(Lb/H/a/d/a/b$h;)V

    .line 20
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_a
    iget-object v6, v0, Lb/H/a/d/a/b;->g:Lb/H/a/d/a/b$h;

    .line 22
    sget-object v7, Lb/H/a/d/a/b$h;->a:Lb/H/a/d/a/b$h;

    if-ne v6, v7, :cond_4

    .line 23
    :cond_b
    iget-object v1, v0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lb/H/a/d/a/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_c
    :goto_5
    cmp-long v6, v4, v9

    if-lez v6, :cond_11

    .line 24
    iget-object v4, v0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    if-eqz v4, :cond_d

    const/4 v5, 0x1

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    .line 25
    :goto_6
    instance-of v6, v4, Lb/H/a/d/a/b$f;

    if-nez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_7
    and-int/2addr v5, v6

    if-eqz v5, :cond_f

    .line 26
    invoke-virtual {v0, v4}, Lb/H/a/d/a/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 27
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_10

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_5

    .line 29
    :cond_10
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 30
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lb/H/a/d/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 32
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Waited "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_17

    .line 33
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (plus "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 34
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 35
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_13

    cmp-long v3, v4, v13

    if-lez v3, :cond_12

    goto :goto_8

    :cond_12
    const/16 v16, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/16 v16, 0x1

    :goto_9
    cmp-long v3, v11, v9

    if-lez v3, :cond_15

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_14

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_15
    if-eqz v16, :cond_16

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lb/H/a/d/a/b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 42
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but future completed as timeout expired"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_18
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_19
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lb/H/a/d/a/b$b;

    return v0
.end method

.method public final isDone()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    instance-of v0, v0, Lb/H/a/d/a/b$f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int v0, v3, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lb/H/a/d/a/b;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lb/H/a/d/a/b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lb/H/a/d/a/b;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lb/H/a/d/a/b;->c()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PENDING, info=["

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lb/H/a/d/a/b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Lb/H/a/d/a/b;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    const-string v1, "PENDING"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
