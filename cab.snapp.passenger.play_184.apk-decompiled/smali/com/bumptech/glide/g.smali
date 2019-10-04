.class public final Lcom/bumptech/glide/g;
.super Lcom/bumptech/glide/e/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e/a<",
        "Lcom/bumptech/glide/g<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/bumptech/glide/e/h;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/bumptech/glide/h;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/c;

.field private final g:Lcom/bumptech/glide/e;

.field private h:Lcom/bumptech/glide/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private l:Lcom/bumptech/glide/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Float;

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/b/j;->DATA:Lcom/bumptech/glide/load/b/j;

    .line 57
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->diskCacheStrategy(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->skipMemoryCache(Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/e/h;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/bumptech/glide/g;->n:Z

    .line 89
    iput-object p1, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/c;

    .line 90
    iput-object p2, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/h;

    .line 91
    iput-object p3, p0, Lcom/bumptech/glide/g;->e:Ljava/lang/Class;

    .line 92
    iput-object p4, p0, Lcom/bumptech/glide/g;->c:Landroid/content/Context;

    .line 93
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;)Lcom/bumptech/glide/i;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/i;

    .line 1571
    iget-object p1, p1, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/e;

    .line 94
    iput-object p1, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/e;

    .line 1645
    iget-object p1, p2, Lcom/bumptech/glide/h;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/e/g;

    .line 2117
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/g;->addListener(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/g;

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/g<",
            "*>;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p2, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/c;

    iget-object v1, p2, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/h;

    iget-object v2, p2, Lcom/bumptech/glide/g;->c:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V

    .line 104
    iget-object p1, p2, Lcom/bumptech/glide/g;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/g;->i:Ljava/lang/Object;

    .line 105
    iget-boolean p1, p2, Lcom/bumptech/glide/g;->o:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/g;->o:Z

    .line 108
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    return-void
.end method

.method private a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 2

    .line 858
    sget-object v0, Lcom/bumptech/glide/g$1;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 867
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown priority: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/g;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 865
    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 862
    :cond_2
    sget-object p1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    return-object p1

    .line 860
    :cond_3
    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/e/a/i<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 630
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-boolean v0, p0, Lcom/bumptech/glide/g;->o:Z

    if-eqz v0, :cond_2

    .line 635
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/g;->b(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object p2

    .line 637
    invoke-interface {p1}, Lcom/bumptech/glide/e/a/i;->getRequest()Lcom/bumptech/glide/e/d;

    move-result-object p4

    .line 638
    invoke-interface {p2, p4}, Lcom/bumptech/glide/e/d;->isEquivalentTo(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    invoke-static {p3, p4}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/d;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 640
    invoke-interface {p2}, Lcom/bumptech/glide/e/d;->recycle()V

    .line 645
    invoke-static {p4}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/e/d;

    invoke-interface {p2}, Lcom/bumptech/glide/e/d;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 649
    invoke-interface {p4}, Lcom/bumptech/glide/e/d;->begin()V

    :cond_0
    return-object p1

    .line 654
    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/h;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/h;->clear(Lcom/bumptech/glide/e/a/i;)V

    .line 655
    invoke-interface {p1, p2}, Lcom/bumptech/glide/e/a/i;->setRequest(Lcom/bumptech/glide/e/d;)V

    .line 656
    iget-object p3, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/h;

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/d;)V

    return-object p1

    .line 632
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/e/a/i<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 622
    invoke-direct {p0, p1, p2, p0, p3}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/i;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/i<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Lcom/bumptech/glide/e/e;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/e/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1066
    iget-object v1, v0, Lcom/bumptech/glide/g;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/e;

    iget-object v3, v0, Lcom/bumptech/glide/g;->i:Ljava/lang/Object;

    iget-object v4, v0, Lcom/bumptech/glide/g;->e:Ljava/lang/Class;

    iget-object v11, v0, Lcom/bumptech/glide/g;->j:Ljava/util/List;

    .line 1079
    invoke-virtual {v2}, Lcom/bumptech/glide/e;->getEngine()Lcom/bumptech/glide/load/b/k;

    move-result-object v13

    move-object/from16 v5, p5

    .line 3092
    iget-object v14, v5, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/e/b/c;

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v15, p9

    .line 1066
    invoke-static/range {v1 .. v15}, Lcom/bumptech/glide/e/j;->obtain(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/e/a;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Ljava/util/List;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/e/b/c;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/j;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/i<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/e;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/e/d;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 901
    iget-object v0, v10, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/g;

    if-eqz v0, :cond_0

    .line 902
    new-instance v0, Lcom/bumptech/glide/e/b;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/bumptech/glide/e/b;-><init>(Lcom/bumptech/glide/e/e;)V

    move-object v3, v0

    move-object v15, v3

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v15, v0

    move-object v3, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 907
    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/g;->b(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    .line 922
    :cond_1
    iget-object v1, v10, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->getOverrideWidth()I

    move-result v1

    .line 923
    iget-object v2, v10, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/g;->getOverrideHeight()I

    move-result v2

    .line 924
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/g/k;->isValidDimensions(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v10, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/g;

    .line 925
    invoke-virtual {v3}, Lcom/bumptech/glide/g;->isValidOverride()Z

    move-result v3

    if-nez v3, :cond_2

    .line 926
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/e/a;->getOverrideWidth()I

    move-result v1

    .line 927
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/e/a;->getOverrideHeight()I

    move-result v2

    :cond_2
    move/from16 v17, v1

    move/from16 v18, v2

    .line 930
    iget-object v11, v10, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/g;

    iget-object v1, v11, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/i;

    .line 936
    invoke-virtual {v11}, Lcom/bumptech/glide/g;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v16

    iget-object v2, v10, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/g;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v19, v2

    move-object/from16 v20, p9

    .line 931
    invoke-direct/range {v11 .. v20}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v1

    .line 941
    invoke-virtual {v3, v0, v1}, Lcom/bumptech/glide/e/b;->setRequests(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V

    return-object v3
.end method

.method private a()Lcom/bumptech/glide/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 853
    new-instance v0, Lcom/bumptech/glide/g;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/g;)V

    sget-object v1, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/e/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcom/bumptech/glide/g;->i:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 374
    iput-boolean p1, p0, Lcom/bumptech/glide/g;->o:Z

    return-object p0
.end method

.method private static a(Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/d;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Lcom/bumptech/glide/e/d;",
            ")Z"
        }
    .end annotation

    .line 668
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->isMemoryCacheable()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/i<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/e/d;"
        }
    .end annotation

    .line 876
    iget-object v4, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/i;

    .line 881
    invoke-virtual {p3}, Lcom/bumptech/glide/e/a;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v5

    .line 882
    invoke-virtual {p3}, Lcom/bumptech/glide/e/a;->getOverrideWidth()I

    move-result v6

    .line 883
    invoke-virtual {p3}, Lcom/bumptech/glide/e/a;->getOverrideHeight()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    move-object v9, p4

    .line 876
    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/i<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/e;",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/e/d;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p5

    .line 955
    iget-object v0, v10, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/g;

    if-eqz v0, :cond_4

    .line 957
    iget-boolean v1, v10, Lcom/bumptech/glide/g;->p:Z

    if-nez v1, :cond_3

    .line 962
    iget-object v1, v0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/i;

    .line 967
    iget-boolean v0, v0, Lcom/bumptech/glide/g;->n:Z

    if-eqz v0, :cond_0

    move-object/from16 v15, p4

    goto :goto_0

    :cond_0
    move-object v15, v1

    .line 971
    :goto_0
    iget-object v0, v10, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->isPrioritySet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, v10, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-direct {v10, v11}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_1
    move-object/from16 v16, v0

    .line 974
    iget-object v0, v10, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->getOverrideWidth()I

    move-result v0

    .line 975
    iget-object v1, v10, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->getOverrideHeight()I

    move-result v1

    .line 976
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/g/k;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v10, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/g;

    .line 977
    invoke-virtual {v2}, Lcom/bumptech/glide/g;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_2

    .line 978
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/e/a;->getOverrideWidth()I

    move-result v0

    .line 979
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/e/a;->getOverrideHeight()I

    move-result v1

    :cond_2
    move/from16 v17, v0

    move/from16 v18, v1

    .line 982
    new-instance v14, Lcom/bumptech/glide/e/k;

    invoke-direct {v14, v4}, Lcom/bumptech/glide/e/k;-><init>(Lcom/bumptech/glide/e/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v14

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    .line 984
    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 994
    iput-boolean v1, v10, Lcom/bumptech/glide/g;->p:Z

    .line 996
    iget-object v1, v10, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/g;

    move-object v11, v1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v2, v14

    move-object/from16 v19, v1

    move-object/from16 v20, p9

    .line 997
    invoke-direct/range {v11 .. v20}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v1

    const/4 v3, 0x0

    .line 1007
    iput-boolean v3, v10, Lcom/bumptech/glide/g;->p:Z

    .line 1008
    invoke-virtual {v2, v0, v1}, Lcom/bumptech/glide/e/k;->setRequests(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V

    return-object v2

    .line 958
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_4
    iget-object v0, v10, Lcom/bumptech/glide/g;->m:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 1012
    new-instance v12, Lcom/bumptech/glide/e/k;

    invoke-direct {v12, v4}, Lcom/bumptech/glide/e/k;-><init>(Lcom/bumptech/glide/e/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    .line 1014
    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v13

    .line 1025
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    iget-object v1, v10, Lcom/bumptech/glide/g;->m:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/a;->sizeMultiplier(F)Lcom/bumptech/glide/e/a;

    move-result-object v3

    .line 1034
    invoke-direct {v10, v11}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1028
    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v0

    .line 1039
    invoke-virtual {v12, v13, v0}, Lcom/bumptech/glide/e/k;->setRequests(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V

    return-object v12

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    .line 1043
    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/i;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->j:Ljava/util/List;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public final bridge synthetic apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/e/a;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a<",
            "*>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-super {p0, p1}, Lcom/bumptech/glide/e/a;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/bumptech/glide/e/a;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->clone()Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/bumptech/glide/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 599
    invoke-super {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    .line 600
    iget-object v1, v0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/i;->clone()Lcom/bumptech/glide/i;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/i;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/g;->clone()Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public final downloadOnly(Lcom/bumptech/glide/e/a/i;)Lcom/bumptech/glide/e/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/e/a/i<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 829
    invoke-direct {p0}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->into(Lcom/bumptech/glide/e/a/i;)Lcom/bumptech/glide/e/a/i;

    move-result-object p1

    return-object p1
.end method

.method public final downloadOnly(II)Lcom/bumptech/glide/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/e/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 847
    invoke-direct {p0}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/g;->submit(II)Lcom/bumptech/glide/e/c;

    move-result-object p1

    return-object p1
.end method

.method public final error(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/g;

    return-object p0
.end method

.method public final into(Lcom/bumptech/glide/e/a/i;)Lcom/bumptech/glide/e/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/e/a/i<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 613
    invoke-static {}, Lcom/bumptech/glide/g/e;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/i;

    move-result-object p1

    return-object p1
.end method

.method public final into(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/e/a/j<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 684
    invoke-static {}, Lcom/bumptech/glide/g/k;->assertMainThread()V

    .line 685
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->isTransformationSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->isTransformationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    sget-object v0, Lcom/bumptech/glide/g$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 707
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->optionalCenterInside()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_1

    .line 704
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->optionalFitCenter()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_1

    .line 699
    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->optionalCenterInside()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_1

    .line 696
    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->clone()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->optionalCenterCrop()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 716
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/e;

    iget-object v2, p0, Lcom/bumptech/glide/g;->e:Ljava/lang/Class;

    .line 717
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/e;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/e/a/j;

    move-result-object p1

    const/4 v1, 0x0

    .line 720
    invoke-static {}, Lcom/bumptech/glide/g/e;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 716
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/i;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/a/j;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final into(II)Lcom/bumptech/glide/e/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/e/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/g;->submit(II)Lcom/bumptech/glide/e/c;

    move-result-object p1

    return-object p1
.end method

.method public final listener(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/bumptech/glide/g;->j:Ljava/util/List;

    .line 175
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->addListener(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 400
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/b/j;->NONE:Lcom/bumptech/glide/load/b/j;

    .line 401
    invoke-static {v0}, Lcom/bumptech/glide/e/h;->diskCacheStrategyOf(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 427
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/b/j;->NONE:Lcom/bumptech/glide/load/b/j;

    .line 428
    invoke-static {v0}, Lcom/bumptech/glide/e/h;->diskCacheStrategyOf(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Landroid/net/Uri;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 479
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/io/File;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 503
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/lang/Integer;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 542
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/f/a;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/e/h;->signatureOf(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/lang/String;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 454
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/net/URL;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load([B)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 573
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 574
    invoke-virtual {p1}, Lcom/bumptech/glide/g;->isDiskCacheStrategySet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    sget-object v0, Lcom/bumptech/glide/load/b/j;->NONE:Lcom/bumptech/glide/load/b/j;

    invoke-static {v0}, Lcom/bumptech/glide/e/h;->diskCacheStrategyOf(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 577
    :cond_0
    invoke-virtual {p1}, Lcom/bumptech/glide/g;->isSkipMemoryCacheSet()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 578
    invoke-static {v0}, Lcom/bumptech/glide/e/h;->skipMemoryCacheOf(Z)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->load(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->load(Ljava/io/File;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->load(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->load(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->load(Ljava/net/URL;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->load([B)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final preload()Lcom/bumptech/glide/e/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e/a/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 813
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/g;->preload(II)Lcom/bumptech/glide/e/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final preload(II)Lcom/bumptech/glide/e/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/e/a/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/h;

    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/e/a/f;->obtain(Lcom/bumptech/glide/h;II)Lcom/bumptech/glide/e/a/f;

    move-result-object p1

    .line 799
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->into(Lcom/bumptech/glide/e/a/i;)Lcom/bumptech/glide/e/a/i;

    move-result-object p1

    return-object p1
.end method

.method public final submit()Lcom/bumptech/glide/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 757
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/g;->submit(II)Lcom/bumptech/glide/e/c;

    move-result-object v0

    return-object v0
.end method

.method public final submit(II)Lcom/bumptech/glide/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/e/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 774
    new-instance v0, Lcom/bumptech/glide/e/f;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/e/f;-><init>(II)V

    .line 775
    invoke-static {}, Lcom/bumptech/glide/g/e;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {p0, v0, v0, p1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/i;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/c;

    return-object p1
.end method

.method public final thumbnail(F)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 352
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/g;->m:Ljava/lang/Float;

    return-object p0

    .line 350
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final thumbnail(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/g;

    return-object p0
.end method

.method public final varargs thumbnail([Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 287
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 297
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 298
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/g;->thumbnail(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 312
    :cond_3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->thumbnail(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1

    .line 288
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->thumbnail(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final transition(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 153
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/i;

    iput-object p1, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/i;

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/bumptech/glide/g;->n:Z

    return-object p0
.end method
