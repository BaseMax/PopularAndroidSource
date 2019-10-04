.class public final Lcom/bumptech/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lc/b/a/g/c;
.implements Lc/b/a/g/a/g;
.implements Lc/b/a/g/h;
.implements Lc/b/a/i/a/d$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/g/c;",
        "Lc/b/a/g/a/g;",
        "Lc/b/a/g/h;",
        "Lc/b/a/i/a/d$c;"
    }
.end annotation


# static fields
.field public static final a:Lb/i/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/j/e<",
            "Lcom/bumptech/glide/request/SingleRequest<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final b:Z


# instance fields
.field public A:I

.field public B:I

.field public c:Z

.field public final d:Ljava/lang/String;

.field public final e:Lc/b/a/i/a/g;

.field public f:Lc/b/a/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/g/f<",
            "TR;>;"
        }
    .end annotation
.end field

.field public g:Lc/b/a/g/d;

.field public h:Landroid/content/Context;

.field public i:Lc/b/a/g;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public l:Lc/b/a/g/g;

.field public m:I

.field public n:I

.field public o:Lcom/bumptech/glide/Priority;

.field public p:Lc/b/a/g/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/g/a/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/g/f<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public r:Lc/b/a/c/b/r;

.field public s:Lc/b/a/g/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/g/b/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public t:Lc/b/a/c/b/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/D<",
            "TR;>;"
        }
    .end annotation
.end field

.field public u:Lc/b/a/c/b/r$d;

.field public v:J

.field public w:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/b/a/g/i;

    invoke-direct {v0}, Lc/b/a/g/i;-><init>()V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lc/b/a/i/a/d;->a(ILc/b/a/i/a/d$a;)Lb/i/j/e;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest;->a:Lb/i/j/e;

    const-string v0, "Request"

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Ljava/lang/String;

    .line 3
    invoke-static {}, Lc/b/a/i/a/g;->a()Lc/b/a/i/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lc/b/a/i/a/g;

    return-void
.end method

.method public static a(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    mul-float p1, p1, p0

    .line 68
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static a(Lcom/bumptech/glide/request/SingleRequest;Lcom/bumptech/glide/request/SingleRequest;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/SingleRequest<",
            "*>;",
            "Lcom/bumptech/glide/request/SingleRequest<",
            "*>;)Z"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 130
    :goto_0
    iget-object p1, p1, Lcom/bumptech/glide/request/SingleRequest;->q:Ljava/util/List;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static b(Landroid/content/Context;Lc/b/a/g;Ljava/lang/Object;Ljava/lang/Class;Lc/b/a/g/g;IILcom/bumptech/glide/Priority;Lc/b/a/g/a/h;Lc/b/a/g/f;Ljava/util/List;Lc/b/a/g/d;Lc/b/a/c/b/r;Lc/b/a/g/b/c;)Lcom/bumptech/glide/request/SingleRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lc/b/a/g;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/b/a/g/g;",
            "II",
            "Lcom/bumptech/glide/Priority;",
            "Lc/b/a/g/a/h<",
            "TR;>;",
            "Lc/b/a/g/f<",
            "TR;>;",
            "Ljava/util/List<",
            "Lc/b/a/g/f<",
            "TR;>;>;",
            "Lc/b/a/g/d;",
            "Lc/b/a/c/b/r;",
            "Lc/b/a/g/b/c<",
            "-TR;>;)",
            "Lcom/bumptech/glide/request/SingleRequest<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest;->a:Lb/i/j/e;

    .line 2
    invoke-interface {v0}, Lb/i/j/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/SingleRequest;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest;

    invoke-direct {v0}, Lcom/bumptech/glide/request/SingleRequest;-><init>()V

    :cond_0
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    .line 4
    invoke-virtual/range {v1 .. v15}, Lcom/bumptech/glide/request/SingleRequest;->a(Landroid/content/Context;Lc/b/a/g;Ljava/lang/Object;Ljava/lang/Class;Lc/b/a/g/g;IILcom/bumptech/glide/Priority;Lc/b/a/g/a/h;Lc/b/a/g/f;Ljava/util/List;Lc/b/a/g/d;Lc/b/a/c/b/r;Lc/b/a/g/b/c;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->u()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->u()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lc/b/a/g;

    invoke-static {v1, p1, v0}, Lc/b/a/c/d/c/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->g()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->h:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lc/b/a/g;

    .line 19
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Ljava/lang/Class;

    .line 21
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->m:I

    .line 23
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->n:I

    .line 24
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    .line 25
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lc/b/a/g/f;

    .line 27
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lc/b/a/g/d;

    .line 28
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->s:Lc/b/a/g/b/c;

    .line 29
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Lc/b/a/c/b/r$d;

    .line 30
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Landroid/graphics/drawable/Drawable;

    .line 31
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->y:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->z:Landroid/graphics/drawable/Drawable;

    .line 33
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->A:I

    .line 34
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->B:I

    .line 35
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest;->a:Lb/i/j/e;

    invoke-interface {v0, p0}, Lb/i/j/e;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(II)V
    .locals 19

    move-object/from16 v15, p0

    .line 41
    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->e:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 42
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lcom/bumptech/glide/request/SingleRequest;->v:J

    invoke-static {v1, v2}, Lc/b/a/i/e;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_1

    return-void

    .line 45
    :cond_1
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 46
    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->t()F

    move-result v0

    move/from16 v1, p1

    .line 47
    invoke-static {v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(IF)I

    move-result v1

    iput v1, v15, Lcom/bumptech/glide/request/SingleRequest;->A:I

    move/from16 v1, p2

    .line 48
    invoke-static {v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(IF)I

    move-result v0

    iput v0, v15, Lcom/bumptech/glide/request/SingleRequest;->B:I

    .line 49
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lcom/bumptech/glide/request/SingleRequest;->v:J

    invoke-static {v1, v2}, Lc/b/a/i/e;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Ljava/lang/String;)V

    .line 51
    :cond_2
    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->r:Lc/b/a/c/b/r;

    iget-object v1, v15, Lcom/bumptech/glide/request/SingleRequest;->i:Lc/b/a/g;

    iget-object v2, v15, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    iget-object v3, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 52
    invoke-virtual {v3}, Lc/b/a/g/g;->s()Lc/b/a/c/c;

    move-result-object v3

    iget v4, v15, Lcom/bumptech/glide/request/SingleRequest;->A:I

    iget v5, v15, Lcom/bumptech/glide/request/SingleRequest;->B:I

    iget-object v6, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 53
    invoke-virtual {v6}, Lc/b/a/g/g;->r()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, v15, Lcom/bumptech/glide/request/SingleRequest;->k:Ljava/lang/Class;

    iget-object v8, v15, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/Priority;

    iget-object v9, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 54
    invoke-virtual {v9}, Lc/b/a/g/g;->b()Lc/b/a/c/b/p;

    move-result-object v9

    iget-object v10, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 55
    invoke-virtual {v10}, Lc/b/a/g/g;->v()Ljava/util/Map;

    move-result-object v10

    iget-object v11, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 56
    invoke-virtual {v11}, Lc/b/a/g/g;->C()Z

    move-result v11

    iget-object v12, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 57
    invoke-virtual {v12}, Lc/b/a/g/g;->A()Z

    move-result v12

    iget-object v13, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 58
    invoke-virtual {v13}, Lc/b/a/g/g;->h()Lc/b/a/c/f;

    move-result-object v13

    iget-object v14, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 59
    invoke-virtual {v14}, Lc/b/a/g/g;->y()Z

    move-result v14

    move-object/from16 p1, v0

    iget-object v0, v15, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 60
    invoke-virtual {v0}, Lc/b/a/g/g;->x()Z

    move-result v0

    move-object/from16 p2, v1

    move-object v1, v15

    move v15, v0

    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 61
    invoke-virtual {v0}, Lc/b/a/g/g;->w()Z

    move-result v16

    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 62
    invoke-virtual {v0}, Lc/b/a/g/g;->g()Z

    move-result v17

    move-object/from16 v18, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 63
    invoke-virtual/range {v0 .. v18}, Lc/b/a/c/b/r;->a(Lc/b/a/g;Ljava/lang/Object;Lc/b/a/c/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lc/b/a/c/b/p;Ljava/util/Map;ZZLc/b/a/c/f;ZZZZLc/b/a/g/h;)Lc/b/a/c/b/r$d;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->u:Lc/b/a/c/b/r$d;

    .line 64
    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    .line 65
    iput-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->u:Lc/b/a/c/b/r$d;

    .line 66
    :cond_3
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    if-eqz v0, :cond_4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/bumptech/glide/request/SingleRequest;->v:J

    invoke-static {v2, v3}, Lc/b/a/i/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final a(Landroid/content/Context;Lc/b/a/g;Ljava/lang/Object;Ljava/lang/Class;Lc/b/a/g/g;IILcom/bumptech/glide/Priority;Lc/b/a/g/a/h;Lc/b/a/g/f;Ljava/util/List;Lc/b/a/g/d;Lc/b/a/c/b/r;Lc/b/a/g/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/g;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/b/a/g/g;",
            "II",
            "Lcom/bumptech/glide/Priority;",
            "Lc/b/a/g/a/h<",
            "TR;>;",
            "Lc/b/a/g/f<",
            "TR;>;",
            "Ljava/util/List<",
            "Lc/b/a/g/f<",
            "TR;>;>;",
            "Lc/b/a/g/d;",
            "Lc/b/a/c/b/r;",
            "Lc/b/a/g/b/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->h:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lc/b/a/g;

    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Ljava/lang/Class;

    .line 5
    iput-object p5, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 6
    iput p6, p0, Lcom/bumptech/glide/request/SingleRequest;->m:I

    .line 7
    iput p7, p0, Lcom/bumptech/glide/request/SingleRequest;->n:I

    .line 8
    iput-object p8, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/Priority;

    .line 9
    iput-object p9, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    .line 10
    iput-object p10, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lc/b/a/g/f;

    .line 11
    iput-object p11, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Ljava/util/List;

    .line 12
    iput-object p12, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lc/b/a/g/d;

    .line 13
    iput-object p13, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lc/b/a/c/b/r;

    .line 14
    iput-object p14, p0, Lcom/bumptech/glide/request/SingleRequest;->s:Lc/b/a/g/b/c;

    .line 15
    sget-object p1, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void
.end method

.method public final a(Lc/b/a/c/b/D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "*>;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lc/b/a/c/b/r;

    invoke-virtual {v0, p1}, Lc/b/a/c/b/r;->b(Lc/b/a/c/b/D;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lc/b/a/c/b/D;

    return-void
.end method

.method public a(Lc/b/a/c/b/D;Lcom/bumptech/glide/load/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Lc/b/a/c/b/r$d;

    if-nez p1, :cond_0

    .line 71
    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " inside, but instead got null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    return-void

    .line 73
    :cond_0
    invoke-interface {p1}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->j()Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lc/b/a/c/b/D;)V

    .line 77
    sget-object p1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void

    .line 78
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/bumptech/glide/request/SingleRequest;->a(Lc/b/a/c/b/D;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V

    return-void

    .line 79
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lc/b/a/c/b/D;)V

    .line 80
    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but instead got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "} inside Resource{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 82
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    return-void
.end method

.method public final a(Lc/b/a/c/b/D;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "TR;>;TR;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->o()Z

    move-result v6

    .line 85
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 86
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lc/b/a/c/b/D;

    .line 87
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lc/b/a/g;

    invoke-virtual {p1}, Lc/b/a/g;->d()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished loading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->B:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/bumptech/glide/request/SingleRequest;->v:J

    .line 89
    invoke-static {v0, v1}, Lc/b/a/i/e;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Glide"

    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Z

    const/4 v7, 0x0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/g/f;

    .line 94
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 95
    invoke-interface/range {v0 .. v5}, Lc/b/a/g/f;->a(Ljava/lang/Object;Ljava/lang/Object;Lc/b/a/g/a/h;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lc/b/a/g/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lc/b/a/g/f;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 97
    invoke-interface/range {v0 .. v5}, Lc/b/a/g/f;->a(Ljava/lang/Object;Ljava/lang/Object;Lc/b/a/g/a/h;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, v9

    if-nez p1, :cond_4

    .line 98
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->s:Lc/b/a/g/b/c;

    .line 99
    invoke-interface {p1, p3, v6}, Lc/b/a/g/b/c;->a(Lcom/bumptech/glide/load/DataSource;Z)Lc/b/a/g/b/b;

    move-result-object p1

    .line 100
    iget-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    invoke-interface {p3, p2, p1}, Lc/b/a/g/a/h;->a(Ljava/lang/Object;Lc/b/a/g/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_4
    iput-boolean v7, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Z

    .line 102
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->q()V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    iput-boolean v7, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Z

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    const/4 v0, 0x5

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->d()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load failed for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with size ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->A:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->B:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Glide"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v0, p2, :cond_0

    .line 108
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/GlideException;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 109
    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Lc/b/a/c/b/r$d;

    .line 110
    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 p2, 0x1

    .line 111
    iput-boolean p2, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Z

    const/4 v0, 0x0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/g/f;

    .line 114
    iget-object v4, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    .line 115
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->o()Z

    move-result v6

    invoke-interface {v3, p1, v4, v5, v6}, Lc/b/a/g/f;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lc/b/a/g/a/h;Z)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lc/b/a/g/f;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lc/b/a/g/f;

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    iget-object v4, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    .line 117
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->o()Z

    move-result v5

    invoke-interface {v1, p1, v3, v4, v5}, Lc/b/a/g/f;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lc/b/a/g/a/h;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    or-int p1, v2, p2

    if-nez p1, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_4
    iput-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Z

    .line 120
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->p()V

    return-void

    :catchall_0
    move-exception p1

    .line 121
    iput-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Z

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Request"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lc/b/a/g/c;)Z
    .locals 3

    .line 122
    instance-of v0, p1, Lcom/bumptech/glide/request/SingleRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Lcom/bumptech/glide/request/SingleRequest;

    .line 124
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:I

    iget v2, p1, Lcom/bumptech/glide/request/SingleRequest;->m:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->n:I

    iget v2, p1, Lcom/bumptech/glide/request/SingleRequest;->n:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    .line 125
    invoke-static {v0, v2}, Lc/b/a/i/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->k:Ljava/lang/Class;

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    .line 127
    invoke-virtual {v0, v2}, Lc/b/a/g/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    .line 128
    invoke-static {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/request/SingleRequest;Lcom/bumptech/glide/request/SingleRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b()Z
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->isComplete()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->g()V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->k()V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lc/b/a/c/b/D;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Lc/b/a/c/b/D;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/b/a/g/a/h;->c(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_2
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->g()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 3
    invoke-static {}, Lc/b/a/i/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/SingleRequest;->v:J

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->n:I

    invoke-static {v0, v1}, Lc/b/a/i/k;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->A:I

    .line 7
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->n:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->B:I

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 9
    :goto_0
    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_8

    .line 11
    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_3

    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lc/b/a/c/b/D;

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lc/b/a/c/b/D;Lcom/bumptech/glide/load/DataSource;)V

    return-void

    .line 13
    :cond_3
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 14
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->n:I

    invoke-static {v0, v1}, Lc/b/a/i/k;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/SingleRequest;->a(II)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    invoke-interface {v0, p0}, Lc/b/a/g/a/h;->b(Lc/b/a/g/a/g;)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_6

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/b/a/g/a/h;->b(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_6
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    if-eqz v0, :cond_7

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bumptech/glide/request/SingleRequest;->v:J

    invoke-static {v1, v2}, Lc/b/a/i/e;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 22
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Lc/b/a/i/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lc/b/a/i/a/g;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lc/b/a/g/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/b/a/g/d;->f(Lc/b/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lc/b/a/g/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/b/a/g/d;->c(Lc/b/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isComplete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

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

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lc/b/a/g/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/b/a/g/d;->d(Lc/b/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public final k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->g()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lc/b/a/i/a/g;

    invoke-virtual {v0}, Lc/b/a/i/a/g;->b()V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    invoke-interface {v0, p0}, Lc/b/a/g/a/h;->a(Lc/b/a/g/a/g;)V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Lc/b/a/c/b/r$d;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lc/b/a/c/b/r$d;->a()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Lc/b/a/c/b/r$d;

    :cond_0
    return-void
.end method

.method public final l()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final m()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->z:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->f()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->z:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->z:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final n()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->y:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->p()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lc/b/a/g/g;

    invoke-virtual {v0}, Lc/b/a/g/g;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->y:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lc/b/a/g/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc/b/a/g/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lc/b/a/g/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lc/b/a/g/d;->b(Lc/b/a/g/c;)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lc/b/a/g/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lc/b/a/g/d;->e(Lc/b/a/g/c;)V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lc/b/a/g/a/h;

    invoke-interface {v1, v0}, Lc/b/a/g/a/h;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
