.class public final Lb/i/c/a/g;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "WrappedDrawableState.java"


# instance fields
.field public a:I

.field public b:Landroid/graphics/drawable/Drawable$ConstantState;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Lb/i/c/a/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/i/c/a/g;->c:Landroid/content/res/ColorStateList;

    .line 3
    sget-object v0, Lb/i/c/a/e;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lb/i/c/a/g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    .line 4
    iget v0, p1, Lb/i/c/a/g;->a:I

    iput v0, p0, Lb/i/c/a/g;->a:I

    .line 5
    iget-object v0, p1, Lb/i/c/a/g;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Lb/i/c/a/g;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 6
    iget-object v0, p1, Lb/i/c/a/g;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lb/i/c/a/g;->c:Landroid/content/res/ColorStateList;

    .line 7
    iget-object p1, p1, Lb/i/c/a/g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lb/i/c/a/g;->d:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/c/a/g;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    iget v0, p0, Lb/i/c/a/g;->a:I

    iget-object v1, p0, Lb/i/c/a/g;->b:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lb/i/c/a/g;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lb/i/c/a/f;

    invoke-direct {v0, p0, p1}, Lb/i/c/a/f;-><init>(Lb/i/c/a/g;Landroid/content/res/Resources;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lb/i/c/a/e;

    invoke-direct {v0, p0, p1}, Lb/i/c/a/e;-><init>(Lb/i/c/a/g;Landroid/content/res/Resources;)V

    return-object v0
.end method
