.class public final Lcom/bumptech/glide/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f$b;,
        Lcom/bumptech/glide/f$a;,
        Lcom/bumptech/glide/f$e;,
        Lcom/bumptech/glide/f$d;,
        Lcom/bumptech/glide/f$c;
    }
.end annotation


# static fields
.field public static final BUCKET_BITMAP:Ljava/lang/String; = "Bitmap"

.field public static final BUCKET_BITMAP_DRAWABLE:Ljava/lang/String; = "BitmapDrawable"

.field public static final BUCKET_GIF:Ljava/lang/String; = "Gif"


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/p;

.field private final b:Lcom/bumptech/glide/d/a;

.field private final c:Lcom/bumptech/glide/d/e;

.field private final d:Lcom/bumptech/glide/d/f;

.field private final e:Lcom/bumptech/glide/load/a/f;

.field private final f:Lcom/bumptech/glide/load/resource/e/f;

.field private final g:Lcom/bumptech/glide/d/b;

.field private final h:Lcom/bumptech/glide/d/d;

.field private final i:Lcom/bumptech/glide/d/c;

.field private final j:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/d/d;

    .line 56
    new-instance v0, Lcom/bumptech/glide/d/c;

    invoke-direct {v0}, Lcom/bumptech/glide/d/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->i:Lcom/bumptech/glide/d/c;

    .line 57
    invoke-static {}, Lcom/bumptech/glide/g/a/a;->threadSafeList()Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f;->j:Landroidx/core/util/Pools$Pool;

    .line 60
    new-instance v0, Lcom/bumptech/glide/load/c/p;

    iget-object v1, p0, Lcom/bumptech/glide/f;->j:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/p;-><init>(Landroidx/core/util/Pools$Pool;)V

    iput-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/c/p;

    .line 61
    new-instance v0, Lcom/bumptech/glide/d/a;

    invoke-direct {v0}, Lcom/bumptech/glide/d/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/d/a;

    .line 62
    new-instance v0, Lcom/bumptech/glide/d/e;

    invoke-direct {v0}, Lcom/bumptech/glide/d/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/d/e;

    .line 63
    new-instance v0, Lcom/bumptech/glide/d/f;

    invoke-direct {v0}, Lcom/bumptech/glide/d/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/d/f;

    .line 64
    new-instance v0, Lcom/bumptech/glide/load/a/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/a/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/load/a/f;

    .line 65
    new-instance v0, Lcom/bumptech/glide/load/resource/e/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/e/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/load/resource/e/f;

    .line 66
    new-instance v0, Lcom/bumptech/glide/d/b;

    invoke-direct {v0}, Lcom/bumptech/glide/d/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/d/b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gif"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bitmap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BitmapDrawable"

    aput-object v2, v0, v1

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/f;->setResourceDecoderBucketPriorityList(Ljava/util/List;)Lcom/bumptech/glide/f;

    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/a<",
            "TData;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/a;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)V

    return-object p0
.end method

.method public final append(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/i<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/f;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)V

    return-object p0
.end method

.method public final append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/c/o<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/p;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V

    return-object p0
.end method

.method public final append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/h<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    const-string v0, "legacy_append"

    .line 155
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/f;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    return-object p0
.end method

.method public final append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/h<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/d/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/bumptech/glide/d/e;->append(Ljava/lang/String;Lcom/bumptech/glide/load/h;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final getImageHeaderParsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/d/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/b;->getParsers()Ljava/util/List;

    move-result-object v0

    .line 596
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 597
    :cond_0
    new-instance v0, Lcom/bumptech/glide/f$b;

    invoke-direct {v0}, Lcom/bumptech/glide/f$b;-><init>()V

    throw v0
.end method

.method public final getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/t;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/bumptech/glide/load/b/t<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 477
    iget-object v1, v0, Lcom/bumptech/glide/f;->i:Lcom/bumptech/glide/d/c;

    .line 478
    invoke-virtual {v1, v8, v9, v10}, Lcom/bumptech/glide/d/c;->get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/t;

    move-result-object v1

    .line 479
    iget-object v2, v0, Lcom/bumptech/glide/f;->i:Lcom/bumptech/glide/d/c;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/d/c;->isEmptyLoadPath(Lcom/bumptech/glide/load/b/t;)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    return-object v11

    :cond_0
    if-nez v1, :cond_4

    .line 1502
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    iget-object v1, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/d/e;

    .line 1504
    invoke-virtual {v1, v8, v9}, Lcom/bumptech/glide/d/e;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 1506
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/Class;

    .line 1507
    iget-object v1, v0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/load/resource/e/f;

    .line 1508
    invoke-virtual {v1, v14, v10}, Lcom/bumptech/glide/load/resource/e/f;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 1510
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    .line 1512
    iget-object v1, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/d/e;

    .line 1513
    invoke-virtual {v1, v8, v14}, Lcom/bumptech/glide/d/e;->getDecoders(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 1514
    iget-object v1, v0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/load/resource/e/f;

    .line 1515
    invoke-virtual {v1, v14, v4}, Lcom/bumptech/glide/load/resource/e/f;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/e/e;

    move-result-object v6

    .line 1517
    new-instance v7, Lcom/bumptech/glide/load/b/i;

    iget-object v3, v0, Lcom/bumptech/glide/f;->j:Landroidx/core/util/Pools$Pool;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v16, v3

    move-object v3, v14

    move-object v11, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/b/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/resource/e/e;Landroidx/core/util/Pools$Pool;)V

    .line 1520
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    goto :goto_0

    .line 486
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 489
    :cond_3
    new-instance v7, Lcom/bumptech/glide/load/b/t;

    iget-object v6, v0, Lcom/bumptech/glide/f;->j:Landroidx/core/util/Pools$Pool;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/b/t;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    .line 493
    :goto_1
    iget-object v2, v0, Lcom/bumptech/glide/f;->i:Lcom/bumptech/glide/d/c;

    invoke-virtual {v2, v8, v9, v10, v1}, Lcom/bumptech/glide/d/c;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/t;)V

    :cond_4
    return-object v1
.end method

.method public final getModelLoaders(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/c/p;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 588
    :cond_0
    new-instance v0, Lcom/bumptech/glide/f$c;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/f$c;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/d/d;

    .line 532
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/d/d;->get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    iget-object v1, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/c/p;->getDataClasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 537
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 538
    iget-object v3, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/d/e;

    .line 539
    invoke-virtual {v3, v2, p2}, Lcom/bumptech/glide/d/e;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 540
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 541
    iget-object v4, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/load/resource/e/f;

    .line 542
    invoke-virtual {v4, v3, p3}, Lcom/bumptech/glide/load/resource/e/f;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 543
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 544
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/d/d;

    .line 549
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 548
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/bumptech/glide/d/d;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method public final getResultEncoder(Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/v<",
            "TX;>;)",
            "Lcom/bumptech/glide/load/i<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/f$d;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/d/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/v;->getResourceClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/f;->get(Ljava/lang/Class;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 566
    :cond_0
    new-instance v0, Lcom/bumptech/glide/f$d;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/v;->getResourceClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/f$d;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public final getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/a/e<",
            "TX;>;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/load/a/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/a/f;->build(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/e;

    move-result-object p1

    return-object p1
.end method

.method public final getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/a<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/f$e;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/d/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/a;->getEncoder(Ljava/lang/Class;)Lcom/bumptech/glide/load/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 576
    :cond_0
    new-instance v0, Lcom/bumptech/glide/f$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/f$e;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public final isResourceEncoderAvailable(Lcom/bumptech/glide/load/b/v;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/v<",
            "*>;)Z"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/d/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/v;->getResourceClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/f;->get(Ljava/lang/Class;)Lcom/bumptech/glide/load/i;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/a<",
            "TData;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/a;->prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/i<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/d/f;->prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/c/o<",
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/p;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V

    return-object p0
.end method

.method public final prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/h<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    const-string v0, "legacy_prepend_all"

    .line 215
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/f;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;

    return-object p0
.end method

.method public final prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/h<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/d/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/bumptech/glide/d/e;->prepend(Ljava/lang/String;Lcom/bumptech/glide/load/h;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/f;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/d/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d/b;->add(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    return-object p0
.end method

.method public final register(Lcom/bumptech/glide/load/a/e$a;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a/e$a<",
            "*>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/load/a/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/a/f;->register(Lcom/bumptech/glide/load/a/e$a;)V

    return-object p0
.end method

.method public final register(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/a<",
            "TData;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public final register(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/i<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/f;->append(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/f;

    move-result-object p1

    return-object p1
.end method

.method public final register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lcom/bumptech/glide/load/resource/e/e<",
            "TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/load/resource/e/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/e/f;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)V

    return-object p0
.end method

.method public final replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/c/o<",
            "+TModel;+TData;>;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/c/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/p;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)V

    return-object p0
.end method

.method public final setResourceDecoderBucketPriorityList(Ljava/util/List;)Lcom/bumptech/glide/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bumptech/glide/f;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    const-string v1, "legacy_prepend_all"

    .line 271
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, "legacy_append"

    .line 272
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object p1, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/d/e;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d/e;->setBucketPriorityList(Ljava/util/List;)V

    return-object p0
.end method
