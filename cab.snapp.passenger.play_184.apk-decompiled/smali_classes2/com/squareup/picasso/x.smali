.class public final Lcom/squareup/picasso/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field a:Z

.field b:Ljava/lang/Object;

.field private final d:Lcom/squareup/picasso/Picasso;

.field private final e:Lcom/squareup/picasso/w$a;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/x;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->g:Z

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    .line 85
    new-instance v1, Lcom/squareup/picasso/w$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v0}, Lcom/squareup/picasso/w$a;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->g:Z

    .line 75
    iget-boolean v0, p1, Lcom/squareup/picasso/Picasso;->o:Z

    if-nez v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    .line 80
    new-instance v0, Lcom/squareup/picasso/w$a;

    iget-object p1, p1, Lcom/squareup/picasso/Picasso;->l:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lcom/squareup/picasso/w$a;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 739
    iget v0, p0, Lcom/squareup/picasso/x;->h:I

    if-eqz v0, :cond_2

    .line 740
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    iget v1, p0, Lcom/squareup/picasso/x;->h:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 742
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 743
    iget-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/x;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 745
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 746
    iget-object v1, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/squareup/picasso/x;->h:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 747
    iget-object v1, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/x;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a(J)Lcom/squareup/picasso/w;
    .locals 7

    .line 756
    sget-object v0, Lcom/squareup/picasso/x;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 758
    iget-object v1, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v1}, Lcom/squareup/picasso/w$a;->build()Lcom/squareup/picasso/w;

    move-result-object v1

    .line 759
    iput v0, v1, Lcom/squareup/picasso/w;->a:I

    .line 760
    iput-wide p1, v1, Lcom/squareup/picasso/w;->b:J

    .line 762
    iget-object v2, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->n:Z

    const-string v3, "Main"

    if-eqz v2, :cond_0

    .line 764
    invoke-virtual {v1}, Lcom/squareup/picasso/w;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/squareup/picasso/w;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "created"

    invoke-static {v3, v6, v4, v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_0
    iget-object v4, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/w;)Lcom/squareup/picasso/w;

    move-result-object v4

    if-eq v4, v1, :cond_1

    .line 770
    iput v0, v4, Lcom/squareup/picasso/w;->a:I

    .line 771
    iput-wide p1, v4, Lcom/squareup/picasso/w;->b:J

    if-eqz v2, :cond_1

    .line 774
    invoke-virtual {v4}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "into "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "changed"

    invoke-static {v3, v0, p1, p2}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v4
.end method

.method private a(Lcom/squareup/picasso/v;)V
    .locals 2

    .line 782
    iget v0, p0, Lcom/squareup/picasso/x;->j:I

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    .line 3081
    iget-object v1, p1, Lcom/squareup/picasso/a;->i:Ljava/lang/String;

    .line 783
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/v;->complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-void

    .line 790
    :cond_0
    iget v0, p0, Lcom/squareup/picasso/x;->h:I

    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/v;->a(I)V

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/a;)V

    return-void
.end method


# virtual methods
.method public final centerCrop()Lcom/squareup/picasso/x;
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/w$a;->centerCrop(I)Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final centerCrop(I)Lcom/squareup/picasso/x;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/w$a;->centerCrop(I)Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final centerInside()Lcom/squareup/picasso/x;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0}, Lcom/squareup/picasso/w$a;->centerInside()Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/x;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/w$a;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final error(I)Lcom/squareup/picasso/x;
    .locals 1

    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/squareup/picasso/x;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 152
    iput p1, p0, Lcom/squareup/picasso/x;->i:I

    return-object p0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/x;
    .locals 1

    if-eqz p1, :cond_1

    .line 161
    iget v0, p0, Lcom/squareup/picasso/x;->i:I

    if-nez v0, :cond_0

    .line 164
    iput-object p1, p0, Lcom/squareup/picasso/x;->m:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final fetch()V
    .locals 1

    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/x;->fetch(Lcom/squareup/picasso/e;)V

    return-void
.end method

.method public final fetch(Lcom/squareup/picasso/e;)V
    .locals 12

    .line 452
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 454
    iget-boolean v2, p0, Lcom/squareup/picasso/x;->a:Z

    if-nez v2, :cond_6

    .line 457
    iget-object v2, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v2}, Lcom/squareup/picasso/w$a;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 459
    iget-object v2, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    .line 1272
    iget-object v2, v2, Lcom/squareup/picasso/w$a;->c:Lcom/squareup/picasso/Picasso$Priority;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    sget-object v3, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/w$a;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/w$a;

    .line 463
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/squareup/picasso/x;->a(J)Lcom/squareup/picasso/w;

    move-result-object v6

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v0}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    .line 466
    iget v0, p0, Lcom/squareup/picasso/x;->j:I

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    iget-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v10}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 469
    iget-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {v6}, Lcom/squareup/picasso/w;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main"

    const-string v3, "completed"

    invoke-static {v2, v3, v0, v1}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 473
    invoke-interface {p1}, Lcom/squareup/picasso/e;->onSuccess()V

    :cond_3
    return-void

    .line 479
    :cond_4
    new-instance v0, Lcom/squareup/picasso/k;

    iget-object v5, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget v7, p0, Lcom/squareup/picasso/x;->j:I

    iget v8, p0, Lcom/squareup/picasso/x;->k:I

    iget-object v9, p0, Lcom/squareup/picasso/x;->b:Ljava/lang/Object;

    move-object v4, v0

    move-object v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/squareup/picasso/k;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/w;IILjava/lang/Object;Ljava/lang/String;Lcom/squareup/picasso/e;)V

    .line 481
    iget-object p1, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->b(Lcom/squareup/picasso/a;)V

    :cond_5
    return-void

    .line 455
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fit cannot be used with fetch."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final fit()Lcom/squareup/picasso/x;
    .locals 1

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->a:Z

    return-object p0
.end method

.method public final get()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 416
    invoke-static {}, Lcom/squareup/picasso/af;->a()V

    .line 418
    iget-boolean v2, p0, Lcom/squareup/picasso/x;->a:Z

    if-nez v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v2}, Lcom/squareup/picasso/w$a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 425
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/squareup/picasso/x;->a(J)Lcom/squareup/picasso/w;

    move-result-object v3

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v0}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 428
    new-instance v0, Lcom/squareup/picasso/m;

    iget-object v2, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget v4, p0, Lcom/squareup/picasso/x;->j:I

    iget v5, p0, Lcom/squareup/picasso/x;->k:I

    iget-object v6, p0, Lcom/squareup/picasso/x;->b:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/squareup/picasso/m;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/w;IILjava/lang/Object;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-object v2, v1, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/i;

    iget-object v3, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-object v3, v3, Lcom/squareup/picasso/Picasso;->g:Lcom/squareup/picasso/d;

    iget-object v4, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-object v4, v4, Lcom/squareup/picasso/Picasso;->h:Lcom/squareup/picasso/aa;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/aa;Lcom/squareup/picasso/a;)Lcom/squareup/picasso/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 419
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with get."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final into(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    return-void
.end method

.method public final into(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    .line 678
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 679
    invoke-static {}, Lcom/squareup/picasso/af;->b()V

    if-eqz v3, :cond_e

    .line 685
    iget-object v4, v0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v4}, Lcom/squareup/picasso/w$a;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 686
    iget-object v1, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 687
    iget-boolean v1, v0, Lcom/squareup/picasso/x;->g:Z

    if-eqz v1, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/squareup/picasso/x;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/squareup/picasso/t;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 693
    :cond_1
    iget-boolean v4, v0, Lcom/squareup/picasso/x;->a:Z

    if-eqz v4, :cond_9

    .line 694
    iget-object v4, v0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    .line 2268
    iget v5, v4, Lcom/squareup/picasso/w$a;->a:I

    if-nez v5, :cond_3

    iget v4, v4, Lcom/squareup/picasso/w$a;->b:I

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_8

    .line 697
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v4, :cond_5

    if-nez v5, :cond_4

    goto :goto_2

    .line 706
    :cond_4
    iget-object v6, v0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v6, v4, v5}, Lcom/squareup/picasso/w$a;->resize(II)Lcom/squareup/picasso/w$a;

    goto :goto_3

    .line 700
    :cond_5
    :goto_2
    iget-boolean v1, v0, Lcom/squareup/picasso/x;->g:Z

    if-eqz v1, :cond_6

    .line 701
    invoke-direct {p0}, Lcom/squareup/picasso/x;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/squareup/picasso/t;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 703
    :cond_6
    iget-object v1, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    new-instance v2, Lcom/squareup/picasso/h;

    invoke-direct {v2, p0, v3, v11}, Lcom/squareup/picasso/h;-><init>(Lcom/squareup/picasso/x;Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    .line 2481
    iget-object v4, v1, Lcom/squareup/picasso/Picasso;->j:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2482
    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;)V

    .line 2484
    :cond_7
    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->j:Ljava/util/Map;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 695
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    :cond_9
    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/squareup/picasso/x;->a(J)Lcom/squareup/picasso/w;

    move-result-object v7

    .line 710
    invoke-static {v7}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/w;)Ljava/lang/String;

    move-result-object v9

    .line 712
    iget v1, v0, Lcom/squareup/picasso/x;->j:I

    invoke-static {v1}, Lcom/squareup/picasso/MemoryPolicy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 713
    iget-object v1, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v9}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 715
    iget-object v1, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 716
    iget-object v1, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-object v2, v1, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    sget-object v5, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-boolean v6, v0, Lcom/squareup/picasso/x;->f:Z

    iget-object v1, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-boolean v8, v1, Lcom/squareup/picasso/Picasso;->m:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/squareup/picasso/t;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 717
    iget-object v1, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_a

    .line 718
    invoke-virtual {v7}, Lcom/squareup/picasso/w;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v11, :cond_b

    .line 721
    invoke-interface/range {p2 .. p2}, Lcom/squareup/picasso/e;->onSuccess()V

    :cond_b
    return-void

    .line 727
    :cond_c
    iget-boolean v1, v0, Lcom/squareup/picasso/x;->g:Z

    if-eqz v1, :cond_d

    .line 728
    invoke-direct {p0}, Lcom/squareup/picasso/x;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/squareup/picasso/t;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 731
    :cond_d
    new-instance v13, Lcom/squareup/picasso/n;

    iget-object v2, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget v5, v0, Lcom/squareup/picasso/x;->j:I

    iget v6, v0, Lcom/squareup/picasso/x;->k:I

    iget v8, v0, Lcom/squareup/picasso/x;->i:I

    iget-object v10, v0, Lcom/squareup/picasso/x;->m:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/squareup/picasso/x;->b:Ljava/lang/Object;

    iget-boolean v14, v0, Lcom/squareup/picasso/x;->f:Z

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v11, p2

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/squareup/picasso/n;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/picasso/e;Z)V

    .line 735
    iget-object v1, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v13}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/a;)V

    return-void

    .line 682
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final into(Landroid/widget/RemoteViews;IILandroid/app/Notification;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 573
    invoke-virtual/range {v0 .. v5}, Lcom/squareup/picasso/x;->into(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method

.method public final into(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 582
    invoke-virtual/range {v0 .. v6}, Lcom/squareup/picasso/x;->into(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;Lcom/squareup/picasso/e;)V

    return-void
.end method

.method public final into(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;Lcom/squareup/picasso/e;)V
    .locals 17

    move-object/from16 v0, p0

    .line 591
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    .line 599
    iget-boolean v3, v0, Lcom/squareup/picasso/x;->a:Z

    if-nez v3, :cond_1

    .line 602
    iget-object v3, v0, Lcom/squareup/picasso/x;->l:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, v0, Lcom/squareup/picasso/x;->h:I

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/squareup/picasso/x;->m:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 607
    invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/x;->a(J)Lcom/squareup/picasso/w;

    move-result-object v5

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    .line 610
    new-instance v1, Lcom/squareup/picasso/v$b;

    iget-object v4, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget v11, v0, Lcom/squareup/picasso/x;->j:I

    iget v12, v0, Lcom/squareup/picasso/x;->k:I

    iget-object v14, v0, Lcom/squareup/picasso/x;->b:Ljava/lang/Object;

    iget v15, v0, Lcom/squareup/picasso/x;->i:I

    move-object v3, v1

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v16, p6

    invoke-direct/range {v3 .. v16}, Lcom/squareup/picasso/v$b;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/w;Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Object;ILcom/squareup/picasso/e;)V

    .line 614
    invoke-direct {v0, v1}, Lcom/squareup/picasso/x;->a(Lcom/squareup/picasso/v;)V

    return-void

    .line 603
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot use placeholder or error drawables with remote views."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with RemoteViews."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 597
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Notification must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RemoteViews must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final into(Landroid/widget/RemoteViews;I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 623
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/RemoteViews;I[ILcom/squareup/picasso/e;)V

    return-void
.end method

.method public final into(Landroid/widget/RemoteViews;I[ILcom/squareup/picasso/e;)V
    .locals 15

    move-object v0, p0

    .line 632
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 640
    iget-boolean v3, v0, Lcom/squareup/picasso/x;->a:Z

    if-nez v3, :cond_1

    .line 643
    iget-object v3, v0, Lcom/squareup/picasso/x;->l:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, v0, Lcom/squareup/picasso/x;->h:I

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/squareup/picasso/x;->m:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 648
    invoke-direct {p0, v1, v2}, Lcom/squareup/picasso/x;->a(J)Lcom/squareup/picasso/w;

    move-result-object v5

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 651
    new-instance v1, Lcom/squareup/picasso/v$a;

    iget-object v4, v0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget v9, v0, Lcom/squareup/picasso/x;->j:I

    iget v10, v0, Lcom/squareup/picasso/x;->k:I

    iget-object v12, v0, Lcom/squareup/picasso/x;->b:Ljava/lang/Object;

    iget v13, v0, Lcom/squareup/picasso/x;->i:I

    move-object v3, v1

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v14, p4

    invoke-direct/range {v3 .. v14}, Lcom/squareup/picasso/v$a;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/w;Landroid/widget/RemoteViews;I[IIILjava/lang/String;Ljava/lang/Object;ILcom/squareup/picasso/e;)V

    .line 655
    invoke-direct {p0, v1}, Lcom/squareup/picasso/x;->a(Lcom/squareup/picasso/v;)V

    return-void

    .line 644
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot use placeholder or error drawables with remote views."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with remote views."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 638
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "appWidgetIds must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 635
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteViews must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final into(Lcom/squareup/picasso/ac;)V
    .locals 14

    .line 531
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 532
    invoke-static {}, Lcom/squareup/picasso/af;->b()V

    if-eqz p1, :cond_5

    .line 537
    iget-boolean v2, p0, Lcom/squareup/picasso/x;->a:Z

    if-nez v2, :cond_4

    .line 541
    iget-object v2, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v2}, Lcom/squareup/picasso/w$a;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 542
    iget-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/ac;)V

    .line 543
    iget-boolean v0, p0, Lcom/squareup/picasso/x;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/picasso/x;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    invoke-interface {p1, v3}, Lcom/squareup/picasso/ac;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 547
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/squareup/picasso/x;->a(J)Lcom/squareup/picasso/w;

    move-result-object v7

    .line 548
    invoke-static {v7}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/w;)Ljava/lang/String;

    move-result-object v11

    .line 550
    iget v0, p0, Lcom/squareup/picasso/x;->j:I

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v11}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 553
    iget-object v1, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/ac;)V

    .line 554
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-interface {p1, v0, v1}, Lcom/squareup/picasso/ac;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-void

    .line 559
    :cond_2
    iget-boolean v0, p0, Lcom/squareup/picasso/x;->g:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/squareup/picasso/x;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_3
    invoke-interface {p1, v3}, Lcom/squareup/picasso/ac;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    .line 561
    new-instance v0, Lcom/squareup/picasso/ad;

    iget-object v5, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget v8, p0, Lcom/squareup/picasso/x;->j:I

    iget v9, p0, Lcom/squareup/picasso/x;->k:I

    iget-object v10, p0, Lcom/squareup/picasso/x;->m:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/squareup/picasso/x;->b:Ljava/lang/Object;

    iget v13, p0, Lcom/squareup/picasso/x;->i:I

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v13}, Lcom/squareup/picasso/ad;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/ac;Lcom/squareup/picasso/w;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 564
    iget-object p1, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/a;)V

    return-void

    .line 538
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fit cannot be used with a Target."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 535
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Target must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/x;
    .locals 4

    const-string v0, "Memory policy cannot be null."

    if-eqz p1, :cond_3

    .line 351
    iget v1, p0, Lcom/squareup/picasso/x;->j:I

    iget p1, p1, Lcom/squareup/picasso/MemoryPolicy;->a:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/squareup/picasso/x;->j:I

    if-eqz p2, :cond_2

    .line 355
    array-length p1, p2

    if-lez p1, :cond_1

    .line 356
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 360
    iget v3, p0, Lcom/squareup/picasso/x;->j:I

    iget v2, v2, Lcom/squareup/picasso/MemoryPolicy;->a:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/picasso/x;->j:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p0

    .line 353
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final varargs networkPolicy(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/x;
    .locals 4

    const-string v0, "Network policy cannot be null."

    if-eqz p1, :cond_3

    .line 375
    iget v1, p0, Lcom/squareup/picasso/x;->k:I

    iget p1, p1, Lcom/squareup/picasso/NetworkPolicy;->a:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/squareup/picasso/x;->k:I

    if-eqz p2, :cond_2

    .line 379
    array-length p1, p2

    if-lez p1, :cond_1

    .line 380
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 384
    iget v3, p0, Lcom/squareup/picasso/x;->k:I

    iget v2, v2, Lcom/squareup/picasso/NetworkPolicy;->a:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/picasso/x;->k:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p0

    .line 377
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final noFade()Lcom/squareup/picasso/x;
    .locals 1

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->f:Z

    return-object p0
.end method

.method public final noPlaceholder()Lcom/squareup/picasso/x;
    .locals 2

    .line 96
    iget v0, p0, Lcom/squareup/picasso/x;->h:I

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/squareup/picasso/x;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->g:Z

    return-object p0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder resource already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onlyScaleDown()Lcom/squareup/picasso/x;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0}, Lcom/squareup/picasso/w$a;->onlyScaleDown()Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final placeholder(I)Lcom/squareup/picasso/x;
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/squareup/picasso/x;->g:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/squareup/picasso/x;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 121
    iput p1, p0, Lcom/squareup/picasso/x;->h:I

    return-object p0

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Placeholder image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/x;
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/squareup/picasso/x;->g:Z

    if-eqz v0, :cond_1

    .line 137
    iget v0, p0, Lcom/squareup/picasso/x;->h:I

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/squareup/picasso/x;->l:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/x;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/w$a;->priority(Lcom/squareup/picasso/Picasso$Priority;)Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final purgeable()Lcom/squareup/picasso/x;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0}, Lcom/squareup/picasso/w$a;->purgeable()Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final resize(II)Lcom/squareup/picasso/x;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/w$a;->resize(II)Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final resizeDimen(II)Lcom/squareup/picasso/x;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/squareup/picasso/x;->d:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 229
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/squareup/picasso/x;->resize(II)Lcom/squareup/picasso/x;

    move-result-object p1

    return-object p1
.end method

.method public final rotate(F)Lcom/squareup/picasso/x;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/w$a;->rotate(F)Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final rotate(FFF)Lcom/squareup/picasso/x;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/picasso/w$a;->rotate(FFF)Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final stableKey(Ljava/lang/String;)Lcom/squareup/picasso/x;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/w$a;->stableKey(Ljava/lang/String;)Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final tag(Ljava/lang/Object;)Lcom/squareup/picasso/x;
    .locals 1

    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/squareup/picasso/x;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 193
    iput-object p1, p0, Lcom/squareup/picasso/x;->b:Ljava/lang/Object;

    return-object p0

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tag already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/x;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/w$a;->transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/w$a;

    return-object p0
.end method

.method public final transform(Ljava/util/List;)Lcom/squareup/picasso/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/squareup/picasso/ae;",
            ">;)",
            "Lcom/squareup/picasso/x;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/squareup/picasso/x;->e:Lcom/squareup/picasso/w$a;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/w$a;->transform(Ljava/util/List;)Lcom/squareup/picasso/w$a;

    return-object p0
.end method
