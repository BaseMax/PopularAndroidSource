.class public final Lb/j;
.super Lb/w;
.source "SourceFile"


# instance fields
.field private a:Lb/w;


# direct methods
.method public constructor <init>(Lb/w;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lb/w;-><init>()V

    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Lb/j;->a:Lb/w;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final clearDeadline()Lb/w;
    .locals 1

    .line 66
    iget-object v0, p0, Lb/j;->a:Lb/w;

    invoke-virtual {v0}, Lb/w;->clearDeadline()Lb/w;

    move-result-object v0

    return-object v0
.end method

.method public final clearTimeout()Lb/w;
    .locals 1

    .line 62
    iget-object v0, p0, Lb/j;->a:Lb/w;

    invoke-virtual {v0}, Lb/w;->clearTimeout()Lb/w;

    move-result-object v0

    return-object v0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    .line 54
    iget-object v0, p0, Lb/j;->a:Lb/w;

    invoke-virtual {v0}, Lb/w;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final deadlineNanoTime(J)Lb/w;
    .locals 1

    .line 58
    iget-object v0, p0, Lb/j;->a:Lb/w;

    invoke-virtual {v0, p1, p2}, Lb/w;->deadlineNanoTime(J)Lb/w;

    move-result-object p1

    return-object p1
.end method

.method public final delegate()Lb/w;
    .locals 1

    .line 32
    iget-object v0, p0, Lb/j;->a:Lb/w;

    return-object v0
.end method

.method public final hasDeadline()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lb/j;->a:Lb/w;

    invoke-virtual {v0}, Lb/w;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lb/w;)Lb/j;
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lb/j;->a:Lb/w;

    return-object p0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lb/j;->a:Lb/w;

    invoke-virtual {v0}, Lb/w;->throwIfReached()V

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lb/w;
    .locals 1

    .line 42
    iget-object v0, p0, Lb/j;->a:Lb/w;

    invoke-virtual {v0, p1, p2, p3}, Lb/w;->timeout(JLjava/util/concurrent/TimeUnit;)Lb/w;

    move-result-object p1

    return-object p1
.end method

.method public final timeoutNanos()J
    .locals 2

    .line 46
    iget-object v0, p0, Lb/j;->a:Lb/w;

    invoke-virtual {v0}, Lb/w;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
