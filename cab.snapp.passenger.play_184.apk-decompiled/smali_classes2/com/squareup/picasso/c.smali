.class final Lcom/squareup/picasso/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final t:Ljava/lang/Object;

.field private static final u:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final w:Lcom/squareup/picasso/y;


# instance fields
.field final a:I

.field final b:Lcom/squareup/picasso/Picasso;

.field final c:Lcom/squareup/picasso/i;

.field final d:Lcom/squareup/picasso/d;

.field final e:Lcom/squareup/picasso/aa;

.field final f:Ljava/lang/String;

.field final g:Lcom/squareup/picasso/w;

.field final h:I

.field i:I

.field final j:Lcom/squareup/picasso/y;

.field k:Lcom/squareup/picasso/a;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/graphics/Bitmap;

.field n:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field o:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field p:Ljava/lang/Exception;

.field q:I

.field r:I

.field s:Lcom/squareup/picasso/Picasso$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->t:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/squareup/picasso/c$1;

    invoke-direct {v0}, Lcom/squareup/picasso/c$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->u:Ljava/lang/ThreadLocal;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v0, Lcom/squareup/picasso/c$2;

    invoke-direct {v0}, Lcom/squareup/picasso/c$2;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->w:Lcom/squareup/picasso/y;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/aa;Lcom/squareup/picasso/a;Lcom/squareup/picasso/y;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v0, Lcom/squareup/picasso/c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/c;->a:I

    .line 106
    iput-object p1, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    .line 107
    iput-object p2, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    .line 108
    iput-object p3, p0, Lcom/squareup/picasso/c;->d:Lcom/squareup/picasso/d;

    .line 109
    iput-object p4, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/aa;

    .line 110
    iput-object p5, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    .line 1081
    iget-object p1, p5, Lcom/squareup/picasso/a;->i:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    .line 2073
    iget-object p1, p5, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    .line 112
    iput-object p1, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    .line 2105
    iget-object p1, p5, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    iget-object p1, p1, Lcom/squareup/picasso/w;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 113
    iput-object p1, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    .line 3093
    iget p1, p5, Lcom/squareup/picasso/a;->e:I

    .line 114
    iput p1, p0, Lcom/squareup/picasso/c;->h:I

    .line 3097
    iget p1, p5, Lcom/squareup/picasso/a;->f:I

    .line 115
    iput p1, p0, Lcom/squareup/picasso/c;->i:I

    .line 116
    iput-object p6, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/y;

    .line 117
    invoke-virtual {p6}, Lcom/squareup/picasso/y;->a()I

    move-result p1

    iput p1, p0, Lcom/squareup/picasso/c;->r:I

    return-void
.end method

.method private static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/ae;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 441
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 442
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/ae;

    const/4 v3, 0x0

    .line 445
    :try_start_0
    invoke-interface {v2, p1}, Lcom/squareup/picasso/ae;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Transformation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-interface {v2}, Lcom/squareup/picasso/ae;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null after "

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/ae;

    .line 464
    invoke-interface {v0}, Lcom/squareup/picasso/ae;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 466
    :cond_0
    sget-object p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/picasso/c$4;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/c$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_1
    if-ne v4, p1, :cond_2

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 475
    sget-object p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/picasso/c$5;

    invoke-direct {p1, v2}, Lcom/squareup/picasso/c$5;-><init>(Lcom/squareup/picasso/ae;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_2
    if-eq v4, p1, :cond_3

    .line 486
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 487
    sget-object p0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/picasso/c$6;

    invoke-direct {p1, v2}, Lcom/squareup/picasso/c$6;-><init>(Lcom/squareup/picasso/ae;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 447
    sget-object p1, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/picasso/c$3;

    invoke-direct {v0, v2, p0}, Lcom/squareup/picasso/c$3;-><init>(Lcom/squareup/picasso/ae;Ljava/lang/RuntimeException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_4
    return-object p1
.end method

.method static a(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/aa;Lcom/squareup/picasso/a;)Lcom/squareup/picasso/c;
    .locals 8

    .line 11073
    iget-object v0, p4, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    .line 11465
    iget-object v2, p0, Lcom/squareup/picasso/Picasso;->d:Ljava/util/List;

    .line 430
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 431
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/picasso/y;

    .line 432
    invoke-virtual {v6, v0}, Lcom/squareup/picasso/y;->canHandleRequest(Lcom/squareup/picasso/w;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 433
    new-instance v7, Lcom/squareup/picasso/c;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/c;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/aa;Lcom/squareup/picasso/a;Lcom/squareup/picasso/y;)V

    return-object v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    :cond_1
    new-instance v7, Lcom/squareup/picasso/c;

    sget-object v6, Lcom/squareup/picasso/c;->w:Lcom/squareup/picasso/y;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/c;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/aa;Lcom/squareup/picasso/a;Lcom/squareup/picasso/y;)V

    return-object v7
.end method

.method private static a(ZIIII)Z
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_0

    if-gt p1, p3, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method final a()Landroid/graphics/Bitmap;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 206
    iget v0, v1, Lcom/squareup/picasso/c;->h:I

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->a(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, v1, Lcom/squareup/picasso/c;->d:Lcom/squareup/picasso/d;

    iget-object v3, v1, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/squareup/picasso/d;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v2, v1, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/aa;

    invoke-virtual {v2}, Lcom/squareup/picasso/aa;->a()V

    .line 210
    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v2, v1, Lcom/squareup/picasso/c;->o:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 211
    iget-object v2, v1, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, v1, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    invoke-virtual {v2}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hunter"

    const-string v4, "decoded"

    const-string v5, "from cache"

    invoke-static {v3, v4, v2, v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    move-object v0, v2

    .line 218
    :cond_2
    iget v3, v1, Lcom/squareup/picasso/c;->r:I

    if-nez v3, :cond_3

    sget-object v3, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    iget v3, v3, Lcom/squareup/picasso/NetworkPolicy;->a:I

    goto :goto_0

    :cond_3
    iget v3, v1, Lcom/squareup/picasso/c;->i:I

    :goto_0
    iput v3, v1, Lcom/squareup/picasso/c;->i:I

    .line 219
    iget-object v3, v1, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/y;

    iget-object v4, v1, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    iget v5, v1, Lcom/squareup/picasso/c;->i:I

    invoke-virtual {v3, v4, v5}, Lcom/squareup/picasso/y;->load(Lcom/squareup/picasso/w;I)Lcom/squareup/picasso/y$a;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    .line 221
    invoke-virtual {v3}, Lcom/squareup/picasso/y$a;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v0

    iput-object v0, v1, Lcom/squareup/picasso/c;->o:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 6104
    iget v0, v3, Lcom/squareup/picasso/y$a;->a:I

    .line 222
    iput v0, v1, Lcom/squareup/picasso/c;->q:I

    .line 223
    invoke-virtual {v3}, Lcom/squareup/picasso/y$a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_a

    .line 227
    invoke-virtual {v3}, Lcom/squareup/picasso/y$a;->getSource()Lb/v;

    move-result-object v3

    .line 229
    :try_start_0
    iget-object v0, v1, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    .line 6126
    invoke-static {v3}, Lb/n;->buffer(Lb/v;)Lb/e;

    move-result-object v6

    .line 6128
    invoke-static {v6}, Lcom/squareup/picasso/af;->a(Lb/e;)Z

    move-result v7

    .line 6129
    iget-boolean v8, v0, Lcom/squareup/picasso/w;->purgeable:Z

    if-eqz v8, :cond_4

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 6130
    :goto_1
    invoke-static {v0}, Lcom/squareup/picasso/y;->b(Lcom/squareup/picasso/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    .line 6131
    invoke-static {v9}, Lcom/squareup/picasso/y;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v10

    if-nez v7, :cond_8

    if-eqz v8, :cond_5

    goto :goto_2

    .line 6145
    :cond_5
    invoke-interface {v6}, Lb/e;->inputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v10, :cond_6

    .line 6148
    new-instance v7, Lcom/squareup/picasso/p;

    invoke-direct {v7, v6}, Lcom/squareup/picasso/p;-><init>(Ljava/io/InputStream;)V

    .line 6150
    invoke-virtual {v7, v5}, Lcom/squareup/picasso/p;->allowMarksToExpire(Z)V

    const/16 v6, 0x400

    .line 6151
    invoke-virtual {v7, v6}, Lcom/squareup/picasso/p;->savePosition(I)J

    move-result-wide v10

    .line 6152
    invoke-static {v7, v2, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6153
    iget v6, v0, Lcom/squareup/picasso/w;->targetWidth:I

    iget v8, v0, Lcom/squareup/picasso/w;->targetHeight:I

    invoke-static {v6, v8, v9, v0}, Lcom/squareup/picasso/y;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/w;)V

    .line 6155
    invoke-virtual {v7, v10, v11}, Lcom/squareup/picasso/p;->reset(J)V

    .line 6156
    invoke-virtual {v7, v4}, Lcom/squareup/picasso/p;->allowMarksToExpire(Z)V

    move-object v6, v7

    .line 6158
    :cond_6
    invoke-static {v6, v2, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 6161
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to decode stream."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6137
    :cond_8
    :goto_2
    invoke-interface {v6}, Lb/e;->readByteArray()[B

    move-result-object v2

    if-eqz v10, :cond_9

    .line 6139
    array-length v6, v2

    invoke-static {v2, v5, v6, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6140
    iget v6, v0, Lcom/squareup/picasso/w;->targetWidth:I

    iget v7, v0, Lcom/squareup/picasso/w;->targetHeight:I

    invoke-static {v6, v7, v9, v0}, Lcom/squareup/picasso/y;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/w;)V

    .line 6143
    :cond_9
    array-length v0, v2

    invoke-static {v2, v5, v0, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_3
    :try_start_1
    invoke-interface {v3}, Lb/v;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v3}, Lb/v;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 235
    :catch_1
    throw v0

    :cond_a
    :goto_4
    if-eqz v0, :cond_2f

    .line 241
    iget-object v2, v1, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v2, :cond_b

    .line 242
    iget-object v2, v1, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    invoke-virtual {v2}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hunter"

    const-string v6, "decoded"

    invoke-static {v3, v6, v2}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_b
    iget-object v2, v1, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/aa;

    const/4 v3, 0x2

    .line 7060
    invoke-virtual {v2, v0, v3}, Lcom/squareup/picasso/aa;->a(Landroid/graphics/Bitmap;I)V

    .line 245
    iget-object v2, v1, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    .line 7190
    invoke-virtual {v2}, Lcom/squareup/picasso/w;->c()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v2}, Lcom/squareup/picasso/w;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_e

    .line 245
    iget v2, v1, Lcom/squareup/picasso/c;->q:I

    if-eqz v2, :cond_2f

    .line 246
    :cond_e
    sget-object v2, Lcom/squareup/picasso/c;->t:Ljava/lang/Object;

    monitor-enter v2

    .line 247
    :try_start_3
    iget-object v6, v1, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    invoke-virtual {v6}, Lcom/squareup/picasso/w;->c()Z

    move-result v6

    if-nez v6, :cond_10

    iget v6, v1, Lcom/squareup/picasso/c;->q:I

    if-eqz v6, :cond_f

    goto :goto_7

    :cond_f
    move-object/from16 v20, v2

    move-object v2, v1

    goto/16 :goto_1c

    .line 248
    :cond_10
    :goto_7
    iget-object v6, v1, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    iget v7, v1, Lcom/squareup/picasso/c;->q:I

    .line 7503
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 7504
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 7505
    iget-boolean v10, v6, Lcom/squareup/picasso/w;->onlyScaleDown:Z

    .line 7512
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 7514
    invoke-virtual {v6}, Lcom/squareup/picasso/w;->c()Z

    move-result v13

    if-nez v13, :cond_12

    if-eqz v7, :cond_11

    goto :goto_8

    :cond_11
    move-object/from16 v28, v0

    move-object/from16 v20, v2

    move v4, v8

    move v5, v9

    move-object v0, v12

    goto/16 :goto_19

    .line 7515
    :cond_12
    :goto_8
    iget v13, v6, Lcom/squareup/picasso/w;->targetWidth:I

    .line 7516
    iget v14, v6, Lcom/squareup/picasso/w;->targetHeight:I

    .line 7518
    iget v15, v6, Lcom/squareup/picasso/w;->rotationDegrees:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v16, 0x0

    cmpl-float v16, v15, v16

    if-eqz v16, :cond_14

    float-to-double v13, v15

    .line 7520
    :try_start_4
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 7521
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 7522
    iget-boolean v5, v6, Lcom/squareup/picasso/w;->hasRotationPivot:Z

    if-eqz v5, :cond_13

    .line 7523
    iget v5, v6, Lcom/squareup/picasso/w;->rotationPivotX:F

    iget v11, v6, Lcom/squareup/picasso/w;->rotationPivotY:F

    invoke-virtual {v12, v15, v5, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 7525
    iget v5, v6, Lcom/squareup/picasso/w;->rotationPivotX:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    float-to-double v4, v5

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    sub-double v19, v19, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v19

    :try_start_5
    iget v15, v6, Lcom/squareup/picasso/w;->rotationPivotY:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v21, v12

    float-to-double v11, v15

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    add-double/2addr v4, v11

    .line 7526
    :try_start_6
    iget v11, v6, Lcom/squareup/picasso/w;->rotationPivotY:F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v19

    :try_start_7
    iget v15, v6, Lcom/squareup/picasso/w;->rotationPivotX:F
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide/from16 v22, v4

    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v13

    sub-double/2addr v11, v3

    .line 7527
    :try_start_8
    iget v3, v6, Lcom/squareup/picasso/w;->targetWidth:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v16

    add-double v4, v22, v3

    .line 7528
    :try_start_9
    iget v3, v6, Lcom/squareup/picasso/w;->targetWidth:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v20, v2

    int-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v13

    add-double/2addr v1, v11

    .line 7529
    :try_start_a
    iget v3, v6, Lcom/squareup/picasso/w;->targetWidth:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move/from16 v24, v9

    move/from16 v25, v10

    int-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v16

    add-double v9, v22, v9

    :try_start_b
    iget v3, v6, Lcom/squareup/picasso/w;->targetHeight:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v26, v7

    move/from16 v27, v8

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    sub-double/2addr v9, v7

    .line 7530
    :try_start_c
    iget v3, v6, Lcom/squareup/picasso/w;->targetWidth:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    add-double/2addr v7, v11

    :try_start_d
    iget v3, v6, Lcom/squareup/picasso/w;->targetHeight:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v28, v0

    move-wide/from16 v29, v1

    int-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v16

    add-double/2addr v7, v0

    .line 7531
    :try_start_e
    iget v0, v6, Lcom/squareup/picasso/w;->targetHeight:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v13

    sub-double v0, v22, v0

    .line 7532
    :try_start_f
    iget v2, v6, Lcom/squareup/picasso/w;->targetHeight:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v16

    add-double/2addr v2, v11

    move-wide v15, v2

    move-wide/from16 v13, v22

    .line 7534
    :try_start_10
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 7535
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    move-wide/from16 v4, v29

    .line 7536
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    move-wide v13, v15

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    .line 7537
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double/2addr v2, v0

    .line 7538
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v13, v0

    sub-double/2addr v9, v4

    .line 7539
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v14, v0

    move-object v15, v6

    move-object/from16 v0, v21

    goto/16 :goto_9

    :cond_13
    move-object/from16 v28, v0

    move-object/from16 v20, v2

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v0, v12

    .line 7541
    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 7545
    iget v1, v6, Lcom/squareup/picasso/w;->targetWidth:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v16

    .line 7546
    :try_start_11
    iget v3, v6, Lcom/squareup/picasso/w;->targetWidth:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v13

    .line 7547
    :try_start_12
    iget v5, v6, Lcom/squareup/picasso/w;->targetWidth:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v16

    :try_start_13
    iget v5, v6, Lcom/squareup/picasso/w;->targetHeight:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    int-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v13

    sub-double/2addr v7, v9

    .line 7548
    :try_start_14
    iget v5, v6, Lcom/squareup/picasso/w;->targetWidth:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    int-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v13

    :try_start_15
    iget v5, v6, Lcom/squareup/picasso/w;->targetHeight:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    int-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v16

    add-double/2addr v9, v11

    .line 7549
    :try_start_16
    iget v5, v6, Lcom/squareup/picasso/w;->targetHeight:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    int-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    neg-double v11, v11

    .line 7550
    :try_start_17
    iget v5, v6, Lcom/squareup/picasso/w;->targetHeight:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    int-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v16

    move-object v15, v6

    const-wide/16 v5, 0x0

    move-wide/from16 v16, v13

    .line 7552
    :try_start_18
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 7553
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 7554
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    move-wide/from16 v11, v16

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 7555
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    sub-double/2addr v13, v1

    .line 7556
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v13, v1

    sub-double/2addr v7, v3

    .line 7557
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v14, v1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_1d

    :cond_14
    move-object/from16 v28, v0

    move-object/from16 v20, v2

    move-object v15, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v0, v12

    :goto_9
    const/4 v1, 0x5

    if-eqz v26, :cond_18

    const/16 v5, 0x10e

    const/16 v2, 0x5a

    packed-switch v26, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_a

    :pswitch_0
    const/16 v3, 0x10e

    goto :goto_a

    :pswitch_1
    const/16 v3, 0x5a

    goto :goto_a

    :pswitch_2
    const/16 v3, 0xb4

    :goto_a
    move/from16 v4, v26

    const/4 v6, 0x2

    if-eq v4, v6, :cond_15

    const/4 v6, 0x7

    if-eq v4, v6, :cond_15

    const/4 v6, 0x4

    if-eq v4, v6, :cond_15

    if-eq v4, v1, :cond_15

    const/4 v4, 0x1

    goto :goto_b

    :cond_15
    const/4 v4, -0x1

    :goto_b
    if-eqz v3, :cond_17

    int-to-float v6, v3

    .line 7567
    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-eq v3, v2, :cond_16

    if-ne v3, v5, :cond_17

    :cond_16
    const/4 v2, 0x1

    move/from16 v31, v14

    move v14, v13

    move/from16 v13, v31

    goto :goto_c

    :cond_17
    const/4 v2, 0x1

    :goto_c
    if-eq v4, v2, :cond_18

    int-to-float v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    .line 7576
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_18
    move-object v2, v15

    .line 7580
    iget-boolean v3, v2, Lcom/squareup/picasso/w;->centerCrop:Z

    if-eqz v3, :cond_22

    if-eqz v13, :cond_19

    int-to-float v3, v13

    move/from16 v4, v27

    int-to-float v5, v4

    div-float/2addr v3, v5

    move/from16 v5, v24

    goto :goto_d

    :cond_19
    move/from16 v4, v27

    int-to-float v3, v14

    move/from16 v5, v24

    int-to-float v6, v5

    div-float/2addr v3, v6

    :goto_d
    if-eqz v14, :cond_1a

    int-to-float v6, v14

    int-to-float v7, v5

    goto :goto_e

    :cond_1a
    int-to-float v6, v13

    int-to-float v7, v4

    :goto_e
    div-float/2addr v6, v7

    cmpl-float v7, v3, v6

    if-lez v7, :cond_1d

    int-to-float v1, v5

    div-float/2addr v6, v3

    mul-float v1, v1, v6

    float-to-double v6, v1

    .line 7588
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v9, v6

    .line 7589
    iget v1, v2, Lcom/squareup/picasso/w;->centerCropGravity:I

    const/16 v6, 0x30

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1b

    const/4 v1, 0x0

    goto :goto_f

    .line 7591
    :cond_1b
    iget v1, v2, Lcom/squareup/picasso/w;->centerCropGravity:I

    const/16 v2, 0x50

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1c

    sub-int v1, v5, v9

    goto :goto_f

    :cond_1c
    sub-int v1, v5, v9

    const/4 v2, 0x2

    .line 7594
    div-int/2addr v1, v2

    :goto_f
    int-to-float v2, v14

    int-to-float v6, v9

    div-float v6, v2, v6

    move v2, v1

    move v8, v4

    move/from16 v1, v25

    goto :goto_11

    :cond_1d
    cmpg-float v7, v3, v6

    if-gez v7, :cond_20

    int-to-float v7, v4

    div-float/2addr v3, v6

    mul-float v7, v7, v3

    float-to-double v7, v7

    .line 7600
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v8, v7

    .line 7601
    iget v3, v2, Lcom/squareup/picasso/w;->centerCropGravity:I

    const/4 v7, 0x3

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_1e

    const/4 v1, 0x0

    goto :goto_10

    .line 7603
    :cond_1e
    iget v2, v2, Lcom/squareup/picasso/w;->centerCropGravity:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1f

    sub-int v1, v4, v8

    goto :goto_10

    :cond_1f
    sub-int v1, v4, v8

    const/4 v2, 0x2

    .line 7606
    div-int/2addr v1, v2

    :goto_10
    int-to-float v2, v13

    int-to-float v3, v8

    div-float v3, v2, v3

    move/from16 v18, v1

    move v9, v5

    move/from16 v1, v25

    const/4 v2, 0x0

    goto :goto_12

    :cond_20
    move v8, v4

    move v9, v5

    move v3, v6

    move/from16 v1, v25

    const/4 v2, 0x0

    :goto_11
    const/16 v18, 0x0

    .line 7616
    :goto_12
    invoke-static {v1, v4, v5, v13, v14}, Lcom/squareup/picasso/c;->a(ZIIII)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 7617
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_21
    move v6, v2

    move v7, v8

    move v8, v9

    move/from16 v5, v18

    goto :goto_1a

    :cond_22
    move/from16 v5, v24

    move/from16 v1, v25

    move/from16 v4, v27

    .line 7619
    iget-boolean v2, v2, Lcom/squareup/picasso/w;->centerInside:Z

    if-eqz v2, :cond_26

    if-eqz v13, :cond_23

    int-to-float v2, v13

    int-to-float v3, v4

    goto :goto_13

    :cond_23
    int-to-float v2, v14

    int-to-float v3, v5

    :goto_13
    div-float/2addr v2, v3

    if-eqz v14, :cond_24

    int-to-float v3, v14

    int-to-float v6, v5

    goto :goto_14

    :cond_24
    int-to-float v3, v13

    int-to-float v6, v4

    :goto_14
    div-float/2addr v3, v6

    cmpg-float v6, v2, v3

    if-gez v6, :cond_25

    goto :goto_15

    :cond_25
    move v2, v3

    .line 7626
    :goto_15
    invoke-static {v1, v4, v5, v13, v14}, Lcom/squareup/picasso/c;->a(ZIIII)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 7627
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_19

    :cond_26
    if-nez v13, :cond_27

    if-eqz v14, :cond_2b

    :cond_27
    if-ne v13, v4, :cond_28

    if-eq v14, v5, :cond_2b

    :cond_28
    if-eqz v13, :cond_29

    int-to-float v2, v13

    int-to-float v3, v4

    goto :goto_16

    :cond_29
    int-to-float v2, v14

    int-to-float v3, v5

    :goto_16
    div-float/2addr v2, v3

    if-eqz v14, :cond_2a

    int-to-float v3, v14

    int-to-float v6, v5

    :goto_17
    div-float/2addr v3, v6

    goto :goto_18

    :cond_2a
    int-to-float v3, v13

    int-to-float v6, v4

    goto :goto_17

    .line 7638
    :goto_18
    invoke-static {v1, v4, v5, v13, v14}, Lcom/squareup/picasso/c;->a(ZIIII)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 7639
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_2b
    :goto_19
    move v7, v4

    move v8, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1a
    const/4 v10, 0x1

    move-object/from16 v4, v28

    move-object v9, v0

    .line 7645
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_2c

    .line 7647
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    move-object/from16 v2, p0

    goto :goto_1b

    :cond_2c
    move-object/from16 v2, p0

    move-object v0, v1

    .line 249
    :goto_1b
    :try_start_19
    iget-object v1, v2, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_2d

    const-string v1, "Hunter"

    const-string v3, "transformed"

    .line 250
    iget-object v4, v2, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    invoke-virtual {v4}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_2d
    :goto_1c
    iget-object v1, v2, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    invoke-virtual {v1}, Lcom/squareup/picasso/w;->d()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 254
    iget-object v1, v2, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    iget-object v1, v1, Lcom/squareup/picasso/w;->transformations:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/squareup/picasso/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    iget-object v1, v2, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_2e

    const-string v1, "Hunter"

    const-string v3, "transformed"

    .line 256
    iget-object v4, v2, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    invoke-virtual {v4}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "from custom transformations"

    invoke-static {v1, v3, v4, v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_2e
    monitor-exit v20
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-eqz v0, :cond_30

    .line 261
    iget-object v1, v2, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/aa;

    const/4 v3, 0x3

    .line 8064
    invoke-virtual {v1, v0, v3}, Lcom/squareup/picasso/aa;->a(Landroid/graphics/Bitmap;I)V

    goto :goto_1f

    :catchall_2
    move-exception v0

    :goto_1d
    move-object/from16 v2, p0

    goto :goto_1e

    :catchall_3
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v1

    .line 259
    :goto_1e
    :try_start_1a
    monitor-exit v20
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_1e

    :cond_2f
    move-object v2, v1

    move-object v1, v0

    move-object v0, v1

    :cond_30
    :goto_1f
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final a(Lcom/squareup/picasso/a;)V
    .locals 6

    .line 303
    iget-object v0, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    const/4 v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 307
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 8105
    iget-object v0, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    iget-object v0, v0, Lcom/squareup/picasso/w;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 312
    iget-object v3, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v0, v3, :cond_8

    .line 8322
    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    .line 8324
    iget-object v3, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 8325
    :goto_1
    iget-object v4, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    if-eqz v1, :cond_7

    .line 8332
    iget-object v1, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    if-eqz v1, :cond_5

    .line 9105
    iget-object v0, v1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    iget-object v0, v0, Lcom/squareup/picasso/w;->priority:Lcom/squareup/picasso/Picasso$Priority;

    :cond_5
    if-eqz v3, :cond_7

    .line 8338
    iget-object v1, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_7

    .line 8339
    iget-object v3, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/picasso/a;

    .line 10105
    iget-object v3, v3, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    iget-object v3, v3, Lcom/squareup/picasso/w;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 8340
    invoke-virtual {v3}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_6

    move-object v0, v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 313
    :cond_7
    iput-object v0, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    .line 316
    :cond_8
    iget-object v0, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_9

    .line 317
    iget-object p1, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    invoke-virtual {p1}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from "

    invoke-static {p0, v0}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hunter"

    const-string v2, "removed"

    invoke-static {v1, v2, p1, v0}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method final b()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/c;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method final c()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/squareup/picasso/c;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 5

    const-string v0, "Picasso-Idle"

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/w;

    .line 4179
    iget-object v2, v1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 4180
    iget-object v1, v1, Lcom/squareup/picasso/w;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4182
    :cond_0
    iget v1, v1, Lcom/squareup/picasso/w;->resourceId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 3416
    :goto_0
    sget-object v2, Lcom/squareup/picasso/c;->u:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    .line 3417
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 3418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_1

    const-string v1, "Hunter"

    const-string v2, "executing"

    .line 172
    invoke-static {p0}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/picasso/c;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/c;->m:Landroid/graphics/Bitmap;

    .line 177
    iget-object v1, p0, Lcom/squareup/picasso/c;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;)V

    goto :goto_1

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    .line 5155
    iget-object v2, v1, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    iget-object v1, v1, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/squareup/picasso/r$b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 196
    :try_start_1
    iput-object v1, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 197
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;)V

    goto :goto_1

    :catch_1
    move-exception v1

    .line 191
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 192
    iget-object v3, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/aa;

    invoke-virtual {v3}, Lcom/squareup/picasso/aa;->b()Lcom/squareup/picasso/ab;

    move-result-object v3

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/ab;->dump(Ljava/io/PrintWriter;)V

    .line 193
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 194
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;)V

    goto :goto_1

    :catch_2
    move-exception v1

    .line 188
    iput-object v1, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 189
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    .line 5159
    iget-object v2, v1, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    iget-object v1, v1, Lcom/squareup/picasso/i;->i:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :catch_3
    move-exception v1

    .line 183
    iget v2, v1, Lcom/squareup/picasso/r$b;->b:I

    invoke-static {v2}, Lcom/squareup/picasso/NetworkPolicy;->isOfflineOnly(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/squareup/picasso/r$b;->a:I

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_4

    .line 184
    :cond_3
    iput-object v1, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 199
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
