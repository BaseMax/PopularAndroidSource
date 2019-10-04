.class public Lc/b/a/c/d/e/e;
.super Lc/b/a/c/d/c/b;
.source "GifDrawableResource.java"

# interfaces
.implements Lc/b/a/c/b/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/c/d/c/b<",
        "Lc/b/a/c/d/e/c;",
        ">;",
        "Lc/b/a/c/b/y;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/b/a/c/d/e/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/c/d/c/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc/b/a/c/d/e/c;

    invoke-virtual {v0}, Lc/b/a/c/d/e/c;->stop()V

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc/b/a/c/d/e/c;

    invoke-virtual {v0}, Lc/b/a/c/d/e/c;->j()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc/b/a/c/d/e/c;

    invoke-virtual {v0}, Lc/b/a/c/d/e/c;->i()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lc/b/a/c/d/e/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lc/b/a/c/d/e/c;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc/b/a/c/d/e/c;

    invoke-virtual {v0}, Lc/b/a/c/d/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
