.class public final Lc/e/a/a/g/g;
.super Lc/e/a/a/p;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final j:Lc/e/a/a/g/d;

.field public final k:Lc/e/a/a/g/f;

.field public final l:Landroid/os/Handler;

.field public final m:Lc/e/a/a/E;

.field public final n:Lc/e/a/a/g/e;

.field public final o:[Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final p:[J

.field public q:I

.field public r:I

.field public s:Lc/e/a/a/g/b;

.field public t:Z


# direct methods
.method public constructor <init>(Lc/e/a/a/g/f;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/g/d;->a:Lc/e/a/a/g/d;

    invoke-direct {p0, p1, p2, v0}, Lc/e/a/a/g/g;-><init>(Lc/e/a/a/g/f;Landroid/os/Looper;Lc/e/a/a/g/d;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/g/f;Landroid/os/Looper;Lc/e/a/a/g/d;)V
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lc/e/a/a/p;-><init>(I)V

    .line 3
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/g/f;

    iput-object p1, p0, Lc/e/a/a/g/g;->k:Lc/e/a/a/g/f;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lc/e/a/a/o/I;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lc/e/a/a/g/g;->l:Landroid/os/Handler;

    .line 5
    invoke-static {p3}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lc/e/a/a/g/d;

    iput-object p3, p0, Lc/e/a/a/g/g;->j:Lc/e/a/a/g/d;

    .line 6
    new-instance p1, Lc/e/a/a/E;

    invoke-direct {p1}, Lc/e/a/a/E;-><init>()V

    iput-object p1, p0, Lc/e/a/a/g/g;->m:Lc/e/a/a/E;

    .line 7
    new-instance p1, Lc/e/a/a/g/e;

    invoke-direct {p1}, Lc/e/a/a/g/e;-><init>()V

    iput-object p1, p0, Lc/e/a/a/g/g;->n:Lc/e/a/a/g/e;

    const/4 p1, 0x5

    .line 8
    new-array p2, p1, [Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object p2, p0, Lc/e/a/a/g/g;->o:[Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 9
    new-array p1, p1, [J

    iput-object p1, p0, Lc/e/a/a/g/g;->p:[J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/g/g;->j:Lc/e/a/a/g/d;

    invoke-interface {v0, p1}, Lc/e/a/a/g/d;->a(Lcom/google/android/exoplayer2/Format;)Z

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

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(JJ)V
    .locals 4

    .line 6
    iget-boolean p3, p0, Lc/e/a/a/g/g;->t:Z

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Lc/e/a/a/g/g;->r:I

    if-ge p3, p4, :cond_2

    .line 7
    iget-object p3, p0, Lc/e/a/a/g/g;->n:Lc/e/a/a/g/e;

    invoke-virtual {p3}, Lc/e/a/a/c/f;->g()V

    .line 8
    iget-object p3, p0, Lc/e/a/a/g/g;->m:Lc/e/a/a/E;

    iget-object v1, p0, Lc/e/a/a/g/g;->n:Lc/e/a/a/g/e;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lc/e/a/a/p;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I

    move-result p3

    const/4 v1, -0x4

    if-ne p3, v1, :cond_2

    .line 9
    iget-object p3, p0, Lc/e/a/a/g/g;->n:Lc/e/a/a/g/e;

    invoke-virtual {p3}, Lc/e/a/a/c/a;->i()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    iput-boolean v0, p0, Lc/e/a/a/g/g;->t:Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p3, p0, Lc/e/a/a/g/g;->n:Lc/e/a/a/g/e;

    invoke-virtual {p3}, Lc/e/a/a/c/a;->h()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p3, p0, Lc/e/a/a/g/g;->n:Lc/e/a/a/g/e;

    iget-object v1, p0, Lc/e/a/a/g/g;->m:Lc/e/a/a/E;

    iget-object v1, v1, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/Format;->m:J

    iput-wide v1, p3, Lc/e/a/a/g/e;->f:J

    .line 13
    invoke-virtual {p3}, Lc/e/a/a/c/f;->k()V

    .line 14
    iget p3, p0, Lc/e/a/a/g/g;->q:I

    iget v1, p0, Lc/e/a/a/g/g;->r:I

    add-int/2addr p3, v1

    rem-int/2addr p3, p4

    .line 15
    iget-object v1, p0, Lc/e/a/a/g/g;->s:Lc/e/a/a/g/b;

    iget-object v2, p0, Lc/e/a/a/g/g;->n:Lc/e/a/a/g/e;

    invoke-interface {v1, v2}, Lc/e/a/a/g/b;->a(Lc/e/a/a/g/e;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    iget-object v2, p0, Lc/e/a/a/g/g;->o:[Lcom/google/android/exoplayer2/metadata/Metadata;

    aput-object v1, v2, p3

    .line 17
    iget-object v1, p0, Lc/e/a/a/g/g;->p:[J

    iget-object v2, p0, Lc/e/a/a/g/g;->n:Lc/e/a/a/g/e;

    iget-wide v2, v2, Lc/e/a/a/c/f;->d:J

    aput-wide v2, v1, p3

    .line 18
    iget p3, p0, Lc/e/a/a/g/g;->r:I

    add-int/2addr p3, v0

    iput p3, p0, Lc/e/a/a/g/g;->r:I

    .line 19
    :cond_2
    :goto_0
    iget p3, p0, Lc/e/a/a/g/g;->r:I

    if-lez p3, :cond_3

    iget-object p3, p0, Lc/e/a/a/g/g;->p:[J

    iget v1, p0, Lc/e/a/a/g/g;->q:I

    aget-wide v2, p3, v1

    cmp-long p3, v2, p1

    if-gtz p3, :cond_3

    .line 20
    iget-object p1, p0, Lc/e/a/a/g/g;->o:[Lcom/google/android/exoplayer2/metadata/Metadata;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lc/e/a/a/g/g;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 21
    iget-object p1, p0, Lc/e/a/a/g/g;->o:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget p2, p0, Lc/e/a/a/g/g;->q:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v0

    .line 22
    rem-int/2addr p2, p4

    iput p2, p0, Lc/e/a/a/g/g;->q:I

    .line 23
    iget p1, p0, Lc/e/a/a/g/g;->r:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc/e/a/a/g/g;->r:I

    :cond_3
    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/g/g;->x()V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lc/e/a/a/g/g;->t:Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lc/e/a/a/g/g;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lc/e/a/a/g/g;->b(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :goto_0
    return-void
.end method

.method public a([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    .line 3
    iget-object p2, p0, Lc/e/a/a/g/g;->j:Lc/e/a/a/g/d;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lc/e/a/a/g/d;->b(Lcom/google/android/exoplayer2/Format;)Lc/e/a/a/g/b;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/g/g;->s:Lc/e/a/a/g/b;

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/g/g;->k:Lc/e/a/a/g/f;

    invoke-interface {v0, p1}, Lc/e/a/a/g/f;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

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
    iget-boolean v0, p0, Lc/e/a/a/g/g;->t:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p0, p1}, Lc/e/a/a/g/g;->b(Lcom/google/android/exoplayer2/metadata/Metadata;)V

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

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/g/g;->x()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/a/a/g/g;->s:Lc/e/a/a/g/b;

    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/g/g;->o:[Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/e/a/a/g/g;->q:I

    .line 3
    iput v0, p0, Lc/e/a/a/g/g;->r:I

    return-void
.end method
