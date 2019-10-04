.class public Lf/a/a/g/b/u;
.super Ljava/lang/Object;
.source "ThreadExecutorImpl.java"

# interfaces
.implements Lf/a/a/g/b/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/g/b/u$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/TimeUnit;

.field public static final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:Lf/a/a/g/b/u;


# instance fields
.field public d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lf/a/a/g/b/u;->a:Ljava/util/concurrent/TimeUnit;

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lf/a/a/g/b/u;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Lf/a/a/g/b/u;->a:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lf/a/a/g/b/u;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lf/a/a/g/b/u$a;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lf/a/a/g/b/u$a;-><init>(Lf/a/a/g/b/t;)V

    const/4 v1, 0x3

    const/4 v2, 0x5

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lf/a/a/g/b/u;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static declared-synchronized a()Lf/a/a/g/b/u;
    .locals 2

    const-class v0, Lf/a/a/g/b/u;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lf/a/a/g/b/u;->c:Lf/a/a/g/b/u;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lf/a/a/g/b/u;

    invoke-direct {v1}, Lf/a/a/g/b/u;-><init>()V

    sput-object v1, Lf/a/a/g/b/u;->c:Lf/a/a/g/b/u;

    .line 3
    :cond_0
    sget-object v1, Lf/a/a/g/b/u;->c:Lf/a/a/g/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/b/u;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
