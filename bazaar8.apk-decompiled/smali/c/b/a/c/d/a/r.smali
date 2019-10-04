.class public final Lc/b/a/c/d/a/r;
.super Ljava/lang/Object;
.source "LazyBitmapDrawableResource.java"

# interfaces
.implements Lc/b/a/c/b/D;
.implements Lc/b/a/c/b/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/b/D<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lc/b/a/c/b/y;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Lc/b/a/c/b/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lc/b/a/c/b/D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lc/b/a/c/d/a/r;->a:Landroid/content/res/Resources;

    .line 3
    invoke-static {p2}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lc/b/a/c/b/D;

    iput-object p2, p0, Lc/b/a/c/d/a/r;->b:Lc/b/a/c/b/D;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lc/b/a/c/b/D;)Lc/b/a/c/b/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lc/b/a/c/b/D<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lc/b/a/c/d/a/r;

    invoke-direct {v0, p0, p1}, Lc/b/a/c/d/a/r;-><init>(Landroid/content/res/Resources;Lc/b/a/c/b/D;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/a/r;->b:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->a()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/a/r;->b:Lc/b/a/c/b/D;

    invoke-interface {v0}, Lc/b/a/c/b/D;->b()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/a/r;->b:Lc/b/a/c/b/D;

    instance-of v1, v0, Lc/b/a/c/b/y;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lc/b/a/c/b/y;

    invoke-interface {v0}, Lc/b/a/c/b/y;->d()V

    :cond_0
    return-void
.end method

.method public get()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lc/b/a/c/d/a/r;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lc/b/a/c/d/a/r;->b:Lc/b/a/c/b/D;

    invoke-interface {v2}, Lc/b/a/c/b/D;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/d/a/r;->get()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method
