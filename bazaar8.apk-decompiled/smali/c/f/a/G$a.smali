.class public final Lc/f/a/G$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:Z

.field public i:Z

.field public j:F

.field public k:F

.field public l:F

.field public m:Z

.field public n:Z

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/f/a/N;",
            ">;"
        }
    .end annotation
.end field

.field public p:Landroid/graphics/Bitmap$Config;

.field public q:Lcom/squareup/picasso/Picasso$Priority;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/f/a/G$a;->a:Landroid/net/Uri;

    .line 3
    iput p2, p0, Lc/f/a/G$a;->b:I

    .line 4
    iput-object p3, p0, Lc/f/a/G$a;->p:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public a(II)Lc/f/a/G$a;
    .locals 0

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one dimension has to be positive number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lc/f/a/G$a;->d:I

    .line 3
    iput p2, p0, Lc/f/a/G$a;->e:I

    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lc/f/a/N;)Lc/f/a/G$a;
    .locals 2

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Lc/f/a/N;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lc/f/a/G$a;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/f/a/G$a;->o:Ljava/util/List;

    .line 13
    :cond_0
    iget-object v0, p0, Lc/f/a/G$a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/squareup/picasso/Picasso$Priority;)Lc/f/a/G$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lc/f/a/G$a;->q:Lcom/squareup/picasso/Picasso$Priority;

    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lc/f/a/G$a;->q:Lcom/squareup/picasso/Picasso$Priority;

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Priority already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Priority invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lc/f/a/G;
    .locals 22

    move-object/from16 v0, p0

    .line 16
    iget-boolean v1, v0, Lc/f/a/G$a;->h:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lc/f/a/G$a;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lc/f/a/G$a;->f:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lc/f/a/G$a;->d:I

    if-nez v1, :cond_3

    iget v1, v0, Lc/f/a/G$a;->e:I

    if-eqz v1, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_3
    :goto_1
    iget-boolean v1, v0, Lc/f/a/G$a;->h:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lc/f/a/G$a;->d:I

    if-nez v1, :cond_5

    iget v1, v0, Lc/f/a/G$a;->e:I

    if-eqz v1, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_5
    :goto_2
    iget-object v1, v0, Lc/f/a/G$a;->q:Lcom/squareup/picasso/Picasso$Priority;

    if-nez v1, :cond_6

    .line 23
    sget-object v1, Lcom/squareup/picasso/Picasso$Priority;->NORMAL:Lcom/squareup/picasso/Picasso$Priority;

    iput-object v1, v0, Lc/f/a/G$a;->q:Lcom/squareup/picasso/Picasso$Priority;

    .line 24
    :cond_6
    new-instance v1, Lc/f/a/G;

    move-object v2, v1

    iget-object v3, v0, Lc/f/a/G$a;->a:Landroid/net/Uri;

    iget v4, v0, Lc/f/a/G$a;->b:I

    iget-object v5, v0, Lc/f/a/G$a;->c:Ljava/lang/String;

    iget-object v6, v0, Lc/f/a/G$a;->o:Ljava/util/List;

    iget v7, v0, Lc/f/a/G$a;->d:I

    iget v8, v0, Lc/f/a/G$a;->e:I

    iget-boolean v9, v0, Lc/f/a/G$a;->f:Z

    iget-boolean v10, v0, Lc/f/a/G$a;->h:Z

    iget v11, v0, Lc/f/a/G$a;->g:I

    iget-boolean v12, v0, Lc/f/a/G$a;->i:Z

    iget v13, v0, Lc/f/a/G$a;->j:F

    iget v14, v0, Lc/f/a/G$a;->k:F

    iget v15, v0, Lc/f/a/G$a;->l:F

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lc/f/a/G$a;->m:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lc/f/a/G$a;->n:Z

    move/from16 v17, v1

    iget-object v1, v0, Lc/f/a/G$a;->p:Landroid/graphics/Bitmap$Config;

    move-object/from16 v18, v1

    iget-object v1, v0, Lc/f/a/G$a;->q:Lcom/squareup/picasso/Picasso$Priority;

    move-object/from16 v19, v1

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lc/f/a/G;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZIZFFFZZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;Lc/f/a/F;)V

    return-object v21
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/G$a;->a:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget v0, p0, Lc/f/a/G$a;->b:I

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

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/G$a;->q:Lcom/squareup/picasso/Picasso$Priority;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/f/a/G$a;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Lc/f/a/G$a;->e:I

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
