.class public abstract Lc/e/a/b/d/c/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I


# virtual methods
.method public final a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 1
    invoke-static {p2}, Lc/e/a/b/d/d/c;->a(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, v0, p3, p1, p2}, Lc/e/a/b/d/c/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lc/e/a/b/g/c/d;Z)V
    .locals 0

    .line 4
    iget p2, p0, Lc/e/a/b/d/c/a;->a:I

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p3, p2, p2}, Lc/e/a/b/d/c/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method public abstract a(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method
