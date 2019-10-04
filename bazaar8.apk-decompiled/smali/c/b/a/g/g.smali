.class public Lc/b/a/g/g;
.super Ljava/lang/Object;
.source "RequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:F

.field public c:Lc/b/a/c/b/p;

.field public d:Lcom/bumptech/glide/Priority;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:I

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:Lc/b/a/c/c;

.field public m:Z

.field public n:Z

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:I

.field public q:Lc/b/a/c/f;

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Landroid/content/res/Resources$Theme;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lc/b/a/g/g;->b:F

    .line 3
    sget-object v0, Lc/b/a/c/b/p;->e:Lc/b/a/c/b/p;

    iput-object v0, p0, Lc/b/a/g/g;->c:Lc/b/a/c/b/p;

    .line 4
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lc/b/a/g/g;->d:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/b/a/g/g;->i:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lc/b/a/g/g;->j:I

    .line 7
    iput v1, p0, Lc/b/a/g/g;->k:I

    .line 8
    invoke-static {}, Lc/b/a/h/a;->a()Lc/b/a/h/a;

    move-result-object v1

    iput-object v1, p0, Lc/b/a/g/g;->l:Lc/b/a/c/c;

    .line 9
    iput-boolean v0, p0, Lc/b/a/g/g;->n:Z

    .line 10
    new-instance v1, Lc/b/a/c/f;

    invoke-direct {v1}, Lc/b/a/c/f;-><init>()V

    iput-object v1, p0, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    .line 11
    new-instance v1, Lc/b/a/i/b;

    invoke-direct {v1}, Lc/b/a/i/b;-><init>()V

    iput-object v1, p0, Lc/b/a/g/g;->r:Ljava/util/Map;

    .line 12
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lc/b/a/g/g;->s:Ljava/lang/Class;

    .line 13
    iput-boolean v0, p0, Lc/b/a/g/g;->y:Z

    return-void
.end method

.method public static a(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lc/b/a/c/b/p;)Lc/b/a/g/g;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/g/g;

    invoke-direct {v0}, Lc/b/a/g/g;-><init>()V

    invoke-virtual {v0, p0}, Lc/b/a/g/g;->a(Lc/b/a/c/b/p;)Lc/b/a/g/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lc/b/a/c/c;)Lc/b/a/g/g;
    .locals 1

    .line 2
    new-instance v0, Lc/b/a/g/g;

    invoke-direct {v0}, Lc/b/a/g/g;-><init>()V

    invoke-virtual {v0, p0}, Lc/b/a/g/g;->a(Lc/b/a/c/c;)Lc/b/a/g/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lc/b/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    .line 3
    new-instance v0, Lc/b/a/g/g;

    invoke-direct {v0}, Lc/b/a/g/g;-><init>()V

    invoke-virtual {v0, p0}, Lc/b/a/g/g;->a(Ljava/lang/Class;)Lc/b/a/g/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->y:Z

    return v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->n:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->m:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-virtual {p0, v0}, Lc/b/a/g/g;->a(I)Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/b/a/g/g;->k:I

    iget v1, p0, Lc/b/a/g/g;->j:I

    invoke-static {v0, v1}, Lc/b/a/i/k;->b(II)Z

    move-result v0

    return v0
.end method

.method public F()Lc/b/a/g/g;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/g/g;->t:Z

    return-object p0
.end method

.method public G()Lc/b/a/g/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lc/b/a/c/d/a/g;

    invoke-direct {v1}, Lc/b/a/c/d/a/g;-><init>()V

    invoke-virtual {p0, v0, v1}, Lc/b/a/g/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public H()Lc/b/a/g/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->e:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lc/b/a/c/d/a/h;

    invoke-direct {v1}, Lc/b/a/c/d/a/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public I()Lc/b/a/g/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lc/b/a/c/d/a/p;

    invoke-direct {v1}, Lc/b/a/c/d/a/p;-><init>()V

    invoke-virtual {p0, v0, v1}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final J()Lc/b/a/g/g;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->t:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lc/b/a/g/g;
    .locals 2

    .line 138
    iget-boolean v0, p0, Lc/b/a/g/g;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lc/b/a/g/g;->v:Z

    .line 141
    invoke-virtual {p0}, Lc/b/a/g/g;->F()Lc/b/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lc/b/a/g/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->a(F)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 3
    iput p1, p0, Lc/b/a/g/g;->b:F

    .line 4
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 5
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lc/b/a/g/g;
    .locals 1

    .line 17
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->a(Landroid/graphics/drawable/Drawable;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    iput-object p1, p0, Lc/b/a/g/g;->g:Landroid/graphics/drawable/Drawable;

    .line 20
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lc/b/a/g/g;->a:I

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lc/b/a/g/g;->h:I

    .line 22
    iget p1, p0, Lc/b/a/g/g;->a:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 23
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Lc/b/a/c/b/p;)Lc/b/a/g/g;
    .locals 1

    .line 7
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->a(Lc/b/a/c/b/p;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/b/p;

    iput-object p1, p0, Lc/b/a/g/g;->c:Lc/b/a/c/b/p;

    .line 10
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 11
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Lc/b/a/c/c;)Lc/b/a/g/g;
    .locals 1

    .line 29
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->a(Lc/b/a/c/c;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/c;

    iput-object p1, p0, Lc/b/a/g/g;->l:Lc/b/a/c/c;

    .line 32
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 33
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Lc/b/a/c/e;Ljava/lang/Object;)Lc/b/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/e<",
            "TT;>;TT;)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    .line 34
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/b/a/g/g;->a(Lc/b/a/c/e;Ljava/lang/Object;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    invoke-virtual {v0, p1, p2}, Lc/b/a/c/f;->a(Lc/b/a/c/e;Ljava/lang/Object;)Lc/b/a/c/f;

    .line 39
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Lc/b/a/c/i;)Lc/b/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, p1, v0}, Lc/b/a/g/g;->a(Lc/b/a/c/i;Z)Lc/b/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/b/a/c/i;Z)Lc/b/a/g/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/b/a/g/g;->a(Lc/b/a/c/i;Z)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    new-instance v0, Lc/b/a/c/d/a/n;

    invoke-direct {v0, p1, p2}, Lc/b/a/c/d/a/n;-><init>(Lc/b/a/c/i;Z)V

    .line 56
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lc/b/a/g/g;->a(Ljava/lang/Class;Lc/b/a/c/i;Z)Lc/b/a/g/g;

    .line 57
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lc/b/a/g/g;->a(Ljava/lang/Class;Lc/b/a/c/i;Z)Lc/b/a/g/g;

    .line 58
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lc/b/a/c/d/a/n;->a()Lc/b/a/c/i;

    invoke-virtual {p0, v1, v0, p2}, Lc/b/a/g/g;->a(Ljava/lang/Class;Lc/b/a/c/i;Z)Lc/b/a/g/g;

    .line 59
    const-class v0, Lc/b/a/c/d/e/c;

    new-instance v1, Lc/b/a/c/d/e/f;

    invoke-direct {v1, p1}, Lc/b/a/c/d/e/f;-><init>(Lc/b/a/c/i;)V

    invoke-virtual {p0, v0, v1, p2}, Lc/b/a/g/g;->a(Ljava/lang/Class;Lc/b/a/c/i;Z)Lc/b/a/g/g;

    .line 60
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Lc/b/a/g/g;)Lc/b/a/g/g;
    .locals 4

    .line 73
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->a(Lc/b/a/g/g;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget v0, p1, Lc/b/a/g/g;->b:F

    iput v0, p0, Lc/b/a/g/g;->b:F

    .line 77
    :cond_1
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-boolean v0, p1, Lc/b/a/g/g;->w:Z

    iput-boolean v0, p0, Lc/b/a/g/g;->w:Z

    .line 79
    :cond_2
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-boolean v0, p1, Lc/b/a/g/g;->z:Z

    iput-boolean v0, p0, Lc/b/a/g/g;->z:Z

    .line 81
    :cond_3
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p1, Lc/b/a/g/g;->c:Lc/b/a/c/b/p;

    iput-object v0, p0, Lc/b/a/g/g;->c:Lc/b/a/c/b/p;

    .line 83
    :cond_4
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p1, Lc/b/a/g/g;->d:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lc/b/a/g/g;->d:Lcom/bumptech/glide/Priority;

    .line 85
    :cond_5
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 86
    iget-object v0, p1, Lc/b/a/g/g;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc/b/a/g/g;->e:Landroid/graphics/drawable/Drawable;

    .line 87
    iput v1, p0, Lc/b/a/g/g;->f:I

    .line 88
    iget v0, p0, Lc/b/a/g/g;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lc/b/a/g/g;->a:I

    .line 89
    :cond_6
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 90
    iget v0, p1, Lc/b/a/g/g;->f:I

    iput v0, p0, Lc/b/a/g/g;->f:I

    .line 91
    iput-object v2, p0, Lc/b/a/g/g;->e:Landroid/graphics/drawable/Drawable;

    .line 92
    iget v0, p0, Lc/b/a/g/g;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lc/b/a/g/g;->a:I

    .line 93
    :cond_7
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    iget-object v0, p1, Lc/b/a/g/g;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc/b/a/g/g;->g:Landroid/graphics/drawable/Drawable;

    .line 95
    iput v1, p0, Lc/b/a/g/g;->h:I

    .line 96
    iget v0, p0, Lc/b/a/g/g;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lc/b/a/g/g;->a:I

    .line 97
    :cond_8
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    iget v0, p1, Lc/b/a/g/g;->h:I

    iput v0, p0, Lc/b/a/g/g;->h:I

    .line 99
    iput-object v2, p0, Lc/b/a/g/g;->g:Landroid/graphics/drawable/Drawable;

    .line 100
    iget v0, p0, Lc/b/a/g/g;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lc/b/a/g/g;->a:I

    .line 101
    :cond_9
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 102
    iget-boolean v0, p1, Lc/b/a/g/g;->i:Z

    iput-boolean v0, p0, Lc/b/a/g/g;->i:Z

    .line 103
    :cond_a
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 104
    iget v0, p1, Lc/b/a/g/g;->k:I

    iput v0, p0, Lc/b/a/g/g;->k:I

    .line 105
    iget v0, p1, Lc/b/a/g/g;->j:I

    iput v0, p0, Lc/b/a/g/g;->j:I

    .line 106
    :cond_b
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 107
    iget-object v0, p1, Lc/b/a/g/g;->l:Lc/b/a/c/c;

    iput-object v0, p0, Lc/b/a/g/g;->l:Lc/b/a/c/c;

    .line 108
    :cond_c
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 109
    iget-object v0, p1, Lc/b/a/g/g;->s:Ljava/lang/Class;

    iput-object v0, p0, Lc/b/a/g/g;->s:Ljava/lang/Class;

    .line 110
    :cond_d
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 111
    iget-object v0, p1, Lc/b/a/g/g;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc/b/a/g/g;->o:Landroid/graphics/drawable/Drawable;

    .line 112
    iput v1, p0, Lc/b/a/g/g;->p:I

    .line 113
    iget v0, p0, Lc/b/a/g/g;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lc/b/a/g/g;->a:I

    .line 114
    :cond_e
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 115
    iget v0, p1, Lc/b/a/g/g;->p:I

    iput v0, p0, Lc/b/a/g/g;->p:I

    .line 116
    iput-object v2, p0, Lc/b/a/g/g;->o:Landroid/graphics/drawable/Drawable;

    .line 117
    iget v0, p0, Lc/b/a/g/g;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lc/b/a/g/g;->a:I

    .line 118
    :cond_f
    iget v0, p1, Lc/b/a/g/g;->a:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 119
    iget-object v0, p1, Lc/b/a/g/g;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lc/b/a/g/g;->u:Landroid/content/res/Resources$Theme;

    .line 120
    :cond_10
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 121
    iget-boolean v0, p1, Lc/b/a/g/g;->n:Z

    iput-boolean v0, p0, Lc/b/a/g/g;->n:Z

    .line 122
    :cond_11
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 123
    iget-boolean v0, p1, Lc/b/a/g/g;->m:Z

    iput-boolean v0, p0, Lc/b/a/g/g;->m:Z

    .line 124
    :cond_12
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 125
    iget-object v0, p0, Lc/b/a/g/g;->r:Ljava/util/Map;

    iget-object v2, p1, Lc/b/a/g/g;->r:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    iget-boolean v0, p1, Lc/b/a/g/g;->y:Z

    iput-boolean v0, p0, Lc/b/a/g/g;->y:Z

    .line 127
    :cond_13
    iget v0, p1, Lc/b/a/g/g;->a:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lc/b/a/g/g;->a(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 128
    iget-boolean v0, p1, Lc/b/a/g/g;->x:Z

    iput-boolean v0, p0, Lc/b/a/g/g;->x:Z

    .line 129
    :cond_14
    iget-boolean v0, p0, Lc/b/a/g/g;->n:Z

    if-nez v0, :cond_15

    .line 130
    iget-object v0, p0, Lc/b/a/g/g;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 131
    iget v0, p0, Lc/b/a/g/g;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lc/b/a/g/g;->a:I

    .line 132
    iput-boolean v1, p0, Lc/b/a/g/g;->m:Z

    .line 133
    iget v0, p0, Lc/b/a/g/g;->a:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lc/b/a/g/g;->a:I

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lc/b/a/g/g;->y:Z

    .line 135
    :cond_15
    iget v0, p0, Lc/b/a/g/g;->a:I

    iget v1, p1, Lc/b/a/g/g;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lc/b/a/g/g;->a:I

    .line 136
    iget-object v0, p0, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    iget-object p1, p1, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    invoke-virtual {v0, p1}, Lc/b/a/c/f;->a(Lc/b/a/c/f;)V

    .line 137
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lc/b/a/g/g;
    .locals 1

    .line 12
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/Priority;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lc/b/a/g/g;->d:Lcom/bumptech/glide/Priority;

    .line 15
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 16
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/DecodeFormat;)Lc/b/a/g/g;
    .locals 2

    .line 45
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lc/b/a/c/d/a/k;->a:Lc/b/a/c/e;

    invoke-virtual {p0, v0, p1}, Lc/b/a/g/g;->a(Lc/b/a/c/e;Ljava/lang/Object;)Lc/b/a/g/g;

    move-result-object v0

    sget-object v1, Lc/b/a/c/d/e/i;->a:Lc/b/a/c/e;

    .line 47
    invoke-virtual {v0, v1, p1}, Lc/b/a/g/g;->a(Lc/b/a/c/e;Ljava/lang/Object;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lc/b/a/g/g;
    .locals 1

    .line 48
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->h:Lc/b/a/c/e;

    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lc/b/a/g/g;->a(Lc/b/a/c/e;Ljava/lang/Object;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;Z)Lc/b/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;Z)Lc/b/a/g/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2}, Lc/b/a/g/g;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/b/a/g/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p1, Lc/b/a/g/g;->y:Z

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Lc/b/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->a(Ljava/lang/Class;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lc/b/a/g/g;->s:Ljava/lang/Class;

    .line 43
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 44
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Lc/b/a/c/i;Z)Lc/b/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lc/b/a/c/i<",
            "TT;>;Z)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc/b/a/g/g;->a(Ljava/lang/Class;Lc/b/a/c/i;Z)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p2}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lc/b/a/g/g;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lc/b/a/g/g;->a:I

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lc/b/a/g/g;->n:Z

    .line 68
    iget p2, p0, Lc/b/a/g/g;->a:I

    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    iput p2, p0, Lc/b/a/g/g;->a:I

    const/4 p2, 0x0

    .line 69
    iput-boolean p2, p0, Lc/b/a/g/g;->y:Z

    if-eqz p3, :cond_1

    .line 70
    iget p2, p0, Lc/b/a/g/g;->a:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, p0, Lc/b/a/g/g;->a:I

    .line 71
    iput-boolean p1, p0, Lc/b/a/g/g;->m:Z

    .line 72
    :cond_1
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public a(Z)Lc/b/a/g/g;
    .locals 2

    .line 24
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lc/b/a/g/g;->a(Z)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 26
    iput-boolean p1, p0, Lc/b/a/g/g;->i:Z

    .line 27
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 28
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public final a(I)Z
    .locals 1

    .line 142
    iget v0, p0, Lc/b/a/g/g;->a:I

    invoke-static {v0, p1}, Lc/b/a/g/g;->a(II)Z

    move-result p1

    return p1
.end method

.method public final b()Lc/b/a/c/b/p;
    .locals 1

    .line 26
    iget-object v0, p0, Lc/b/a/g/g;->c:Lc/b/a/c/b/p;

    return-object v0
.end method

.method public b(I)Lc/b/a/g/g;
    .locals 1

    .line 9
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->b(I)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    iput p1, p0, Lc/b/a/g/g;->h:I

    .line 12
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lc/b/a/g/g;->a:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lc/b/a/g/g;->g:Landroid/graphics/drawable/Drawable;

    .line 14
    iget p1, p0, Lc/b/a/g/g;->a:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 15
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public b(II)Lc/b/a/g/g;
    .locals 1

    .line 16
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/b/a/g/g;->b(II)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    iput p1, p0, Lc/b/a/g/g;->k:I

    .line 19
    iput p2, p0, Lc/b/a/g/g;->j:I

    .line 20
    iget p1, p0, Lc/b/a/g/g;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 21
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public final b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/b/a/g/g;->b(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lc/b/a/g/g;

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p2, p1}, Lc/b/a/g/g;->a(Lc/b/a/c/i;Z)Lc/b/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lc/b/a/g/g;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/g/g;->b(Z)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iput-boolean p1, p0, Lc/b/a/g/g;->z:Z

    .line 7
    iget p1, p0, Lc/b/a/g/g;->a:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lc/b/a/g/g;->a:I

    .line 8
    invoke-virtual {p0}, Lc/b/a/g/g;->J()Lc/b/a/g/g;

    return-object p0
.end method

.method public final c()I
    .locals 1

    .line 5
    iget v0, p0, Lc/b/a/g/g;->f:I

    return v0
.end method

.method public final c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/b/a/g/g;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/b/a/g/g;->c(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lc/b/a/c/i;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lc/b/a/g/g;

    .line 4
    invoke-virtual {p0, p2}, Lc/b/a/g/g;->a(Lc/b/a/c/i;)Lc/b/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lc/b/a/g/g;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/g/g;

    .line 3
    new-instance v1, Lc/b/a/c/f;

    invoke-direct {v1}, Lc/b/a/c/f;-><init>()V

    iput-object v1, v0, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    .line 4
    iget-object v1, v0, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    iget-object v2, p0, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    invoke-virtual {v1, v2}, Lc/b/a/c/f;->a(Lc/b/a/c/f;)V

    .line 5
    new-instance v1, Lc/b/a/i/b;

    invoke-direct {v1}, Lc/b/a/i/b;-><init>()V

    iput-object v1, v0, Lc/b/a/g/g;->r:Ljava/util/Map;

    .line 6
    iget-object v1, v0, Lc/b/a/g/g;->r:Ljava/util/Map;

    iget-object v2, p0, Lc/b/a/g/g;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lc/b/a/g/g;->t:Z

    .line 8
    iput-boolean v1, v0, Lc/b/a/g/g;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/g/g;->clone()Lc/b/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/g;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/g;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lc/b/a/g/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/b/a/g/g;

    .line 3
    iget v0, p1, Lc/b/a/g/g;->b:F

    iget v2, p0, Lc/b/a/g/g;->b:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lc/b/a/g/g;->f:I

    iget v2, p1, Lc/b/a/g/g;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lc/b/a/g/g;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v2}, Lc/b/a/i/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/b/a/g/g;->h:I

    iget v2, p1, Lc/b/a/g/g;->h:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lc/b/a/g/g;->g:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v2}, Lc/b/a/i/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/b/a/g/g;->p:I

    iget v2, p1, Lc/b/a/g/g;->p:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lc/b/a/g/g;->o:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v2}, Lc/b/a/i/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/b/a/g/g;->i:Z

    iget-boolean v2, p1, Lc/b/a/g/g;->i:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lc/b/a/g/g;->j:I

    iget v2, p1, Lc/b/a/g/g;->j:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lc/b/a/g/g;->k:I

    iget v2, p1, Lc/b/a/g/g;->k:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lc/b/a/g/g;->m:Z

    iget-boolean v2, p1, Lc/b/a/g/g;->m:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lc/b/a/g/g;->n:Z

    iget-boolean v2, p1, Lc/b/a/g/g;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lc/b/a/g/g;->w:Z

    iget-boolean v2, p1, Lc/b/a/g/g;->w:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lc/b/a/g/g;->x:Z

    iget-boolean v2, p1, Lc/b/a/g/g;->x:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->c:Lc/b/a/c/b/p;

    iget-object v2, p1, Lc/b/a/g/g;->c:Lc/b/a/c/b/p;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->d:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lc/b/a/g/g;->d:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    iget-object v2, p1, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    .line 8
    invoke-virtual {v0, v2}, Lc/b/a/c/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->r:Ljava/util/Map;

    iget-object v2, p1, Lc/b/a/g/g;->r:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->s:Ljava/lang/Class;

    iget-object v2, p1, Lc/b/a/g/g;->s:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->l:Lc/b/a/c/c;

    iget-object v2, p1, Lc/b/a/g/g;->l:Lc/b/a/c/c;

    .line 11
    invoke-static {v0, v2}, Lc/b/a/i/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/g/g;->u:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lc/b/a/g/g;->u:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {v0, p1}, Lc/b/a/i/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/g/g;->p:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->x:Z

    return v0
.end method

.method public final h()Lc/b/a/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lc/b/a/g/g;->b:F

    invoke-static {v0}, Lc/b/a/i/k;->a(F)I

    move-result v0

    .line 2
    iget v1, p0, Lc/b/a/g/g;->f:I

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lc/b/a/g/g;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 4
    iget v1, p0, Lc/b/a/g/g;->h:I

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lc/b/a/g/g;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 6
    iget v1, p0, Lc/b/a/g/g;->p:I

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(II)I

    move-result v0

    .line 7
    iget-object v1, p0, Lc/b/a/g/g;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 8
    iget-boolean v1, p0, Lc/b/a/g/g;->i:Z

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(ZI)I

    move-result v0

    .line 9
    iget v1, p0, Lc/b/a/g/g;->j:I

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(II)I

    move-result v0

    .line 10
    iget v1, p0, Lc/b/a/g/g;->k:I

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(II)I

    move-result v0

    .line 11
    iget-boolean v1, p0, Lc/b/a/g/g;->m:Z

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(ZI)I

    move-result v0

    .line 12
    iget-boolean v1, p0, Lc/b/a/g/g;->n:Z

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(ZI)I

    move-result v0

    .line 13
    iget-boolean v1, p0, Lc/b/a/g/g;->w:Z

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(ZI)I

    move-result v0

    .line 14
    iget-boolean v1, p0, Lc/b/a/g/g;->x:Z

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(ZI)I

    move-result v0

    .line 15
    iget-object v1, p0, Lc/b/a/g/g;->c:Lc/b/a/c/b/p;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 16
    iget-object v1, p0, Lc/b/a/g/g;->d:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lc/b/a/g/g;->q:Lc/b/a/c/f;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lc/b/a/g/g;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Lc/b/a/g/g;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lc/b/a/g/g;->l:Lc/b/a/c/c;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object v1, p0, Lc/b/a/g/g;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lc/b/a/i/k;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/g/g;->j:I

    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/g/g;->k:I

    return v0
.end method

.method public final k()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/g;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/g/g;->h:I

    return v0
.end method

.method public final q()Lcom/bumptech/glide/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/g;->d:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final r()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/g/g;->s:Ljava/lang/Class;

    return-object v0
.end method

.method public final s()Lc/b/a/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/g;->l:Lc/b/a/c/c;

    return-object v0
.end method

.method public final t()F
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/g/g;->b:F

    return v0
.end method

.method public final u()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/g;->u:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final v()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/i<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/g/g;->r:Ljava/util/Map;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->z:Z

    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->w:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/g/g;->i:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lc/b/a/g/g;->a(I)Z

    move-result v0

    return v0
.end method
