.class public final Lc/e/a/a/k/l;
.super Lc/e/a/a/p;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final j:Landroid/os/Handler;

.field public final k:Lc/e/a/a/k/k;

.field public final l:Lc/e/a/a/k/h;

.field public final m:Lc/e/a/a/E;

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Lcom/google/android/exoplayer2/Format;

.field public r:Lc/e/a/a/k/f;

.field public s:Lc/e/a/a/k/i;

.field public t:Lc/e/a/a/k/j;

.field public u:Lc/e/a/a/k/j;

.field public v:I


# direct methods
.method public constructor <init>(Lc/e/a/a/k/k;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/k/h;->a:Lc/e/a/a/k/h;

    invoke-direct {p0, p1, p2, v0}, Lc/e/a/a/k/l;-><init>(Lc/e/a/a/k/k;Landroid/os/Looper;Lc/e/a/a/k/h;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/k/k;Landroid/os/Looper;Lc/e/a/a/k/h;)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lc/e/a/a/p;-><init>(I)V

    .line 3
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/k/k;

    iput-object p1, p0, Lc/e/a/a/k/l;->k:Lc/e/a/a/k/k;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lc/e/a/a/o/I;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lc/e/a/a/k/l;->j:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lc/e/a/a/k/l;->l:Lc/e/a/a/k/h;

    .line 6
    new-instance p1, Lc/e/a/a/E;

    invoke-direct {p1}, Lc/e/a/a/E;-><init>()V

    iput-object p1, p0, Lc/e/a/a/k/l;->m:Lc/e/a/a/E;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/k/l;->z()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    invoke-interface {v0}, Lc/e/a/a/c/d;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc/e/a/a/k/l;->p:I

    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/k/l;->A()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/k/l;->l:Lc/e/a/a/k/h;

    iget-object v1, p0, Lc/e/a/a/k/l;->q:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lc/e/a/a/k/h;->b(Lcom/google/android/exoplayer2/Format;)Lc/e/a/a/k/f;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/k/l;->l:Lc/e/a/a/k/h;

    invoke-interface {v0, p1}, Lc/e/a/a/k/h;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0, p1}, Lc/e/a/a/p;->a(Lc/e/a/a/d/l;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    .line 3
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-static {p1}, Lc/e/a/a/o/s;->k(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a(JJ)V
    .locals 8

    .line 15
    iget-boolean p3, p0, Lc/e/a/a/k/l;->o:Z

    if-eqz p3, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object p3, p0, Lc/e/a/a/k/l;->u:Lc/e/a/a/k/j;

    if-nez p3, :cond_1

    .line 17
    iget-object p3, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    invoke-interface {p3, p1, p2}, Lc/e/a/a/k/f;->a(J)V

    .line 18
    :try_start_0
    iget-object p3, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    invoke-interface {p3}, Lc/e/a/a/c/d;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/e/a/a/k/j;

    iput-object p3, p0, Lc/e/a/a/k/l;->u:Lc/e/a/a/k/j;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p0}, Lc/e/a/a/p;->q()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lc/e/a/a/p;->getState()I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    return-void

    .line 21
    :cond_2
    iget-object p3, p0, Lc/e/a/a/k/l;->t:Lc/e/a/a/k/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 22
    invoke-virtual {p0}, Lc/e/a/a/k/l;->y()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_4

    .line 23
    iget p3, p0, Lc/e/a/a/k/l;->v:I

    add-int/2addr p3, v1

    iput p3, p0, Lc/e/a/a/k/l;->v:I

    .line 24
    invoke-virtual {p0}, Lc/e/a/a/k/l;->y()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 25
    :cond_4
    iget-object v2, p0, Lc/e/a/a/k/l;->u:Lc/e/a/a/k/j;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 26
    invoke-virtual {v2}, Lc/e/a/a/c/a;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p3, :cond_8

    .line 27
    invoke-virtual {p0}, Lc/e/a/a/k/l;->y()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 28
    iget v2, p0, Lc/e/a/a/k/l;->p:I

    if-ne v2, p4, :cond_5

    .line 29
    invoke-virtual {p0}, Lc/e/a/a/k/l;->B()V

    goto :goto_2

    .line 30
    :cond_5
    invoke-virtual {p0}, Lc/e/a/a/k/l;->z()V

    .line 31
    iput-boolean v1, p0, Lc/e/a/a/k/l;->o:Z

    goto :goto_2

    .line 32
    :cond_6
    iget-object v2, p0, Lc/e/a/a/k/l;->u:Lc/e/a/a/k/j;

    iget-wide v4, v2, Lc/e/a/a/c/g;->b:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_8

    .line 33
    iget-object p3, p0, Lc/e/a/a/k/l;->t:Lc/e/a/a/k/j;

    if-eqz p3, :cond_7

    .line 34
    invoke-virtual {p3}, Lc/e/a/a/c/g;->k()V

    .line 35
    :cond_7
    iget-object p3, p0, Lc/e/a/a/k/l;->u:Lc/e/a/a/k/j;

    iput-object p3, p0, Lc/e/a/a/k/l;->t:Lc/e/a/a/k/j;

    .line 36
    iput-object v3, p0, Lc/e/a/a/k/l;->u:Lc/e/a/a/k/j;

    .line 37
    iget-object p3, p0, Lc/e/a/a/k/l;->t:Lc/e/a/a/k/j;

    invoke-virtual {p3, p1, p2}, Lc/e/a/a/k/j;->a(J)I

    move-result p3

    iput p3, p0, Lc/e/a/a/k/l;->v:I

    const/4 p3, 0x1

    :cond_8
    :goto_2
    if-eqz p3, :cond_9

    .line 38
    iget-object p3, p0, Lc/e/a/a/k/l;->t:Lc/e/a/a/k/j;

    invoke-virtual {p3, p1, p2}, Lc/e/a/a/k/j;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/a/k/l;->b(Ljava/util/List;)V

    .line 39
    :cond_9
    iget p1, p0, Lc/e/a/a/k/l;->p:I

    if-ne p1, p4, :cond_a

    return-void

    .line 40
    :cond_a
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lc/e/a/a/k/l;->n:Z

    if-nez p1, :cond_f

    .line 41
    iget-object p1, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    if-nez p1, :cond_b

    .line 42
    iget-object p1, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    invoke-interface {p1}, Lc/e/a/a/c/d;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/k/i;

    iput-object p1, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    .line 43
    iget-object p1, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    if-nez p1, :cond_b

    return-void

    .line 44
    :cond_b
    iget p1, p0, Lc/e/a/a/k/l;->p:I

    if-ne p1, v1, :cond_c

    .line 45
    iget-object p1, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lc/e/a/a/c/a;->e(I)V

    .line 46
    iget-object p1, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    iget-object p2, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    invoke-interface {p1, p2}, Lc/e/a/a/c/d;->a(Ljava/lang/Object;)V

    .line 47
    iput-object v3, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    .line 48
    iput p4, p0, Lc/e/a/a/k/l;->p:I

    return-void

    .line 49
    :cond_c
    iget-object p1, p0, Lc/e/a/a/k/l;->m:Lc/e/a/a/E;

    iget-object p2, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/a/p;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_e

    .line 50
    iget-object p1, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    invoke-virtual {p1}, Lc/e/a/a/c/a;->i()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 51
    iput-boolean v1, p0, Lc/e/a/a/k/l;->n:Z

    goto :goto_4

    .line 52
    :cond_d
    iget-object p1, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    iget-object p2, p0, Lc/e/a/a/k/l;->m:Lc/e/a/a/E;

    iget-object p2, p2, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/Format;->m:J

    iput-wide p2, p1, Lc/e/a/a/k/i;->f:J

    .line 53
    iget-object p1, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    invoke-virtual {p1}, Lc/e/a/a/c/f;->k()V

    .line 54
    :goto_4
    iget-object p1, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    iget-object p2, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    invoke-interface {p1, p2}, Lc/e/a/a/c/d;->a(Ljava/lang/Object;)V

    .line 55
    iput-object v3, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_e
    const/4 p2, -0x3

    if-ne p1, p2, :cond_a

    :cond_f
    return-void

    :catch_1
    move-exception p1

    .line 56
    invoke-virtual {p0}, Lc/e/a/a/p;->q()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public a(JZ)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/k/l;->x()V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lc/e/a/a/k/l;->n:Z

    .line 10
    iput-boolean p1, p0, Lc/e/a/a/k/l;->o:Z

    .line 11
    iget p1, p0, Lc/e/a/a/k/l;->p:I

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lc/e/a/a/k/l;->B()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/k/l;->z()V

    .line 14
    iget-object p1, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    invoke-interface {p1}, Lc/e/a/a/c/d;->flush()V

    :goto_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/k/b;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lc/e/a/a/k/l;->k:Lc/e/a/a/k/k;

    invoke-interface {v0, p1}, Lc/e/a/a/k/k;->a(Ljava/util/List;)V

    return-void
.end method

.method public a([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    const/4 p2, 0x0

    .line 4
    aget-object p1, p1, p2

    iput-object p1, p0, Lc/e/a/a/k/l;->q:Lcom/google/android/exoplayer2/Format;

    .line 5
    iget-object p1, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lc/e/a/a/k/l;->p:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lc/e/a/a/k/l;->l:Lc/e/a/a/k/h;

    iget-object p2, p0, Lc/e/a/a/k/l;->q:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lc/e/a/a/k/h;->b(Lcom/google/android/exoplayer2/Format;)Lc/e/a/a/k/f;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/k/l;->r:Lc/e/a/a/k/f;

    :goto_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/k/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/a/k/l;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lc/e/a/a/k/l;->a(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/k/l;->o:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/e/a/a/k/l;->a(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/e/a/a/k/l;->q:Lcom/google/android/exoplayer2/Format;

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/k/l;->x()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/k/l;->A()V

    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/e/a/a/k/l;->b(Ljava/util/List;)V

    return-void
.end method

.method public final y()J
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/k/l;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lc/e/a/a/k/l;->t:Lc/e/a/a/k/j;

    .line 2
    invoke-virtual {v1}, Lc/e/a/a/k/j;->f()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/a/k/l;->t:Lc/e/a/a/k/j;

    iget v1, p0, Lc/e/a/a/k/l;->v:I

    .line 3
    invoke-virtual {v0, v1}, Lc/e/a/a/k/j;->a(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    return-wide v0
.end method

.method public final z()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/e/a/a/k/l;->s:Lc/e/a/a/k/i;

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lc/e/a/a/k/l;->v:I

    .line 3
    iget-object v1, p0, Lc/e/a/a/k/l;->t:Lc/e/a/a/k/j;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lc/e/a/a/c/g;->k()V

    .line 5
    iput-object v0, p0, Lc/e/a/a/k/l;->t:Lc/e/a/a/k/j;

    .line 6
    :cond_0
    iget-object v1, p0, Lc/e/a/a/k/l;->u:Lc/e/a/a/k/j;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lc/e/a/a/c/g;->k()V

    .line 8
    iput-object v0, p0, Lc/e/a/a/k/l;->u:Lc/e/a/a/k/j;

    :cond_1
    return-void
.end method
