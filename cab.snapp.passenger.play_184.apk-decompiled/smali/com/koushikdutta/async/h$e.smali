.class final Lcom/koushikdutta/async/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/Runnable;

.field c:Lcom/koushikdutta/async/ae;

.field d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/koushikdutta/async/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/h$e;->a:Z

    if-eqz v0, :cond_0

    .line 56
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/koushikdutta/async/h$e;->a:Z

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/koushikdutta/async/h$e;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    iget-object v1, p0, Lcom/koushikdutta/async/h$e;->c:Lcom/koushikdutta/async/ae;

    invoke-virtual {v1, p0}, Lcom/koushikdutta/async/ae;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/koushikdutta/async/h$e;->d:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iput-object v0, p0, Lcom/koushikdutta/async/h$e;->c:Lcom/koushikdutta/async/ae;

    .line 67
    iput-object v0, p0, Lcom/koushikdutta/async/h$e;->d:Landroid/os/Handler;

    .line 68
    iput-object v0, p0, Lcom/koushikdutta/async/h$e;->b:Ljava/lang/Runnable;

    return-void

    :catchall_0
    move-exception v1

    .line 63
    iget-object v2, p0, Lcom/koushikdutta/async/h$e;->c:Lcom/koushikdutta/async/ae;

    invoke-virtual {v2, p0}, Lcom/koushikdutta/async/ae;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lcom/koushikdutta/async/h$e;->d:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iput-object v0, p0, Lcom/koushikdutta/async/h$e;->c:Lcom/koushikdutta/async/ae;

    .line 67
    iput-object v0, p0, Lcom/koushikdutta/async/h$e;->d:Landroid/os/Handler;

    .line 68
    iput-object v0, p0, Lcom/koushikdutta/async/h$e;->b:Ljava/lang/Runnable;

    throw v1

    :catchall_1
    move-exception v0

    .line 58
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
