.class public final Lc/e/a/a/u;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lc/e/a/a/o/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/u$a;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/o/B;

.field public final b:Lc/e/a/a/u$a;

.field public c:Lc/e/a/a/Q;

.field public d:Lc/e/a/a/o/r;


# direct methods
.method public constructor <init>(Lc/e/a/a/u$a;Lc/e/a/a/o/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/u;->b:Lc/e/a/a/u$a;

    .line 3
    new-instance p1, Lc/e/a/a/o/B;

    invoke-direct {p1, p2}, Lc/e/a/a/o/B;-><init>(Lc/e/a/a/o/f;)V

    iput-object p1, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    return-void
.end method


# virtual methods
.method public a()Lc/e/a/a/K;
    .locals 1

    .line 9
    iget-object v0, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/e/a/a/o/r;->a()Lc/e/a/a/K;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    .line 10
    invoke-virtual {v0}, Lc/e/a/a/o/B;->a()Lc/e/a/a/K;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Lc/e/a/a/K;)Lc/e/a/a/K;
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lc/e/a/a/o/r;->a(Lc/e/a/a/K;)Lc/e/a/a/K;

    move-result-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v0, p1}, Lc/e/a/a/o/B;->a(Lc/e/a/a/K;)Lc/e/a/a/K;

    .line 8
    iget-object v0, p0, Lc/e/a/a/u;->b:Lc/e/a/a/u$a;

    invoke-interface {v0, p1}, Lc/e/a/a/u$a;->a(Lc/e/a/a/K;)V

    return-object p1
.end method

.method public a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/o/B;->a(J)V

    return-void
.end method

.method public a(Lc/e/a/a/Q;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/u;->c:Lc/e/a/a/Q;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    .line 4
    iput-object p1, p0, Lc/e/a/a/u;->c:Lc/e/a/a/Q;

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    invoke-interface {v0}, Lc/e/a/a/o/r;->b()J

    move-result-wide v0

    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v0}, Lc/e/a/a/o/B;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lc/e/a/a/Q;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lc/e/a/a/Q;->n()Lc/e/a/a/o/r;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 3
    iput-object v0, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    .line 4
    iput-object p1, p0, Lc/e/a/a/u;->c:Lc/e/a/a/Q;

    .line 5
    iget-object p1, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    iget-object v0, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v0}, Lc/e/a/a/o/B;->a()Lc/e/a/a/K;

    move-result-object v0

    invoke-interface {p1, v0}, Lc/e/a/a/o/r;->a(Lc/e/a/a/K;)Lc/e/a/a/K;

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/u;->c()V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    invoke-interface {v0}, Lc/e/a/a/o/r;->b()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v2, v0, v1}, Lc/e/a/a/o/B;->a(J)V

    .line 3
    iget-object v0, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    invoke-interface {v0}, Lc/e/a/a/o/r;->a()Lc/e/a/a/K;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v1}, Lc/e/a/a/o/B;->a()Lc/e/a/a/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/a/K;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v1, v0}, Lc/e/a/a/o/B;->a(Lc/e/a/a/K;)Lc/e/a/a/K;

    .line 6
    iget-object v1, p0, Lc/e/a/a/u;->b:Lc/e/a/a/u$a;

    invoke-interface {v1, v0}, Lc/e/a/a/u$a;->a(Lc/e/a/a/K;)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/u;->c:Lc/e/a/a/Q;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc/e/a/a/Q;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/a/a/u;->c:Lc/e/a/a/Q;

    .line 2
    invoke-interface {v0}, Lc/e/a/a/Q;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/u;->c:Lc/e/a/a/Q;

    invoke-interface {v0}, Lc/e/a/a/Q;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v0}, Lc/e/a/a/o/B;->c()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v0}, Lc/e/a/a/o/B;->d()V

    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/u;->c()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/u;->d:Lc/e/a/a/o/r;

    invoke-interface {v0}, Lc/e/a/a/o/r;->b()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/u;->a:Lc/e/a/a/o/B;

    invoke-virtual {v0}, Lc/e/a/a/o/B;->b()J

    move-result-wide v0

    return-wide v0
.end method
