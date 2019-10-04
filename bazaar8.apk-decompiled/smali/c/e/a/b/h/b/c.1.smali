.class public abstract Lc/e/a/b/h/b/c;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Landroid/os/Handler;


# instance fields
.field public final b:Lc/e/a/b/h/b/wa;

.field public final c:Ljava/lang/Runnable;

.field public volatile d:J


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/wa;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/e/a/b/h/b/c;->b:Lc/e/a/b/h/b/wa;

    .line 4
    new-instance v0, Lc/e/a/b/h/b/d;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/h/b/d;-><init>(Lc/e/a/b/h/b/c;Lc/e/a/b/h/b/wa;)V

    iput-object v0, p0, Lc/e/a/b/h/b/c;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/c;J)J
    .locals 0

    const-wide/16 p1, 0x0

    .line 10
    iput-wide p1, p0, Lc/e/a/b/h/b/c;->d:J

    return-wide p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lc/e/a/b/h/b/c;->d:J

    .line 9
    invoke-virtual {p0}, Lc/e/a/b/h/b/c;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/c;->a()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/c;->b:Lc/e/a/b/h/b/wa;

    invoke-interface {v0}, Lc/e/a/b/h/b/wa;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/h/b/c;->d:J

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/c;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/c;->b:Lc/e/a/b/h/b/wa;

    .line 5
    invoke-interface {v0}, Lc/e/a/b/h/b/wa;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p2, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 3

    .line 1
    sget-object v0, Lc/e/a/b/h/b/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lc/e/a/b/h/b/c;->a:Landroid/os/Handler;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lc/e/a/b/h/b/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lc/e/a/b/h/b/c;->a:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lc/e/a/b/g/f/ad;

    iget-object v2, p0, Lc/e/a/b/h/b/c;->b:Lc/e/a/b/h/b/wa;

    invoke-interface {v2}, Lc/e/a/b/h/b/wa;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/e/a/b/g/f/ad;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lc/e/a/b/h/b/c;->a:Landroid/os/Handler;

    .line 6
    :cond_1
    sget-object v1, Lc/e/a/b/h/b/c;->a:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract c()V
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/e/a/b/h/b/c;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
