.class public abstract Lc/b/a/c/d/c/b;
.super Ljava/lang/Object;
.source "DrawableResource.java"

# interfaces
.implements Lc/b/a/c/b/D;
.implements Lc/b/a/c/b/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/b/D<",
        "TT;>;",
        "Lc/b/a/c/b/y;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lc/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lc/b/a/c/d/e/c;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lc/b/a/c/d/e/c;

    invoke-virtual {v0}, Lc/b/a/c/d/e/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final get()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/b/a/c/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/d/c/b;->get()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
