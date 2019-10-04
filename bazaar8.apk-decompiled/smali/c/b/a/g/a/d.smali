.class public abstract Lc/b/a/g/a/d;
.super Lc/b/a/g/a/i;
.source "ImageViewTarget.java"

# interfaces
.implements Lc/b/a/g/b/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/g/a/i<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lc/b/a/g/b/b$a;"
    }
.end annotation


# instance fields
.field public i:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/g/a/i;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lc/b/a/g/a/d;->i:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lc/b/a/g/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lc/b/a/g/a/d;->d(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/b/a/g/a/d;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lc/b/a/g/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lc/b/a/g/b/b<",
            "-TZ;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1, p0}, Lc/b/a/g/b/b;->a(Ljava/lang/Object;Lc/b/a/g/b/b$a;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lc/b/a/g/a/d;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc/b/a/g/a/d;->d(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/b/a/g/a/d;->i:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lc/b/a/g/a/i;->b(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lc/b/a/g/a/d;->d(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/b/a/g/a/d;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .line 6
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lc/b/a/g/a/d;->i:Landroid/graphics/drawable/Animatable;

    .line 8
    iget-object p1, p0, Lc/b/a/g/a/d;->i:Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lc/b/a/g/a/d;->i:Landroid/graphics/drawable/Animatable;

    :goto_0
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lc/b/a/g/a/i;->c(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lc/b/a/g/a/d;->i:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lc/b/a/g/a/d;->d(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p1}, Lc/b/a/g/a/d;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract c(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a/i;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lc/b/a/g/a/d;->c(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/b/a/g/a/d;->b(Ljava/lang/Object;)V

    return-void
.end method
