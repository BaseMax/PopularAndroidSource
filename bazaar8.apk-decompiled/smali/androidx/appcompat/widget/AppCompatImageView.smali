.class public Landroidx/appcompat/widget/AppCompatImageView;
.super Landroid/widget/ImageView;
.source "AppCompatImageView.java"

# interfaces
.implements Lb/i/k/u;
.implements Lb/i/l/m;


# instance fields
.field public final a:Lb/b/g/i;

.field public final b:Lb/b/g/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lb/b/g/ma;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lb/b/g/i;

    invoke-direct {p1, p0}, Lb/b/g/i;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Lb/b/g/i;

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Lb/b/g/i;

    invoke-virtual {p1, p2, p3}, Lb/b/g/i;->a(Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lb/b/g/o;

    invoke-direct {p1, p0}, Lb/b/g/o;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    invoke-virtual {p1, p2, p3}, Lb/b/g/o;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/b/g/i;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lb/b/g/o;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/g/i;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/g/i;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/g/o;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/g/o;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    invoke-virtual {v0}, Lb/b/g/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/b/g/i;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lb/b/g/i;->a(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/b/g/o;->a()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/b/g/o;->a()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/b/g/o;->a(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/b/g/o;->a()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/b/g/i;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->a:Lb/b/g/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/b/g/i;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/b/g/o;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->b:Lb/b/g/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/b/g/o;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method