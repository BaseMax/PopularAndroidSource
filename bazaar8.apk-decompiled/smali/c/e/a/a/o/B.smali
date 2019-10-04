.class public final Lc/e/a/a/o/B;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lc/e/a/a/o/r;


# instance fields
.field public final a:Lc/e/a/a/o/f;

.field public b:Z

.field public c:J

.field public d:J

.field public e:Lc/e/a/a/K;


# direct methods
.method public constructor <init>(Lc/e/a/a/o/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/o/B;->a:Lc/e/a/a/o/f;

    .line 3
    sget-object p1, Lc/e/a/a/K;->a:Lc/e/a/a/K;

    iput-object p1, p0, Lc/e/a/a/o/B;->e:Lc/e/a/a/K;

    return-void
.end method


# virtual methods
.method public a()Lc/e/a/a/K;
    .locals 1

    .line 7
    iget-object v0, p0, Lc/e/a/a/o/B;->e:Lc/e/a/a/K;

    return-object v0
.end method

.method public a(Lc/e/a/a/K;)Lc/e/a/a/K;
    .locals 2

    .line 4
    iget-boolean v0, p0, Lc/e/a/a/o/B;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/o/B;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc/e/a/a/o/B;->a(J)V

    .line 6
    :cond_0
    iput-object p1, p0, Lc/e/a/a/o/B;->e:Lc/e/a/a/K;

    return-object p1
.end method

.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc/e/a/a/o/B;->c:J

    .line 2
    iget-boolean p1, p0, Lc/e/a/a/o/B;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lc/e/a/a/o/B;->a:Lc/e/a/a/o/f;

    invoke-interface {p1}, Lc/e/a/a/o/f;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lc/e/a/a/o/B;->d:J

    :cond_0
    return-void
.end method

.method public b()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lc/e/a/a/o/B;->c:J

    .line 2
    iget-boolean v2, p0, Lc/e/a/a/o/B;->b:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lc/e/a/a/o/B;->a:Lc/e/a/a/o/f;

    invoke-interface {v2}, Lc/e/a/a/o/f;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lc/e/a/a/o/B;->d:J

    sub-long/2addr v2, v4

    .line 4
    iget-object v4, p0, Lc/e/a/a/o/B;->e:Lc/e/a/a/K;

    iget v5, v4, Lc/e/a/a/K;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 5
    invoke-static {v2, v3}, Lc/e/a/a/q;->a(J)J

    move-result-wide v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v4, v2, v3}, Lc/e/a/a/K;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/o/B;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/o/B;->a:Lc/e/a/a/o/f;

    invoke-interface {v0}, Lc/e/a/a/o/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/a/o/B;->d:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/o/B;->b:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/o/B;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/o/B;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc/e/a/a/o/B;->a(J)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/o/B;->b:Z

    :cond_0
    return-void
.end method
