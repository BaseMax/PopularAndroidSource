.class public Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public synthetic constructor <init>(Le/a/a/a/a/c/a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->f:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->a:Ljava/util/LinkedList;

    new-instance v1, Le/a/a/a/a/c/e;

    invoke-direct {v1, p0, p1}, Le/a/a/a/a/c/e;-><init>(Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->b:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
