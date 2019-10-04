.class public final Lc/e/a/a/z;
.super Lc/e/a/a/o;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lc/e/a/a/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/z$a;
    }
.end annotation


# instance fields
.field public final b:Lc/e/a/a/l/s;

.field public final c:[Lc/e/a/a/Q;

.field public final d:Lc/e/a/a/l/r;

.field public final e:Landroid/os/Handler;

.field public final f:Lc/e/a/a/B;

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lc/e/a/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lc/e/a/a/Z$a;

.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lc/e/a/a/j/v;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Lc/e/a/a/K;

.field public t:Lc/e/a/a/V;

.field public u:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field public v:Lc/e/a/a/J;

.field public w:I

.field public x:I

.field public y:J


# direct methods
.method public constructor <init>([Lc/e/a/a/Q;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/n/f;Lc/e/a/a/o/f;Landroid/os/Looper;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct {p0}, Lc/e/a/a/o;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ExoPlayerLib/2.10.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lc/e/a/a/o/I;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v1}, Lc/e/a/a/o/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    array-length v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lc/e/a/a/o/e;->b(Z)V

    .line 4
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Lc/e/a/a/Q;

    iput-object v1, v0, Lc/e/a/a/z;->c:[Lc/e/a/a/Q;

    .line 5
    invoke-static {p2}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lc/e/a/a/l/r;

    iput-object v1, v0, Lc/e/a/a/z;->d:Lc/e/a/a/l/r;

    .line 6
    iput-boolean v3, v0, Lc/e/a/a/z;->l:Z

    .line 7
    iput v3, v0, Lc/e/a/a/z;->n:I

    .line 8
    iput-boolean v3, v0, Lc/e/a/a/z;->o:Z

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lc/e/a/a/z;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v1, Lc/e/a/a/l/s;

    array-length v3, v2

    new-array v3, v3, [Lc/e/a/a/T;

    array-length v4, v2

    new-array v4, v4, [Lc/e/a/a/l/n;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lc/e/a/a/l/s;-><init>([Lc/e/a/a/T;[Lc/e/a/a/l/n;Ljava/lang/Object;)V

    iput-object v1, v0, Lc/e/a/a/z;->b:Lc/e/a/a/l/s;

    .line 11
    new-instance v1, Lc/e/a/a/Z$a;

    invoke-direct {v1}, Lc/e/a/a/Z$a;-><init>()V

    iput-object v1, v0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    .line 12
    sget-object v1, Lc/e/a/a/K;->a:Lc/e/a/a/K;

    iput-object v1, v0, Lc/e/a/a/z;->s:Lc/e/a/a/K;

    .line 13
    sget-object v1, Lc/e/a/a/V;->e:Lc/e/a/a/V;

    iput-object v1, v0, Lc/e/a/a/z;->t:Lc/e/a/a/V;

    .line 14
    new-instance v1, Lc/e/a/a/y;

    move-object/from16 v3, p6

    invoke-direct {v1, p0, v3}, Lc/e/a/a/y;-><init>(Lc/e/a/a/z;Landroid/os/Looper;)V

    iput-object v1, v0, Lc/e/a/a/z;->e:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    .line 15
    iget-object v1, v0, Lc/e/a/a/z;->b:Lc/e/a/a/l/s;

    invoke-static {v3, v4, v1}, Lc/e/a/a/J;->a(JLc/e/a/a/l/s;)Lc/e/a/a/J;

    move-result-object v1

    iput-object v1, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    .line 16
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lc/e/a/a/z;->j:Ljava/util/ArrayDeque;

    .line 17
    new-instance v12, Lc/e/a/a/B;

    iget-object v4, v0, Lc/e/a/a/z;->b:Lc/e/a/a/l/s;

    iget-boolean v7, v0, Lc/e/a/a/z;->l:Z

    iget v8, v0, Lc/e/a/a/z;->n:I

    iget-boolean v9, v0, Lc/e/a/a/z;->o:Z

    iget-object v10, v0, Lc/e/a/a/z;->e:Landroid/os/Handler;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lc/e/a/a/B;-><init>([Lc/e/a/a/Q;Lc/e/a/a/l/r;Lc/e/a/a/l/s;Lc/e/a/a/F;Lc/e/a/a/n/f;ZIZLandroid/os/Handler;Lc/e/a/a/o/f;)V

    iput-object v12, v0, Lc/e/a/a/z;->f:Lc/e/a/a/B;

    .line 18
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lc/e/a/a/z;->f:Lc/e/a/a/B;

    invoke-virtual {v2}, Lc/e/a/a/B;->d()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lc/e/a/a/z;->g:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(ILc/e/a/a/M$b;)V
    .locals 0

    .line 18
    invoke-interface {p1, p0}, Lc/e/a/a/M$b;->a(I)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/K;Lc/e/a/a/M$b;)V
    .locals 0

    .line 60
    invoke-interface {p1, p0}, Lc/e/a/a/M$b;->a(Lc/e/a/a/K;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ExoPlaybackException;Lc/e/a/a/M$b;)V
    .locals 0

    .line 61
    invoke-interface {p1, p0}, Lc/e/a/a/M$b;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc/e/a/a/z;->b(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    return-void
.end method

.method public static synthetic a(ZILc/e/a/a/M$b;)V
    .locals 0

    .line 17
    invoke-interface {p2, p0, p1}, Lc/e/a/a/M$b;->a(ZI)V

    return-void
.end method

.method public static synthetic a(ZLc/e/a/a/M$b;)V
    .locals 0

    .line 23
    invoke-interface {p1, p0}, Lc/e/a/a/M$b;->b(Z)V

    return-void
.end method

.method public static b(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lc/e/a/a/o$a;",
            ">;",
            "Lc/e/a/a/o$b;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/o$a;

    .line 12
    invoke-virtual {v0, p1}, Lc/e/a/a/o$a;->a(Lc/e/a/a/o$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic c(Lc/e/a/a/M$b;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lc/e/a/a/M$b;->b(I)V

    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lc/e/a/a/z;->b(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.10.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/e/a/a/o/I;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lc/e/a/a/C;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 3
    invoke-static {v1, v0}, Lc/e/a/a/o/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/e/a/a/z;->k:Lc/e/a/a/j/v;

    .line 5
    iget-object v1, p0, Lc/e/a/a/z;->f:Lc/e/a/a/B;

    invoke-virtual {v1}, Lc/e/a/a/B;->n()V

    .line 6
    iget-object v1, p0, Lc/e/a/a/z;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v0, v1}, Lc/e/a/a/z;->a(ZZI)Lc/e/a/a/J;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    return-void
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lc/e/a/a/z;->p:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a(I)I
    .locals 1

    .line 49
    iget-object v0, p0, Lc/e/a/a/z;->c:[Lc/e/a/a/Q;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lc/e/a/a/Q;->f()I

    move-result p1

    return p1
.end method

.method public final a(Lc/e/a/a/j/v$a;J)J
    .locals 2

    .line 97
    invoke-static {p2, p3}, Lc/e/a/a/q;->b(J)J

    move-result-wide p2

    .line 98
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object p1, p1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    invoke-virtual {v0, p1, v1}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    .line 99
    iget-object p1, p0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    invoke-virtual {p1}, Lc/e/a/a/Z$a;->d()J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method public final a(ZZI)Lc/e/a/a/J;
    .locals 24

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 76
    iput v3, v0, Lc/e/a/a/z;->w:I

    .line 77
    iput v3, v0, Lc/e/a/a/z;->x:I

    .line 78
    iput-wide v1, v0, Lc/e/a/a/z;->y:J

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/z;->j()I

    move-result v4

    iput v4, v0, Lc/e/a/a/z;->w:I

    .line 80
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/z;->z()I

    move-result v4

    iput v4, v0, Lc/e/a/a/z;->x:I

    .line 81
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/z;->getCurrentPosition()J

    move-result-wide v4

    iput-wide v4, v0, Lc/e/a/a/z;->y:J

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    .line 82
    iget-object v4, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-boolean v5, v0, Lc/e/a/a/z;->o:Z

    iget-object v6, v0, Lc/e/a/a/o;->a:Lc/e/a/a/Z$b;

    .line 83
    invoke-virtual {v4, v5, v6}, Lc/e/a/a/J;->a(ZLc/e/a/a/Z$b;)Lc/e/a/a/j/v$a;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v4, v4, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    :goto_1
    move-object/from16 v17, v4

    if-eqz v3, :cond_4

    goto :goto_2

    .line 84
    :cond_4
    iget-object v1, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-wide v1, v1, Lc/e/a/a/J;->n:J

    :goto_2
    move-wide/from16 v22, v1

    if-eqz v3, :cond_5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 85
    :cond_5
    iget-object v1, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-wide v1, v1, Lc/e/a/a/J;->f:J

    :goto_3
    move-wide v11, v1

    .line 86
    new-instance v1, Lc/e/a/a/J;

    if-eqz p2, :cond_6

    sget-object v2, Lc/e/a/a/Z;->a:Lc/e/a/a/Z;

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v2, v2, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    :goto_4
    move-object v6, v2

    if-eqz p2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v2, v2, Lc/e/a/a/J;->c:Ljava/lang/Object;

    :goto_5
    move-object v7, v2

    const/4 v14, 0x0

    if-eqz p2, :cond_8

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_6

    :cond_8
    iget-object v2, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v2, v2, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_6
    move-object v15, v2

    if-eqz p2, :cond_9

    iget-object v2, v0, Lc/e/a/a/z;->b:Lc/e/a/a/l/s;

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v2, v2, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    :goto_7
    move-object/from16 v16, v2

    const-wide/16 v20, 0x0

    move-object v5, v1

    move-object/from16 v8, v17

    move-wide/from16 v9, v22

    move/from16 v13, p3

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    return-object v1
.end method

.method public a()Lc/e/a/a/K;
    .locals 1

    .line 46
    iget-object v0, p0, Lc/e/a/a/z;->s:Lc/e/a/a/K;

    return-object v0
.end method

.method public a(Lc/e/a/a/O$b;)Lc/e/a/a/O;
    .locals 7

    .line 47
    new-instance v6, Lc/e/a/a/O;

    iget-object v1, p0, Lc/e/a/a/z;->f:Lc/e/a/a/B;

    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v3, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    .line 48
    invoke-virtual {p0}, Lc/e/a/a/z;->j()I

    move-result v4

    iget-object v5, p0, Lc/e/a/a/z;->g:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/O;-><init>(Lc/e/a/a/O$a;Lc/e/a/a/O$b;Lc/e/a/a/Z;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public a(IJ)V
    .locals 9

    .line 24
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    if-ltz p1, :cond_5

    .line 25
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lc/e/a/a/Z;->b()I

    move-result v1

    if-ge p1, v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lc/e/a/a/z;->r:Z

    .line 27
    iget v2, p0, Lc/e/a/a/z;->p:I

    add-int/2addr v2, v1

    iput v2, p0, Lc/e/a/a/z;->p:I

    .line 28
    invoke-virtual {p0}, Lc/e/a/a/z;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 29
    invoke-static {p1, p2}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lc/e/a/a/z;->e:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    .line 31
    invoke-virtual {p1, v3, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 33
    :cond_1
    iput p1, p0, Lc/e/a/a/z;->w:I

    .line 34
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v4

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    move-wide v1, p2

    .line 35
    :goto_0
    iput-wide v1, p0, Lc/e/a/a/z;->y:J

    .line 36
    iput v3, p0, Lc/e/a/a/z;->x:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v4

    if-nez v1, :cond_4

    .line 37
    iget-object v1, p0, Lc/e/a/a/o;->a:Lc/e/a/a/Z$b;

    .line 38
    invoke-virtual {v0, p1, v1}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/a/Z$b;->b()J

    move-result-wide v1

    goto :goto_1

    :cond_4
    invoke-static {p2, p3}, Lc/e/a/a/q;->a(J)J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 39
    iget-object v2, p0, Lc/e/a/a/o;->a:Lc/e/a/a/Z$b;

    iget-object v3, p0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    move-object v1, v0

    move v4, p1

    move-wide v5, v7

    .line 40
    invoke-virtual/range {v1 .. v6}, Lc/e/a/a/Z;->a(Lc/e/a/a/Z$b;Lc/e/a/a/Z$a;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 41
    invoke-static {v7, v8}, Lc/e/a/a/q;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lc/e/a/a/z;->y:J

    .line 42
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lc/e/a/a/z;->x:I

    .line 43
    :goto_2
    iget-object v1, p0, Lc/e/a/a/z;->f:Lc/e/a/a/B;

    invoke-static {p2, p3}, Lc/e/a/a/q;->a(J)J

    move-result-wide p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lc/e/a/a/B;->b(Lc/e/a/a/Z;IJ)V

    .line 44
    sget-object p1, Lc/e/a/a/d;->a:Lc/e/a/a/d;

    invoke-virtual {p0, p1}, Lc/e/a/a/z;->a(Lc/e/a/a/o$b;)V

    return-void

    .line 45
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lc/e/a/a/Z;IJ)V

    throw v1
.end method

.method public a(Landroid/os/Message;)V
    .locals 5

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 52
    iput-object p1, p0, Lc/e/a/a/z;->u:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 53
    new-instance v0, Lc/e/a/a/l;

    invoke-direct {v0, p1}, Lc/e/a/a/l;-><init>(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    invoke-virtual {p0, v0}, Lc/e/a/a/z;->a(Lc/e/a/a/o$b;)V

    goto :goto_1

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 55
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/K;

    .line 56
    iget-object v0, p0, Lc/e/a/a/z;->s:Lc/e/a/a/K;

    invoke-virtual {v0, p1}, Lc/e/a/a/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 57
    iput-object p1, p0, Lc/e/a/a/z;->s:Lc/e/a/a/K;

    .line 58
    new-instance v0, Lc/e/a/a/e;

    invoke-direct {v0, p1}, Lc/e/a/a/e;-><init>(Lc/e/a/a/K;)V

    invoke-virtual {p0, v0}, Lc/e/a/a/z;->a(Lc/e/a/a/o$b;)V

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/J;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v2, v1, p1}, Lc/e/a/a/z;->a(Lc/e/a/a/J;IZI)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lc/e/a/a/J;IZI)V
    .locals 6

    .line 62
    iget v0, p0, Lc/e/a/a/z;->p:I

    sub-int/2addr v0, p2

    iput v0, p0, Lc/e/a/a/z;->p:I

    .line 63
    iget p2, p0, Lc/e/a/a/z;->p:I

    if-nez p2, :cond_3

    .line 64
    iget-wide v0, p1, Lc/e/a/a/J;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 65
    iget-object v1, p1, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lc/e/a/a/J;->f:J

    move-object v0, p1

    .line 66
    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;JJ)Lc/e/a/a/J;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 67
    iget-object p1, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object p1, p1, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    invoke-virtual {p1}, Lc/e/a/a/Z;->c()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, v1, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    invoke-virtual {p1}, Lc/e/a/a/Z;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iput p2, p0, Lc/e/a/a/z;->x:I

    .line 69
    iput p2, p0, Lc/e/a/a/z;->w:I

    const-wide/16 v2, 0x0

    .line 70
    iput-wide v2, p0, Lc/e/a/a/z;->y:J

    .line 71
    :cond_1
    iget-boolean p1, p0, Lc/e/a/a/z;->q:Z

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    const/4 v4, 0x2

    .line 72
    :goto_0
    iget-boolean v5, p0, Lc/e/a/a/z;->r:Z

    .line 73
    iput-boolean p2, p0, Lc/e/a/a/z;->q:Z

    .line 74
    iput-boolean p2, p0, Lc/e/a/a/z;->r:Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    .line 75
    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/z;->a(Lc/e/a/a/J;ZIIZ)V

    :cond_3
    return-void
.end method

.method public final a(Lc/e/a/a/J;ZIIZ)V
    .locals 12

    move-object v0, p0

    .line 87
    iget-object v3, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    move-object v2, p1

    .line 88
    iput-object v2, v0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    .line 89
    new-instance v11, Lc/e/a/a/z$a;

    iget-object v4, v0, Lc/e/a/a/z;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, v0, Lc/e/a/a/z;->d:Lc/e/a/a/l/r;

    iget-boolean v10, v0, Lc/e/a/a/z;->l:Z

    move-object v1, v11

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lc/e/a/a/z$a;-><init>(Lc/e/a/a/J;Lc/e/a/a/J;Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/l/r;ZIIZZ)V

    invoke-virtual {p0, v11}, Lc/e/a/a/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lc/e/a/a/M$b;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/e/a/a/z;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lc/e/a/a/o$a;

    invoke-direct {v1, p1}, Lc/e/a/a/o$a;-><init>(Lc/e/a/a/M$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lc/e/a/a/j/v;ZZ)V
    .locals 7

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/a/a/z;->u:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 4
    iput-object p1, p0, Lc/e/a/a/z;->k:Lc/e/a/a/j/v;

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, p2, p3, v0}, Lc/e/a/a/z;->a(ZZI)Lc/e/a/a/J;

    move-result-object v2

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lc/e/a/a/z;->q:Z

    .line 7
    iget v1, p0, Lc/e/a/a/z;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lc/e/a/a/z;->p:I

    .line 8
    iget-object v0, p0, Lc/e/a/a/z;->f:Lc/e/a/a/B;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/B;->a(Lc/e/a/a/j/v;ZZ)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 9
    invoke-virtual/range {v1 .. v6}, Lc/e/a/a/z;->a(Lc/e/a/a/J;ZIIZ)V

    return-void
.end method

.method public final a(Lc/e/a/a/o$b;)V
    .locals 2

    .line 90
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lc/e/a/a/z;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    new-instance v1, Lc/e/a/a/b;

    invoke-direct {v1, v0, p1}, Lc/e/a/a/b;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    invoke-virtual {p0, v1}, Lc/e/a/a/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lc/e/a/a/z;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 93
    iget-object v1, p0, Lc/e/a/a/z;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    :goto_0
    iget-object p1, p0, Lc/e/a/a/z;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 95
    iget-object p1, p0, Lc/e/a/a/z;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 96
    iget-object p1, p0, Lc/e/a/a/z;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lc/e/a/a/z;->o:Z

    if-eq v0, p1, :cond_0

    .line 20
    iput-boolean p1, p0, Lc/e/a/a/z;->o:Z

    .line 21
    iget-object v0, p0, Lc/e/a/a/z;->f:Lc/e/a/a/B;

    invoke-virtual {v0, p1}, Lc/e/a/a/B;->f(Z)V

    .line 22
    new-instance v0, Lc/e/a/a/k;

    invoke-direct {v0, p1}, Lc/e/a/a/k;-><init>(Z)V

    invoke-virtual {p0, v0}, Lc/e/a/a/z;->a(Lc/e/a/a/o$b;)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 10
    :goto_0
    iget-boolean v0, p0, Lc/e/a/a/z;->m:Z

    if-eq v0, p2, :cond_1

    .line 11
    iput-boolean p2, p0, Lc/e/a/a/z;->m:Z

    .line 12
    iget-object v0, p0, Lc/e/a/a/z;->f:Lc/e/a/a/B;

    invoke-virtual {v0, p2}, Lc/e/a/a/B;->d(Z)V

    .line 13
    :cond_1
    iget-boolean p2, p0, Lc/e/a/a/z;->l:Z

    if-eq p2, p1, :cond_2

    .line 14
    iput-boolean p1, p0, Lc/e/a/a/z;->l:Z

    .line 15
    iget-object p2, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget p2, p2, Lc/e/a/a/J;->g:I

    .line 16
    new-instance v0, Lc/e/a/a/c;

    invoke-direct {v0, p1, p2}, Lc/e/a/a/c;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lc/e/a/a/z;->a(Lc/e/a/a/o$b;)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget v0, v0, Lc/e/a/a/J;->g:I

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 7
    iget v0, p0, Lc/e/a/a/z;->n:I

    if-eq v0, p1, :cond_0

    .line 8
    iput p1, p0, Lc/e/a/a/z;->n:I

    .line 9
    iget-object v0, p0, Lc/e/a/a/z;->f:Lc/e/a/a/B;

    invoke-virtual {v0, p1}, Lc/e/a/a/B;->a(I)V

    .line 10
    new-instance v0, Lc/e/a/a/m;

    invoke-direct {v0, p1}, Lc/e/a/a/m;-><init>(I)V

    invoke-virtual {p0, v0}, Lc/e/a/a/z;->a(Lc/e/a/a/o$b;)V

    :cond_0
    return-void
.end method

.method public b(Lc/e/a/a/M$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/z;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/o$a;

    .line 2
    iget-object v2, v1, Lc/e/a/a/o$a;->a:Lc/e/a/a/M$b;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lc/e/a/a/o$a;->a()V

    .line 4
    iget-object v2, p0, Lc/e/a/a/z;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lc/e/a/a/z;->a(ZZ)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/z;->B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    invoke-virtual {v0}, Lc/e/a/a/j/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/z;->n:I

    return v0
.end method

.method public e()J
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-wide v0, v0, Lc/e/a/a/J;->m:J

    invoke-static {v0, v1}, Lc/e/a/a/q;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/z;->l:Z

    return v0
.end method

.method public g()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/z;->u:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/z;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lc/e/a/a/z;->y:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    invoke-virtual {v0}, Lc/e/a/a/j/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-wide v0, v0, Lc/e/a/a/J;->n:J

    invoke-static {v0, v1}, Lc/e/a/a/q;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v2, v0, Lc/e/a/a/J;->n:J

    invoke-virtual {p0, v1, v2, v3}, Lc/e/a/a/z;->a(Lc/e/a/a/j/v$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    .line 3
    iget-object v0, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v2, v1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    invoke-virtual {v0, v2, v3}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    .line 4
    iget-object v0, p0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    iget v2, v1, Lc/e/a/a/j/v$a;->b:I

    iget v1, v1, Lc/e/a/a/j/v$a;->c:I

    invoke-virtual {v0, v2, v1}, Lc/e/a/a/Z$a;->a(II)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lc/e/a/a/q;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/o;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget v0, v0, Lc/e/a/a/j/v$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public j()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/z;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lc/e/a/a/z;->w:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-object v0, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    invoke-virtual {v1, v0, v2}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    move-result-object v0

    iget v0, v0, Lc/e/a/a/Z$a;->c:I

    return v0
.end method

.method public k()Lc/e/a/a/M$e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-object v0, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    invoke-virtual {v1, v0, v2}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    .line 3
    iget-object v0, p0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    invoke-virtual {v0}, Lc/e/a/a/Z$a;->d()J

    move-result-wide v0

    iget-object v2, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-wide v2, v2, Lc/e/a/a/J;->f:J

    invoke-static {v2, v3}, Lc/e/a/a/q;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/z;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget v0, v0, Lc/e/a/a/j/v$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public p()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public q()Lc/e/a/a/Z;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    return-object v0
.end method

.method public r()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/z;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/z;->o:Z

    return v0
.end method

.method public t()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/z;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lc/e/a/a/z;->y:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    iget-wide v1, v1, Lc/e/a/a/j/v$a;->d:J

    iget-object v3, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v3, v3, Lc/e/a/a/j/v$a;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 4
    iget-object v0, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    invoke-virtual {p0}, Lc/e/a/a/z;->j()I

    move-result v1

    iget-object v2, p0, Lc/e/a/a/o;->a:Lc/e/a/a/Z$b;

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/a/Z$b;->c()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    iget-wide v0, v0, Lc/e/a/a/J;->l:J

    .line 6
    iget-object v2, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v2, v2, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    invoke-virtual {v2}, Lc/e/a/a/j/v$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v0, v0, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    iget-object v0, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lc/e/a/a/z;->i:Lc/e/a/a/Z$a;

    .line 8
    invoke-virtual {v1, v0, v2}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v1, v1, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    iget v1, v1, Lc/e/a/a/j/v$a;->b:I

    .line 10
    invoke-virtual {v0, v1}, Lc/e/a/a/Z$a;->b(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 11
    iget-wide v0, v0, Lc/e/a/a/Z$a;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 12
    :cond_3
    :goto_0
    iget-object v2, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v2, v2, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    invoke-virtual {p0, v2, v0, v1}, Lc/e/a/a/z;->a(Lc/e/a/a/j/v$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()Lc/e/a/a/l/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    iget-object v0, v0, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    return-object v0
.end method

.method public v()Lc/e/a/a/M$d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/z;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lc/e/a/a/z;->x:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/a/z;->v:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-object v0, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
