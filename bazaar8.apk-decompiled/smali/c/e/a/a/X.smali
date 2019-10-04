.class public Lc/e/a/a/X;
.super Lc/e/a/a/o;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lc/e/a/a/w;
.implements Lc/e/a/a/M$a;
.implements Lc/e/a/a/M$e;
.implements Lc/e/a/a/M$d;
.implements Lc/e/a/a/M$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/X$a;
    }
.end annotation


# instance fields
.field public A:Lc/e/a/a/b/l;

.field public B:F

.field public C:Lc/e/a/a/j/v;

.field public D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/a/k/b;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lc/e/a/a/p/o;

.field public F:Lc/e/a/a/p/a/a;

.field public G:Z

.field public H:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field public I:Z

.field public final b:[Lc/e/a/a/Q;

.field public final c:Lc/e/a/a/z;

.field public final d:Landroid/os/Handler;

.field public final e:Lc/e/a/a/X$a;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lc/e/a/a/p/r;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lc/e/a/a/b/p;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lc/e/a/a/k/k;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lc/e/a/a/g/f;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lc/e/a/a/p/s;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lc/e/a/a/b/q;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lc/e/a/a/n/f;

.field public final m:Lc/e/a/a/a/a;

.field public final n:Lc/e/a/a/b/o;

.field public o:Lcom/google/android/exoplayer2/Format;

.field public p:Lcom/google/android/exoplayer2/Format;

.field public q:Landroid/view/Surface;

.field public r:Z

.field public s:I

.field public t:Landroid/view/SurfaceHolder;

.field public u:Landroid/view/TextureView;

.field public v:I

.field public w:I

.field public x:Lc/e/a/a/c/e;

.field public y:Lc/e/a/a/c/e;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Lc/e/a/a/n/f;Lc/e/a/a/a/a$a;Landroid/os/Looper;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/e/a/a/U;",
            "Lc/e/a/a/l/r;",
            "Lc/e/a/a/F;",
            "Lc/e/a/a/d/l<",
            "Lc/e/a/a/d/p;",
            ">;",
            "Lc/e/a/a/n/f;",
            "Lc/e/a/a/a/a$a;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v8, Lc/e/a/a/o/f;->a:Lc/e/a/a/o/f;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lc/e/a/a/X;-><init>(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Lc/e/a/a/n/f;Lc/e/a/a/a/a$a;Lc/e/a/a/o/f;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/e/a/a/U;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/d/l;Lc/e/a/a/n/f;Lc/e/a/a/a/a$a;Lc/e/a/a/o/f;Landroid/os/Looper;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/e/a/a/U;",
            "Lc/e/a/a/l/r;",
            "Lc/e/a/a/F;",
            "Lc/e/a/a/d/l<",
            "Lc/e/a/a/d/p;",
            ">;",
            "Lc/e/a/a/n/f;",
            "Lc/e/a/a/a/a$a;",
            "Lc/e/a/a/o/f;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 2
    invoke-direct {p0}, Lc/e/a/a/o;-><init>()V

    .line 3
    iput-object v9, v0, Lc/e/a/a/X;->l:Lc/e/a/a/n/f;

    .line 4
    new-instance v1, Lc/e/a/a/X$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc/e/a/a/X$a;-><init>(Lc/e/a/a/X;Lc/e/a/a/W;)V

    iput-object v1, v0, Lc/e/a/a/X;->e:Lc/e/a/a/X$a;

    .line 5
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lc/e/a/a/X;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lc/e/a/a/X;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lc/e/a/a/X;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 8
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lc/e/a/a/X;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lc/e/a/a/X;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lc/e/a/a/X;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v10, p9

    invoke-direct {v1, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lc/e/a/a/X;->d:Landroid/os/Handler;

    .line 12
    iget-object v2, v0, Lc/e/a/a/X;->d:Landroid/os/Handler;

    iget-object v6, v0, Lc/e/a/a/X;->e:Lc/e/a/a/X$a;

    move-object v1, p2

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    move-object/from16 v7, p5

    .line 13
    invoke-interface/range {v1 .. v7}, Lc/e/a/a/U;->a(Landroid/os/Handler;Lc/e/a/a/p/s;Lc/e/a/a/b/q;Lc/e/a/a/k/k;Lc/e/a/a/g/f;Lc/e/a/a/d/l;)[Lc/e/a/a/Q;

    move-result-object v1

    iput-object v1, v0, Lc/e/a/a/X;->b:[Lc/e/a/a/Q;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    iput v1, v0, Lc/e/a/a/X;->B:F

    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lc/e/a/a/X;->z:I

    .line 16
    sget-object v1, Lc/e/a/a/b/l;->a:Lc/e/a/a/b/l;

    iput-object v1, v0, Lc/e/a/a/X;->A:Lc/e/a/a/b/l;

    const/4 v1, 0x1

    .line 17
    iput v1, v0, Lc/e/a/a/X;->s:I

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc/e/a/a/X;->D:Ljava/util/List;

    .line 19
    new-instance v11, Lc/e/a/a/z;

    iget-object v2, v0, Lc/e/a/a/X;->b:[Lc/e/a/a/Q;

    move-object v1, v11

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lc/e/a/a/z;-><init>([Lc/e/a/a/Q;Lc/e/a/a/l/r;Lc/e/a/a/F;Lc/e/a/a/n/f;Lc/e/a/a/o/f;Landroid/os/Looper;)V

    iput-object v11, v0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    .line 20
    iget-object v1, v0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-virtual {v2, v1, v3}, Lc/e/a/a/a/a$a;->a(Lc/e/a/a/M;Lc/e/a/a/o/f;)Lc/e/a/a/a/a;

    move-result-object v1

    iput-object v1, v0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    .line 21
    iget-object v1, v0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-virtual {p0, v1}, Lc/e/a/a/X;->a(Lc/e/a/a/M$b;)V

    .line 22
    iget-object v1, v0, Lc/e/a/a/X;->e:Lc/e/a/a/X$a;

    invoke-virtual {p0, v1}, Lc/e/a/a/X;->a(Lc/e/a/a/M$b;)V

    .line 23
    iget-object v1, v0, Lc/e/a/a/X;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, v0, Lc/e/a/a/X;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, v0, Lc/e/a/a/X;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v1, v0, Lc/e/a/a/X;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v1, v0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-virtual {p0, v1}, Lc/e/a/a/X;->a(Lc/e/a/a/g/f;)V

    .line 28
    iget-object v1, v0, Lc/e/a/a/X;->d:Landroid/os/Handler;

    iget-object v2, v0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-interface {v9, v1, v2}, Lc/e/a/a/n/f;->a(Landroid/os/Handler;Lc/e/a/a/n/f$a;)V

    .line 29
    instance-of v1, v8, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    if-eqz v1, :cond_0

    .line 30
    move-object v1, v8

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v2, v0, Lc/e/a/a/X;->d:Landroid/os/Handler;

    iget-object v3, v0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a(Landroid/os/Handler;Lc/e/a/a/d/h;)V

    .line 31
    :cond_0
    new-instance v1, Lc/e/a/a/b/o;

    iget-object v2, v0, Lc/e/a/a/X;->e:Lc/e/a/a/X$a;

    move-object v3, p1

    invoke-direct {v1, p1, v2}, Lc/e/a/a/b/o;-><init>(Landroid/content/Context;Lc/e/a/a/b/o$b;)V

    iput-object v1, v0, Lc/e/a/a/X;->n:Lc/e/a/a/b/o;

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/X;I)I
    .locals 0

    .line 9
    iput p1, p0, Lc/e/a/a/X;->z:I

    return p1
.end method

.method public static synthetic a(Lc/e/a/a/X;Lc/e/a/a/c/e;)Lc/e/a/a/c/e;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/X;->x:Lc/e/a/a/c/e;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/a/X;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/X;->p:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/a/X;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3
    iput-object p1, p0, Lc/e/a/a/X;->D:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 4
    iget-object p0, p0, Lc/e/a/a/X;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/a/X;II)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/X;->a(II)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/X;Landroid/view/Surface;Z)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/X;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/X;ZI)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/X;->a(ZI)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/X;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lc/e/a/a/X;->I:Z

    return p1
.end method

.method public static synthetic b(Lc/e/a/a/X;Lc/e/a/a/c/e;)Lc/e/a/a/c/e;
    .locals 0

    .line 3
    iput-object p1, p0, Lc/e/a/a/X;->y:Lc/e/a/a/c/e;

    return-object p1
.end method

.method public static synthetic b(Lc/e/a/a/X;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/X;->o:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method public static synthetic b(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/X;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic c(Lc/e/a/a/X;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->B()V

    return-void
.end method

.method public static synthetic d(Lc/e/a/a/X;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/X;->H:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method public static synthetic e(Lc/e/a/a/X;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/e/a/a/X;->I:Z

    return p0
.end method

.method public static synthetic f(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/X;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic g(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/X;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic h(Lc/e/a/a/X;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/X;->q:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic i(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/X;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic j(Lc/e/a/a/X;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/X;->z:I

    return p0
.end method

.method public static synthetic k(Lc/e/a/a/X;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/X;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/X;->u:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/a/X;->e:Lc/e/a/a/X$a;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 3
    invoke-static {v0, v2}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/X;->u:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 5
    :goto_0
    iput-object v1, p0, Lc/e/a/a/X;->u:Landroid/view/TextureView;

    .line 6
    :cond_1
    iget-object v0, p0, Lc/e/a/a/X;->t:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 7
    iget-object v2, p0, Lc/e/a/a/X;->e:Lc/e/a/a/X$a;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    iput-object v1, p0, Lc/e/a/a/X;->t:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method public final B()V
    .locals 7

    .line 1
    iget v0, p0, Lc/e/a/a/X;->B:F

    iget-object v1, p0, Lc/e/a/a/X;->n:Lc/e/a/a/b/o;

    invoke-virtual {v1}, Lc/e/a/a/b/o;->d()F

    move-result v1

    mul-float v0, v0, v1

    .line 2
    iget-object v1, p0, Lc/e/a/a/X;->b:[Lc/e/a/a/Q;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-interface {v4}, Lc/e/a/a/Q;->f()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 4
    iget-object v5, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v5, v4}, Lc/e/a/a/z;->a(Lc/e/a/a/O$b;)Lc/e/a/a/O;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lc/e/a/a/O;->a(I)Lc/e/a/a/O;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc/e/a/a/O;->a(Ljava/lang/Object;)Lc/e/a/a/O;

    invoke-virtual {v4}, Lc/e/a/a/O;->k()Lc/e/a/a/O;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final C()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/a/X;->r()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/X;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Player is accessed on the wrong thread. See https://exoplayer.dev/faqs.html#what-do-player-is-accessed-on-the-wrong-thread-warnings-mean"

    invoke-static {v1, v2, v0}, Lc/e/a/a/o/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/X;->G:Z

    :cond_1
    return-void
.end method

.method public a(I)I
    .locals 1

    .line 61
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 62
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0, p1}, Lc/e/a/a/z;->a(I)I

    move-result p1

    return p1
.end method

.method public a()Lc/e/a/a/K;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 60
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->a()Lc/e/a/a/K;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)V
    .locals 2

    .line 77
    iget v0, p0, Lc/e/a/a/X;->v:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lc/e/a/a/X;->w:I

    if-eq p2, v0, :cond_1

    .line 78
    :cond_0
    iput p1, p0, Lc/e/a/a/X;->v:I

    .line 79
    iput p2, p0, Lc/e/a/a/X;->w:I

    .line 80
    iget-object v0, p0, Lc/e/a/a/X;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/p/r;

    .line 81
    invoke-interface {v1, p1, p2}, Lc/e/a/a/p/r;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 57
    iget-object v0, p0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-virtual {v0}, Lc/e/a/a/a/a;->k()V

    .line 58
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/z;->a(IJ)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 11
    invoke-virtual {p0}, Lc/e/a/a/X;->A()V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lc/e/a/a/X;->a(Landroid/view/Surface;Z)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    invoke-virtual {p0, v0, v0}, Lc/e/a/a/X;->a(II)V

    return-void
.end method

.method public final a(Landroid/view/Surface;Z)V
    .locals 7

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lc/e/a/a/X;->b:[Lc/e/a/a/Q;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 65
    invoke-interface {v4}, Lc/e/a/a/Q;->f()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 66
    iget-object v5, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    .line 67
    invoke-virtual {v5, v4}, Lc/e/a/a/z;->a(Lc/e/a/a/O$b;)Lc/e/a/a/O;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lc/e/a/a/O;->a(I)Lc/e/a/a/O;

    invoke-virtual {v4, p1}, Lc/e/a/a/O;->a(Ljava/lang/Object;)Lc/e/a/a/O;

    invoke-virtual {v4}, Lc/e/a/a/O;->k()Lc/e/a/a/O;

    .line 68
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lc/e/a/a/X;->q:Landroid/view/Surface;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 70
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/O;

    .line 71
    invoke-virtual {v1}, Lc/e/a/a/O;->a()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 73
    :cond_2
    iget-boolean v0, p0, Lc/e/a/a/X;->r:Z

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lc/e/a/a/X;->q:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 75
    :cond_3
    iput-object p1, p0, Lc/e/a/a/X;->q:Landroid/view/Surface;

    .line 76
    iput-boolean p2, p0, Lc/e/a/a/X;->r:Z

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 14
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lc/e/a/a/X;->t:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lc/e/a/a/X;->b(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lc/e/a/a/X;->b(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public a(Landroid/view/TextureView;)V
    .locals 1

    .line 18
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    if-eqz p1, :cond_0

    .line 19
    iget-object v0, p0, Lc/e/a/a/X;->u:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lc/e/a/a/X;->b(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/M$b;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 43
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0, p1}, Lc/e/a/a/z;->a(Lc/e/a/a/M$b;)V

    return-void
.end method

.method public a(Lc/e/a/a/g/f;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lc/e/a/a/X;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lc/e/a/a/j/v;)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, p1, v0, v0}, Lc/e/a/a/X;->a(Lc/e/a/a/j/v;ZZ)V

    return-void
.end method

.method public a(Lc/e/a/a/j/v;ZZ)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 46
    iget-object v0, p0, Lc/e/a/a/X;->C:Lc/e/a/a/j/v;

    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-interface {v0, v1}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/w;)V

    .line 48
    iget-object v0, p0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-virtual {v0}, Lc/e/a/a/a/a;->l()V

    .line 49
    :cond_0
    iput-object p1, p0, Lc/e/a/a/X;->C:Lc/e/a/a/j/v;

    .line 50
    iget-object v0, p0, Lc/e/a/a/X;->d:Landroid/os/Handler;

    iget-object v1, p0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-interface {p1, v0, v1}, Lc/e/a/a/j/v;->a(Landroid/os/Handler;Lc/e/a/a/j/w;)V

    .line 51
    iget-object v0, p0, Lc/e/a/a/X;->n:Lc/e/a/a/b/o;

    invoke-virtual {p0}, Lc/e/a/a/X;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lc/e/a/a/b/o;->c(Z)I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lc/e/a/a/X;->f()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lc/e/a/a/X;->a(ZI)V

    .line 53
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/z;->a(Lc/e/a/a/j/v;ZZ)V

    return-void
.end method

.method public a(Lc/e/a/a/k/k;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lc/e/a/a/X;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lc/e/a/a/p/a/a;)V
    .locals 6

    .line 31
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 32
    iput-object p1, p0, Lc/e/a/a/X;->F:Lc/e/a/a/p/a/a;

    .line 33
    iget-object v0, p0, Lc/e/a/a/X;->b:[Lc/e/a/a/Q;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 34
    invoke-interface {v3}, Lc/e/a/a/Q;->f()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 35
    iget-object v4, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    .line 36
    invoke-virtual {v4, v3}, Lc/e/a/a/z;->a(Lc/e/a/a/O$b;)Lc/e/a/a/O;

    move-result-object v3

    const/4 v4, 0x7

    .line 37
    invoke-virtual {v3, v4}, Lc/e/a/a/O;->a(I)Lc/e/a/a/O;

    .line 38
    invoke-virtual {v3, p1}, Lc/e/a/a/O;->a(Ljava/lang/Object;)Lc/e/a/a/O;

    .line 39
    invoke-virtual {v3}, Lc/e/a/a/O;->k()Lc/e/a/a/O;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lc/e/a/a/p/o;)V
    .locals 6

    .line 22
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 23
    iput-object p1, p0, Lc/e/a/a/X;->E:Lc/e/a/a/p/o;

    .line 24
    iget-object v0, p0, Lc/e/a/a/X;->b:[Lc/e/a/a/Q;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 25
    invoke-interface {v3}, Lc/e/a/a/Q;->f()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 26
    iget-object v4, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    .line 27
    invoke-virtual {v4, v3}, Lc/e/a/a/z;->a(Lc/e/a/a/O$b;)Lc/e/a/a/O;

    move-result-object v3

    const/4 v4, 0x6

    .line 28
    invoke-virtual {v3, v4}, Lc/e/a/a/O;->a(I)Lc/e/a/a/O;

    .line 29
    invoke-virtual {v3, p1}, Lc/e/a/a/O;->a(Ljava/lang/Object;)Lc/e/a/a/O;

    .line 30
    invoke-virtual {v3}, Lc/e/a/a/O;->k()Lc/e/a/a/O;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lc/e/a/a/p/r;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lc/e/a/a/X;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 55
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0, p1}, Lc/e/a/a/z;->a(Z)V

    return-void
.end method

.method public final a(ZI)V
    .locals 3

    .line 82
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p1, v1}, Lc/e/a/a/z;->a(ZZ)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 59
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->b()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 64
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0, p1}, Lc/e/a/a/z;->b(I)V

    return-void
.end method

.method public b(Landroid/view/Surface;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lc/e/a/a/X;->q:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lc/e/a/a/X;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 7
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/X;->A()V

    .line 9
    iput-object p1, p0, Lc/e/a/a/X;->t:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/X;->a(Landroid/view/Surface;Z)V

    .line 11
    invoke-virtual {p0, v1, v1}, Lc/e/a/a/X;->a(II)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lc/e/a/a/X;->e:Lc/e/a/a/X$a;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 13
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {p0, v2, v1}, Lc/e/a/a/X;->a(Landroid/view/Surface;Z)V

    .line 16
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lc/e/a/a/X;->a(II)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/X;->a(Landroid/view/Surface;Z)V

    .line 19
    invoke-virtual {p0, v1, v1}, Lc/e/a/a/X;->a(II)V

    :goto_0
    return-void
.end method

.method public b(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lc/e/a/a/X;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public b(Landroid/view/TextureView;)V
    .locals 5

    .line 21
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 22
    invoke-virtual {p0}, Lc/e/a/a/X;->A()V

    .line 23
    iput-object p1, p0, Lc/e/a/a/X;->u:Landroid/view/TextureView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0, v1, v0}, Lc/e/a/a/X;->a(Landroid/view/Surface;Z)V

    .line 25
    invoke-virtual {p0, v2, v2}, Lc/e/a/a/X;->a(II)V

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "SimpleExoPlayer"

    const-string v4, "Replacing existing SurfaceTextureListener."

    .line 27
    invoke-static {v3, v4}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_1
    iget-object v3, p0, Lc/e/a/a/X;->e:Lc/e/a/a/X$a;

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 30
    invoke-virtual {p0, v1, v0}, Lc/e/a/a/X;->a(Landroid/view/Surface;Z)V

    .line 31
    invoke-virtual {p0, v2, v2}, Lc/e/a/a/X;->a(II)V

    goto :goto_1

    .line 32
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v1, v0}, Lc/e/a/a/X;->a(Landroid/view/Surface;Z)V

    .line 33
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lc/e/a/a/X;->a(II)V

    :goto_1
    return-void
.end method

.method public b(Lc/e/a/a/M$b;)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 57
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0, p1}, Lc/e/a/a/z;->b(Lc/e/a/a/M$b;)V

    return-void
.end method

.method public b(Lc/e/a/a/k/k;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lc/e/a/a/X;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lc/e/a/a/X;->D:Ljava/util/List;

    invoke-interface {p1, v0}, Lc/e/a/a/k/k;->a(Ljava/util/List;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lc/e/a/a/X;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lc/e/a/a/p/a/a;)V
    .locals 5

    .line 44
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 45
    iget-object v0, p0, Lc/e/a/a/X;->F:Lc/e/a/a/p/a/a;

    if-eq v0, p1, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lc/e/a/a/X;->b:[Lc/e/a/a/Q;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 47
    invoke-interface {v2}, Lc/e/a/a/Q;->f()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 48
    iget-object v3, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    .line 49
    invoke-virtual {v3, v2}, Lc/e/a/a/z;->a(Lc/e/a/a/O$b;)Lc/e/a/a/O;

    move-result-object v2

    const/4 v3, 0x7

    .line 50
    invoke-virtual {v2, v3}, Lc/e/a/a/O;->a(I)Lc/e/a/a/O;

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v3}, Lc/e/a/a/O;->a(Ljava/lang/Object;)Lc/e/a/a/O;

    .line 52
    invoke-virtual {v2}, Lc/e/a/a/O;->k()Lc/e/a/a/O;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Lc/e/a/a/p/o;)V
    .locals 5

    .line 35
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 36
    iget-object v0, p0, Lc/e/a/a/X;->E:Lc/e/a/a/p/o;

    if-eq v0, p1, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Lc/e/a/a/X;->b:[Lc/e/a/a/Q;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 38
    invoke-interface {v2}, Lc/e/a/a/Q;->f()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 39
    iget-object v3, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    .line 40
    invoke-virtual {v3, v2}, Lc/e/a/a/z;->a(Lc/e/a/a/O$b;)Lc/e/a/a/O;

    move-result-object v2

    const/4 v3, 0x6

    .line 41
    invoke-virtual {v2, v3}, Lc/e/a/a/O;->a(I)Lc/e/a/a/O;

    const/4 v3, 0x0

    .line 42
    invoke-virtual {v2, v3}, Lc/e/a/a/O;->a(Ljava/lang/Object;)Lc/e/a/a/O;

    .line 43
    invoke-virtual {v2}, Lc/e/a/a/O;->k()Lc/e/a/a/O;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Lc/e/a/a/p/r;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lc/e/a/a/X;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 61
    iget-object v0, p0, Lc/e/a/a/X;->n:Lc/e/a/a/b/o;

    invoke-virtual {p0}, Lc/e/a/a/X;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lc/e/a/a/b/o;->a(ZI)I

    move-result v0

    .line 62
    invoke-virtual {p0, p1, v0}, Lc/e/a/a/X;->a(ZI)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->c()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->d()I

    move-result v0

    return v0
.end method

.method public e()J
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->f()Z

    move-result v0

    return v0
.end method

.method public g()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->g()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->i()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->j()I

    move-result v0

    return v0
.end method

.method public k()Lc/e/a/a/M$e;
    .locals 0

    return-object p0
.end method

.method public l()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->n()I

    move-result v0

    return v0
.end method

.method public p()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->p()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public q()Lc/e/a/a/Z;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->q()Lc/e/a/a/Z;

    move-result-object v0

    return-object v0
.end method

.method public r()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->r()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->s()Z

    move-result v0

    return v0
.end method

.method public t()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public u()Lc/e/a/a/l/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->u()Lc/e/a/a/l/o;

    move-result-object v0

    return-object v0
.end method

.method public v()Lc/e/a/a/M$d;
    .locals 0

    return-object p0
.end method

.method public z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/X;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/X;->n:Lc/e/a/a/b/o;

    invoke-virtual {v0}, Lc/e/a/a/b/o;->e()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/X;->c:Lc/e/a/a/z;

    invoke-virtual {v0}, Lc/e/a/a/z;->A()V

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/X;->A()V

    .line 5
    iget-object v0, p0, Lc/e/a/a/X;->q:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v2, p0, Lc/e/a/a/X;->r:Z

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 8
    :cond_0
    iput-object v1, p0, Lc/e/a/a/X;->q:Landroid/view/Surface;

    .line 9
    :cond_1
    iget-object v0, p0, Lc/e/a/a/X;->C:Lc/e/a/a/j/v;

    if-eqz v0, :cond_2

    .line 10
    iget-object v2, p0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-interface {v0, v2}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/w;)V

    .line 11
    iput-object v1, p0, Lc/e/a/a/X;->C:Lc/e/a/a/j/v;

    .line 12
    :cond_2
    iget-boolean v0, p0, Lc/e/a/a/X;->I:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lc/e/a/a/X;->H:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b(I)V

    .line 14
    iput-boolean v1, p0, Lc/e/a/a/X;->I:Z

    .line 15
    :cond_3
    iget-object v0, p0, Lc/e/a/a/X;->l:Lc/e/a/a/n/f;

    iget-object v1, p0, Lc/e/a/a/X;->m:Lc/e/a/a/a/a;

    invoke-interface {v0, v1}, Lc/e/a/a/n/f;->a(Lc/e/a/a/n/f$a;)V

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/X;->D:Ljava/util/List;

    return-void
.end method
