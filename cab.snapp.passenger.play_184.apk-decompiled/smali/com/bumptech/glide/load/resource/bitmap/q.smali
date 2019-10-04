.class public final Lcom/bumptech/glide/load/resource/bitmap/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/r;
.implements Lcom/bumptech/glide/load/b/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/r;",
        "Lcom/bumptech/glide/load/b/v<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/bumptech/glide/load/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/b/v<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Landroid/content/res/Resources;

    .line 62
    invoke-static {p2}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/v;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->b:Lcom/bumptech/glide/load/b/v;

    return-void
.end method

.method public static obtain(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/bumptech/glide/load/b/v<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/b/v<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/v;)V

    return-object v0
.end method

.method public static obtain(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/resource/bitmap/q;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    invoke-static {p0}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/c;->getBitmapPool()Lcom/bumptech/glide/load/b/a/e;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/d;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/resource/bitmap/d;

    move-result-object p0

    .line 33
    invoke-static {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/q;->obtain(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/v;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/q;

    return-object p0
.end method

.method public static obtain(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/resource/bitmap/q;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/d;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/resource/bitmap/d;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/q;->obtain(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/v;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/q;

    return-object p0
.end method


# virtual methods
.method public final get()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .line 74
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->b:Lcom/bumptech/glide/load/b/v;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/v;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/q;->get()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 68
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->b:Lcom/bumptech/glide/load/b/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/v;->getSize()I

    move-result v0

    return v0
.end method

.method public final initialize()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->b:Lcom/bumptech/glide/load/b/v;

    instance-of v1, v0, Lcom/bumptech/glide/load/b/r;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lcom/bumptech/glide/load/b/r;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/r;->initialize()V

    :cond_0
    return-void
.end method

.method public final recycle()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->b:Lcom/bumptech/glide/load/b/v;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/v;->recycle()V

    return-void
.end method
