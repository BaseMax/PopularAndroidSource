.class public final Lc/e/a/a/X$a;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lc/e/a/a/p/s;
.implements Lc/e/a/a/b/q;
.implements Lc/e/a/a/k/k;
.implements Lc/e/a/a/g/f;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lc/e/a/a/b/o$b;
.implements Lc/e/a/a/M$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/a/X;


# direct methods
.method public constructor <init>(Lc/e/a/a/X;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/X;Lc/e/a/a/W;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/a/X$a;-><init>(Lc/e/a/a/X;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 30
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1}, Lc/e/a/a/X;->c(Lc/e/a/a/X;)V

    return-void
.end method

.method public synthetic a(I)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/a/N;->b(Lc/e/a/a/M$b;I)V

    return-void
.end method

.method public a(IIIF)V
    .locals 3

    .line 8
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->g(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/p/r;

    .line 9
    iget-object v2, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v2}, Lc/e/a/a/X;->f(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-interface {v1, p1, p2, p3, p4}, Lc/e/a/a/p/r;->a(IIIF)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->f(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/p/s;

    .line 12
    invoke-interface {v1, p1, p2, p3, p4}, Lc/e/a/a/p/s;->a(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .line 6
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->f(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/p/s;

    .line 7
    invoke-interface {v1, p1, p2, p3}, Lc/e/a/a/p/s;->a(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(IJJ)V
    .locals 8

    .line 18
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->i(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lc/e/a/a/b/q;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 19
    invoke-interface/range {v2 .. v7}, Lc/e/a/a/b/q;->a(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->h(Lc/e/a/a/X;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 14
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->g(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/p/r;

    .line 15
    invoke-interface {v1}, Lc/e/a/a/p/r;->a()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->f(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/p/s;

    .line 17
    invoke-interface {v1, p1}, Lc/e/a/a/p/s;->a(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic a(Lc/e/a/a/K;)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;Lc/e/a/a/K;)V

    return-void
.end method

.method public synthetic a(Lc/e/a/a/Z;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;Lc/e/a/a/Z;Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Lc/e/a/a/c/e;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->i(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/b/q;

    .line 21
    invoke-interface {v1, p1}, Lc/e/a/a/b/q;->a(Lc/e/a/a/c/e;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 23
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1, v0}, Lc/e/a/a/X;->b(Lc/e/a/a/X;Lc/e/a/a/c/e;)Lc/e/a/a/c/e;

    .line 24
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc/e/a/a/X;->a(Lc/e/a/a/X;I)I

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0, p1}, Lc/e/a/a/X;->b(Lc/e/a/a/X;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 4
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->f(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/p/s;

    .line 5
    invoke-interface {v1, p1}, Lc/e/a/a/p/s;->a(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->b(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/g/f;

    .line 29
    invoke-interface {v1, p1}, Lc/e/a/a/g/f;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/o;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/o;)V

    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->f(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lc/e/a/a/p/s;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 2
    invoke-interface/range {v2 .. v7}, Lc/e/a/a/p/s;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/e/a/a/k/b;",
            ">;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0, p1}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Ljava/util/List;)Ljava/util/List;

    .line 26
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->a(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/k/k;

    .line 27
    invoke-interface {v1, p1}, Lc/e/a/a/k/k;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 31
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->d(Lc/e/a/a/X;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 32
    iget-object v1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v1}, Lc/e/a/a/X;->e(Lc/e/a/a/X;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1}, Lc/e/a/a/X;->d(Lc/e/a/a/X;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a(I)V

    .line 34
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Z)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 35
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1}, Lc/e/a/a/X;->e(Lc/e/a/a/X;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1}, Lc/e/a/a/X;->d(Lc/e/a/a/X;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b(I)V

    .line 37
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1, v0}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic a(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;ZI)V

    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;)V

    return-void
.end method

.method public synthetic b(I)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;I)V

    return-void
.end method

.method public b(Lc/e/a/a/c/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0, p1}, Lc/e/a/a/X;->b(Lc/e/a/a/X;Lc/e/a/a/c/e;)Lc/e/a/a/c/e;

    .line 2
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->i(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/b/q;

    .line 3
    invoke-interface {v1, p1}, Lc/e/a/a/b/q;->b(Lc/e/a/a/c/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0, p1}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 7
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->i(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/b/q;

    .line 8
    invoke-interface {v1, p1}, Lc/e/a/a/b/q;->b(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;JJ)V
    .locals 8

    .line 4
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->i(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lc/e/a/a/b/q;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 5
    invoke-interface/range {v2 .. v7}, Lc/e/a/a/b/q;->b(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic b(Z)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/a/N;->b(Lc/e/a/a/M$b;Z)V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->j(Lc/e/a/a/X;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0, p1}, Lc/e/a/a/X;->a(Lc/e/a/a/X;I)I

    .line 6
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->k(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/b/p;

    .line 7
    iget-object v2, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v2}, Lc/e/a/a/X;->i(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-interface {v1, p1}, Lc/e/a/a/b/p;->c(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->i(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/b/q;

    .line 10
    invoke-interface {v1, p1}, Lc/e/a/a/b/q;->c(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public c(Lc/e/a/a/c/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0, p1}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Lc/e/a/a/c/e;)Lc/e/a/a/c/e;

    .line 2
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->f(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/p/s;

    .line 3
    invoke-interface {v1, p1}, Lc/e/a/a/p/s;->c(Lc/e/a/a/c/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 5
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-virtual {v0}, Lc/e/a/a/X;->f()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lc/e/a/a/X;->a(Lc/e/a/a/X;ZI)V

    return-void
.end method

.method public d(Lc/e/a/a/c/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {v0}, Lc/e/a/a/X;->f(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/p/s;

    .line 2
    invoke-interface {v1, p1}, Lc/e/a/a/p/s;->d(Lc/e/a/a/c/e;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc/e/a/a/X;->b(Lc/e/a/a/X;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 4
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1, v0}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Lc/e/a/a/c/e;)Lc/e/a/a/c/e;

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Landroid/view/Surface;Z)V

    .line 2
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1, p2, p3}, Lc/e/a/a/X;->a(Lc/e/a/a/X;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Landroid/view/Surface;Z)V

    .line 2
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Lc/e/a/a/X;->a(Lc/e/a/a/X;II)V

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1, p2, p3}, Lc/e/a/a/X;->a(Lc/e/a/a/X;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1, p3, p4}, Lc/e/a/a/X;->a(Lc/e/a/a/X;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lc/e/a/a/X;->a(Lc/e/a/a/X;Landroid/view/Surface;Z)V

    .line 2
    iget-object p1, p0, Lc/e/a/a/X$a;->a:Lc/e/a/a/X;

    invoke-static {p1, v0, v0}, Lc/e/a/a/X;->a(Lc/e/a/a/X;II)V

    return-void
.end method
