.class public Lc/f/a/H;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final b:Lcom/squareup/picasso/Picasso;

.field public final c:Lc/f/a/G$a;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc/f/a/H;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/f/a/H;->f:Z

    .line 3
    iget-boolean v0, p1, Lcom/squareup/picasso/Picasso;->q:Z

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    .line 5
    new-instance v0, Lc/f/a/G$a;

    iget-object p1, p1, Lcom/squareup/picasso/Picasso;->n:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lc/f/a/G$a;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lc/f/a/H;->c:Lc/f/a/G$a;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(J)Lc/f/a/G;
    .locals 7

    .line 54
    sget-object v0, Lc/f/a/H;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 55
    iget-object v1, p0, Lc/f/a/H;->c:Lc/f/a/G$a;

    invoke-virtual {v1}, Lc/f/a/G$a;->a()Lc/f/a/G;

    move-result-object v1

    .line 56
    iput v0, v1, Lc/f/a/G;->b:I

    .line 57
    iput-wide p1, v1, Lc/f/a/G;->c:J

    .line 58
    iget-object v2, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->p:Z

    const-string v3, "Main"

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v1}, Lc/f/a/G;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lc/f/a/G;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "created"

    invoke-static {v3, v6, v4, v5}, Lc/f/a/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v4, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/Picasso;->a(Lc/f/a/G;)Lc/f/a/G;

    if-eq v1, v1, :cond_1

    .line 61
    iput v0, v1, Lc/f/a/G;->b:I

    .line 62
    iput-wide p1, v1, Lc/f/a/G;->c:J

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v1}, Lc/f/a/G;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "into "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "changed"

    invoke-static {v3, v0, p1, p2}, Lc/f/a/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public a()Lc/f/a/H;
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lc/f/a/H;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public a(I)Lc/f/a/H;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/f/a/H;->f:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lc/f/a/H;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lc/f/a/H;->g:I

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Placeholder image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)Lc/f/a/H;
    .locals 1

    .line 8
    iget-object v0, p0, Lc/f/a/H;->c:Lc/f/a/G$a;

    invoke-virtual {v0, p1, p2}, Lc/f/a/G$a;->a(II)Lc/f/a/G$a;

    return-object p0
.end method

.method public a(Lc/f/a/N;)Lc/f/a/H;
    .locals 1

    .line 9
    iget-object v0, p0, Lc/f/a/H;->c:Lc/f/a/G$a;

    invoke-virtual {v0, p1}, Lc/f/a/G$a;->a(Lc/f/a/N;)Lc/f/a/G$a;

    return-object p0
.end method

.method public a(Landroid/widget/ImageView;Lc/f/a/l;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 26
    invoke-static {}, Lc/f/a/P;->a()V

    if-eqz v3, :cond_b

    .line 27
    iget-object v4, v0, Lc/f/a/H;->c:Lc/f/a/G$a;

    invoke-virtual {v4}, Lc/f/a/G$a;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 28
    iget-object v1, v0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V

    .line 29
    iget-boolean v1, v0, Lc/f/a/H;->f:Z

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lc/f/a/H;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lc/f/a/D;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 31
    :cond_1
    iget-boolean v4, v0, Lc/f/a/H;->e:Z

    if-eqz v4, :cond_6

    .line 32
    iget-object v4, v0, Lc/f/a/H;->c:Lc/f/a/G$a;

    invoke-virtual {v4}, Lc/f/a/G$a;->d()Z

    move-result v4

    if-nez v4, :cond_5

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    iget-object v6, v0, Lc/f/a/H;->c:Lc/f/a/G$a;

    invoke-virtual {v6, v4, v5}, Lc/f/a/G$a;->a(II)Lc/f/a/G$a;

    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lc/f/a/H;->f:Z

    if-eqz v1, :cond_4

    .line 37
    invoke-virtual {p0}, Lc/f/a/H;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lc/f/a/D;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_4
    iget-object v1, v0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    new-instance v2, Lc/f/a/o;

    invoke-direct {v2, p0, v3, v11}, Lc/f/a/o;-><init>(Lc/f/a/H;Landroid/widget/ImageView;Lc/f/a/l;)V

    invoke-virtual {v1, v3, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;Lc/f/a/o;)V

    return-void

    .line 39
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_6
    :goto_1
    invoke-virtual {p0, v1, v2}, Lc/f/a/H;->a(J)Lc/f/a/G;

    move-result-object v7

    .line 41
    invoke-static {v7}, Lc/f/a/P;->a(Lc/f/a/G;)Ljava/lang/String;

    move-result-object v9

    .line 42
    iget v1, v0, Lc/f/a/H;->i:I

    invoke-static {v1}, Lcom/squareup/picasso/MemoryPolicy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 43
    iget-object v1, v0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v9}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 44
    iget-object v1, v0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V

    .line 45
    iget-object v1, v0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget-object v2, v1, Lcom/squareup/picasso/Picasso;->g:Landroid/content/Context;

    sget-object v5, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-boolean v6, v0, Lc/f/a/H;->d:Z

    iget-boolean v8, v1, Lcom/squareup/picasso/Picasso;->o:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v8

    invoke-static/range {v1 .. v6}, Lc/f/a/D;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 46
    iget-object v1, v0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->p:Z

    if-eqz v1, :cond_7

    .line 47
    invoke-virtual {v7}, Lc/f/a/G;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lc/f/a/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v11, :cond_8

    .line 48
    invoke-interface/range {p2 .. p2}, Lc/f/a/l;->onSuccess()V

    :cond_8
    return-void

    .line 49
    :cond_9
    iget-boolean v1, v0, Lc/f/a/H;->f:Z

    if-eqz v1, :cond_a

    .line 50
    invoke-virtual {p0}, Lc/f/a/H;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lc/f/a/D;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_a
    new-instance v13, Lc/f/a/v;

    iget-object v2, v0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget v5, v0, Lc/f/a/H;->i:I

    iget v6, v0, Lc/f/a/H;->j:I

    iget v8, v0, Lc/f/a/H;->h:I

    iget-object v10, v0, Lc/f/a/H;->l:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lc/f/a/H;->m:Ljava/lang/Object;

    iget-boolean v14, v0, Lc/f/a/H;->d:Z

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v11, p2

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lc/f/a/v;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lc/f/a/G;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lc/f/a/l;Z)V

    .line 52
    iget-object v1, v0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v13}, Lcom/squareup/picasso/Picasso;->a(Lc/f/a/a;)V

    return-void

    .line 53
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Lc/f/a/l;)V
    .locals 12

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 11
    iget-boolean v2, p0, Lc/f/a/H;->e:Z

    if-nez v2, :cond_5

    .line 12
    iget-object v2, p0, Lc/f/a/H;->c:Lc/f/a/G$a;

    invoke-virtual {v2}, Lc/f/a/G$a;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    iget-object v2, p0, Lc/f/a/H;->c:Lc/f/a/G$a;

    invoke-virtual {v2}, Lc/f/a/G$a;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    iget-object v2, p0, Lc/f/a/H;->c:Lc/f/a/G$a;

    sget-object v3, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v2, v3}, Lc/f/a/G$a;->a(Lcom/squareup/picasso/Picasso$Priority;)Lc/f/a/G$a;

    .line 15
    :cond_0
    invoke-virtual {p0, v0, v1}, Lc/f/a/H;->a(J)Lc/f/a/G;

    move-result-object v6

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v0}, Lc/f/a/P;->a(Lc/f/a/G;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    .line 17
    iget v0, p0, Lc/f/a/H;->i:I

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v10}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->p:Z

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v6}, Lc/f/a/G;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main"

    const-string v3, "completed"

    invoke-static {v2, v3, v0, v1}, Lc/f/a/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 21
    invoke-interface {p1}, Lc/f/a/l;->onSuccess()V

    :cond_2
    return-void

    .line 22
    :cond_3
    new-instance v0, Lc/f/a/s;

    iget-object v5, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget v7, p0, Lc/f/a/H;->i:I

    iget v8, p0, Lc/f/a/H;->j:I

    iget-object v9, p0, Lc/f/a/H;->m:Ljava/lang/Object;

    move-object v4, v0

    move-object v11, p1

    invoke-direct/range {v4 .. v11}, Lc/f/a/s;-><init>(Lcom/squareup/picasso/Picasso;Lc/f/a/G;IILjava/lang/Object;Ljava/lang/String;Lc/f/a/l;)V

    .line 23
    iget-object p1, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->c(Lc/f/a/a;)V

    :cond_4
    return-void

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fit cannot be used with fetch."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc/f/a/H;->a(Lc/f/a/l;)V

    return-void
.end method

.method public c()Lc/f/a/H;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/f/a/H;->e:Z

    return-object p0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lc/f/a/P;->b()V

    .line 3
    iget-boolean v2, p0, Lc/f/a/H;->e:Z

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lc/f/a/H;->c:Lc/f/a/G$a;

    invoke-virtual {v2}, Lc/f/a/G$a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, v0, v1}, Lc/f/a/H;->a(J)Lc/f/a/G;

    move-result-object v3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v0}, Lc/f/a/P;->a(Lc/f/a/G;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 7
    new-instance v0, Lc/f/a/u;

    iget-object v2, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget v4, p0, Lc/f/a/H;->i:I

    iget v5, p0, Lc/f/a/H;->j:I

    iget-object v6, p0, Lc/f/a/H;->m:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lc/f/a/u;-><init>(Lcom/squareup/picasso/Picasso;Lc/f/a/G;IILjava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget-object v2, v1, Lcom/squareup/picasso/Picasso;->h:Lc/f/a/q;

    iget-object v3, v1, Lcom/squareup/picasso/Picasso;->i:Lc/f/a/k;

    iget-object v4, v1, Lcom/squareup/picasso/Picasso;->j:Lc/f/a/L;

    invoke-static {v1, v2, v3, v4, v0}, Lc/f/a/i;->a(Lcom/squareup/picasso/Picasso;Lc/f/a/q;Lc/f/a/k;Lc/f/a/L;Lc/f/a/a;)Lc/f/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lc/f/a/i;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with get."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget v0, p0, Lc/f/a/H;->g:I

    if-eqz v0, :cond_2

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lc/f/a/H;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    iget-object v1, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lc/f/a/H;->g:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 7
    iget-object v1, p0, Lc/f/a/H;->b:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lc/f/a/H;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public f()Lc/f/a/H;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/f/a/H;->d:Z

    return-object p0
.end method

.method public g()Lc/f/a/H;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/f/a/H;->e:Z

    return-object p0
.end method
