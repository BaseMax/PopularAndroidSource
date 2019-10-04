.class public abstract Lc/e/a/a/p;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lc/e/a/a/Q;
.implements Lc/e/a/a/S;


# instance fields
.field public final a:I

.field public b:Lc/e/a/a/T;

.field public c:I

.field public d:I

.field public e:Lc/e/a/a/j/C;

.field public f:[Lcom/google/android/exoplayer2/Format;

.field public g:J

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/p;->a:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lc/e/a/a/p;->h:J

    return-void
.end method

.method public static a(Lc/e/a/a/d/l;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/d/l<",
            "*>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 26
    :cond_1
    invoke-interface {p0, p1}, Lc/e/a/a/d/l;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I
    .locals 5

    .line 16
    iget-object v0, p0, Lc/e/a/a/p;->e:Lc/e/a/a/j/C;

    invoke-interface {v0, p1, p2, p3}, Lc/e/a/a/j/C;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 17
    invoke-virtual {p2}, Lc/e/a/a/c/a;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 18
    iput-wide p1, p0, Lc/e/a/a/p;->h:J

    .line 19
    iget-boolean p1, p0, Lc/e/a/a/p;->i:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 20
    :cond_1
    iget-wide v0, p2, Lc/e/a/a/c/f;->d:J

    iget-wide v2, p0, Lc/e/a/a/p;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lc/e/a/a/c/f;->d:J

    .line 21
    iget-wide v0, p0, Lc/e/a/a/p;->h:J

    iget-wide p1, p2, Lc/e/a/a/c/f;->d:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lc/e/a/a/p;->h:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 22
    iget-object p2, p1, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;

    .line 23
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Format;->m:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 24
    iget-wide v2, p0, Lc/e/a/a/p;->g:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 25
    iput-object p2, p1, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;

    :cond_3
    :goto_1
    return p3
.end method

.method public synthetic a(F)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/a/P;->a(Lc/e/a/a/Q;F)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final a(J)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lc/e/a/a/p;->i:Z

    .line 14
    iput-wide p1, p0, Lc/e/a/a/p;->h:J

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/a/p;->a(JZ)V

    return-void
.end method

.method public abstract a(JZ)V
.end method

.method public final a(Lc/e/a/a/T;[Lcom/google/android/exoplayer2/Format;Lc/e/a/a/j/C;JZJ)V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/p;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 2
    iput-object p1, p0, Lc/e/a/a/p;->b:Lc/e/a/a/T;

    .line 3
    iput v1, p0, Lc/e/a/a/p;->d:I

    .line 4
    invoke-virtual {p0, p6}, Lc/e/a/a/p;->a(Z)V

    .line 5
    invoke-virtual {p0, p2, p3, p7, p8}, Lc/e/a/a/p;->a([Lcom/google/android/exoplayer2/Format;Lc/e/a/a/j/C;J)V

    .line 6
    invoke-virtual {p0, p4, p5, p6}, Lc/e/a/a/p;->a(JZ)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    return-void
.end method

.method public final a([Lcom/google/android/exoplayer2/Format;Lc/e/a/a/j/C;J)V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lc/e/a/a/p;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 8
    iput-object p2, p0, Lc/e/a/a/p;->e:Lc/e/a/a/j/C;

    .line 9
    iput-wide p3, p0, Lc/e/a/a/p;->h:J

    .line 10
    iput-object p1, p0, Lc/e/a/a/p;->f:[Lcom/google/android/exoplayer2/Format;

    .line 11
    iput-wide p3, p0, Lc/e/a/a/p;->g:J

    .line 12
    invoke-virtual {p0, p1, p3, p4}, Lc/e/a/a/p;->a([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method public b(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/p;->e:Lc/e/a/a/j/C;

    iget-wide v1, p0, Lc/e/a/a/p;->g:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/C;->d(J)I

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget v0, p0, Lc/e/a/a/p;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc/e/a/a/o/e;->b(Z)V

    .line 2
    iput v2, p0, Lc/e/a/a/p;->d:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/a/a/p;->e:Lc/e/a/a/j/C;

    .line 4
    iput-object v0, p0, Lc/e/a/a/p;->f:[Lcom/google/android/exoplayer2/Format;

    .line 5
    iput-boolean v2, p0, Lc/e/a/a/p;->i:Z

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/p;->t()V

    return-void
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/p;->a:I

    return v0
.end method

.method public final g()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/e/a/a/p;->h:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/p;->d:I

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/p;->i:Z

    return-void
.end method

.method public final i()Lc/e/a/a/S;
    .locals 0

    return-object p0
.end method

.method public final j()Lc/e/a/a/j/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/p;->e:Lc/e/a/a/j/C;

    return-object v0
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/p;->e:Lc/e/a/a/j/C;

    invoke-interface {v0}, Lc/e/a/a/j/C;->a()V

    return-void
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/p;->h:J

    return-wide v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/p;->i:Z

    return v0
.end method

.method public n()Lc/e/a/a/o/r;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()Lc/e/a/a/T;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/p;->b:Lc/e/a/a/T;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/p;->c:I

    return v0
.end method

.method public final r()[Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/p;->f:[Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/p;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/p;->u()V

    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/e/a/a/p;->i:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/a/p;->e:Lc/e/a/a/j/C;

    invoke-interface {v0}, Lc/e/a/a/j/C;->c()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/e/a/a/p;->c:I

    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/p;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc/e/a/a/o/e;->b(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lc/e/a/a/p;->d:I

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/p;->v()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lc/e/a/a/p;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 2
    iput v1, p0, Lc/e/a/a/p;->d:I

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/p;->w()V

    return-void
.end method

.method public abstract t()V
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method
