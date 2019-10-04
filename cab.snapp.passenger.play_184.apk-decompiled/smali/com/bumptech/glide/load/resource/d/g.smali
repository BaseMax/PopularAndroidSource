.class final Lcom/bumptech/glide/load/resource/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/g$d;,
        Lcom/bumptech/glide/load/resource/d/g$a;,
        Lcom/bumptech/glide/load/resource/d/g$c;,
        Lcom/bumptech/glide/load/resource/d/g$b;
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/b/a;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/resource/d/g$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/bumptech/glide/h;

.field d:Z

.field e:Z

.field f:Lcom/bumptech/glide/load/resource/d/g$a;

.field g:Z

.field h:Lcom/bumptech/glide/load/resource/d/g$a;

.field i:Landroid/graphics/Bitmap;

.field j:Lcom/bumptech/glide/load/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/bumptech/glide/load/resource/d/g$a;

.field private final l:Landroid/os/Handler;

.field private final m:Lcom/bumptech/glide/load/b/a/e;

.field private n:Z

.field private o:Lcom/bumptech/glide/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/bumptech/glide/load/resource/d/g$d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/b/a;",
            "II",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->getBitmapPool()Lcom/bumptech/glide/load/b/a/e;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    .line 1337
    invoke-virtual {p1}, Lcom/bumptech/glide/h;->asBitmap()Lcom/bumptech/glide/g;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/b/j;->NONE:Lcom/bumptech/glide/load/b/j;

    .line 1339
    invoke-static {v0}, Lcom/bumptech/glide/e/h;->diskCacheStrategyOf(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    const/4 v3, 0x1

    .line 1340
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/e/h;->useAnimationPool(Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 1341
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/e/h;->skipMemoryCache(Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 1342
    invoke-virtual {v0, p3, p4}, Lcom/bumptech/glide/e/h;->override(II)Lcom/bumptech/glide/e/a;

    move-result-object p3

    .line 1338
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object v4

    move-object v0, p0

    move-object v3, p2

    move-object v5, p5

    move-object v6, p6

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/d/g;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/h;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/h;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/h;",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/g;->c:Lcom/bumptech/glide/h;

    .line 85
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/d/g$c;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/resource/d/g$c;-><init>(Lcom/bumptech/glide/load/resource/d/g;)V

    invoke-direct {p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 87
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Lcom/bumptech/glide/load/b/a/e;

    .line 88
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/g;->l:Landroid/os/Handler;

    .line 89
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/g;

    .line 91
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    .line 93
    invoke-virtual {p0, p5, p6}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->g:Z

    .line 171
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    .line 203
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->n:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/bumptech/glide/g/j;->checkArgument(ZLjava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->resetFrameIndex()V

    .line 210
    iput-boolean v2, p0, Lcom/bumptech/glide/load/resource/d/g;->e:Z

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 214
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 215
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/resource/d/g$a;)V

    return-void

    .line 218
    :cond_3
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/d/g;->n:Z

    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->getNextDelay()I

    move-result v0

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 224
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->advance()V

    .line 225
    new-instance v0, Lcom/bumptech/glide/load/resource/d/g$a;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/g;->l:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v4}, Lcom/bumptech/glide/b/a;->getCurrentFrameIndex()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bumptech/glide/load/resource/d/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->h:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 226
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/g;

    invoke-static {}, Lcom/bumptech/glide/load/resource/d/g;->f()Lcom/bumptech/glide/load/d;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/e/h;->signatureOf(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->load(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->h:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->into(Lcom/bumptech/glide/e/a/i;)Lcom/bumptech/glide/e/a/i;

    :cond_4
    :goto_1
    return-void
.end method

.method private static f()Lcom/bumptech/glide/load/d;
    .locals 3

    .line 348
    new-instance v0, Lcom/bumptech/glide/f/c;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/f/c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->getFrameCount()I

    move-result v0

    return v0
.end method

.method final a(Lcom/bumptech/glide/load/j;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/j;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->j:Lcom/bumptech/glide/load/j;

    .line 98
    invoke-static {p2}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Landroid/graphics/Bitmap;

    .line 99
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/g;

    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/h;->transform(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Lcom/bumptech/glide/g;

    return-void
.end method

.method final a(Lcom/bumptech/glide/load/resource/d/g$a;)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->p:Lcom/bumptech/glide/load/resource/d/g$d;

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/d/g$d;->onFrameReady()V

    :cond_0
    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->n:Z

    .line 256
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->g:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    if-nez v0, :cond_2

    .line 265
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->k:Lcom/bumptech/glide/load/resource/d/g$a;

    return-void

    .line 3322
    :cond_2
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/d/g$a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/g;->c()V

    .line 271
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 272
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 275
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 276
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/resource/d/g$b;

    .line 277
    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/d/g$b;->onFrameReady()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 280
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->l:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 284
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->e()V

    return-void
.end method

.method final a(Lcom/bumptech/glide/load/resource/d/g$b;)V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->g:Z

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->d()V

    :cond_0
    return-void

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final b()Landroid/graphics/Bitmap;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v0, :cond_0

    .line 2322
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/d/g$a;->b:Landroid/graphics/Bitmap;

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method final b(Lcom/bumptech/glide/load/resource/d/g$b;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2175
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/b/a/e;->put(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
