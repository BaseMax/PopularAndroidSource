.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"


# static fields
.field public static final ICON_GRAVITY_START:I = 0x1

.field public static final ICON_GRAVITY_TEXT_START:I = 0x2


# instance fields
.field private final a:Lcom/google/android/material/button/b;

.field private b:I

.field private c:Landroid/graphics/PorterDuff$Mode;

.field private d:Landroid/content/res/ColorStateList;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 133
    sget v0, Lcom/google/android/material/a$b;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    sget-object v2, Lcom/google/android/material/a$k;->MaterialButton:[I

    sget v4, Lcom/google/android/material/a$j;->Widget_MaterialComponents_Button:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/k;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 147
    sget p2, Lcom/google/android/material/a$k;->MaterialButton_iconPadding:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/button/MaterialButton;->b:I

    .line 148
    sget p2, Lcom/google/android/material/a$k;->MaterialButton_iconTintMode:I

    const/4 p3, -0x1

    .line 150
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 149
    invoke-static {p2, p3}, Lcom/google/android/material/internal/l;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButton;->c:Landroid/graphics/PorterDuff$Mode;

    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/a$k;->MaterialButton_iconTint:I

    .line 153
    invoke-static {p2, p1, p3}, Lcom/google/android/material/f/a;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButton;->d:Landroid/content/res/ColorStateList;

    .line 155
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/a$k;->MaterialButton_icon:I

    invoke-static {p2, p1, p3}, Lcom/google/android/material/f/a;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    .line 156
    sget p2, Lcom/google/android/material/a$k;->MaterialButton_iconGravity:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/button/MaterialButton;->h:I

    .line 158
    sget p2, Lcom/google/android/material/a$k;->MaterialButton_iconSize:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/button/MaterialButton;->f:I

    .line 161
    new-instance p2, Lcom/google/android/material/button/b;

    invoke-direct {p2, p0}, Lcom/google/android/material/button/b;-><init>(Lcom/google/android/material/button/MaterialButton;)V

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 162
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    invoke-virtual {p2, p1}, Lcom/google/android/material/button/b;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 164
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->b:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 167
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 539
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 540
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    .line 541
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->d:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 542
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->c:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 546
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->f:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 547
    :goto_0
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->f:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 548
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->g:I

    const/4 v4, 0x0

    add-int/2addr v0, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    if-eqz v0, :cond_0

    .line 6158
    iget-boolean v0, v0, Lcom/google/android/material/button/b;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 717
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 5377
    iget v0, v0, Lcom/google/android/material/button/b;->g:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .locals 1

    .line 729
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->h:I

    return v0
.end method

.method public getIconPadding()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->b:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->f:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 591
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 3308
    iget-object v0, v0, Lcom/google/android/material/button/b;->l:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 633
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 3324
    iget-object v0, v0, Lcom/google/android/material/button/b;->k:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 676
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 3336
    iget v0, v0, Lcom/google/android/material/button/b;->h:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 207
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 1221
    iget-object v0, v0, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    return-object v0

    .line 213
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 1236
    iget-object v0, v0, Lcom/google/android/material/button/b;->i:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 250
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 172
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    if-eqz p1, :cond_0

    .line 1163
    iget-object v1, v0, Lcom/google/android/material/button/b;->k:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/material/button/b;->h:I

    if-lez v1, :cond_0

    .line 1164
    iget-object v1, v0, Lcom/google/android/material/button/b;->n:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1165
    iget-object v1, v0, Lcom/google/android/material/button/b;->o:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/google/android/material/button/b;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Lcom/google/android/material/button/b;->h:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Lcom/google/android/material/button/b;->c:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/google/android/material/button/b;->n:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, v0, Lcom/google/android/material/button/b;->h:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, v0, Lcom/google/android/material/button/b;->e:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/material/button/b;->n:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, v0, Lcom/google/android/material/button/b;->h:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/google/android/material/button/b;->d:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/google/android/material/button/b;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, v0, Lcom/google/android/material/button/b;->h:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/google/android/material/button/b;->f:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1172
    iget v1, v0, Lcom/google/android/material/button/b;->g:I

    int-to-float v1, v1

    iget v2, v0, Lcom/google/android/material/button/b;->h:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 1173
    iget-object v2, v0, Lcom/google/android/material/button/b;->o:Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/google/android/material/button/b;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 321
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 323
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    if-eqz p1, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 2282
    iget-object p2, p1, Lcom/google/android/material/button/b;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    .line 2283
    iget-object p2, p1, Lcom/google/android/material/button/b;->v:Landroid/graphics/drawable/GradientDrawable;

    iget p3, p1, Lcom/google/android/material/button/b;->c:I

    iget v0, p1, Lcom/google/android/material/button/b;->e:I

    iget v1, p1, Lcom/google/android/material/button/b;->d:I

    sub-int/2addr p4, v1

    iget p1, p1, Lcom/google/android/material/button/b;->f:I

    sub-int/2addr p5, p1

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 330
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->onMeasure(II)V

    .line 331
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->h:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 336
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 337
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->f:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, p1

    .line 341
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->b:I

    sub-int/2addr v1, p1

    .line 344
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    div-int/2addr v1, p2

    .line 2358
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    neg-int v1, v1

    .line 351
    :cond_3
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->g:I

    if-eq p1, v1, :cond_4

    .line 352
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->g:I

    .line 353
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 278
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 1288
    sget-boolean v1, Lcom/google/android/material/button/b;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 1289
    iget-object v0, v0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void

    .line 1290
    :cond_0
    sget-boolean v1, Lcom/google/android/material/button/b;->a:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 1291
    iget-object v0, v0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    return-void

    .line 283
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 303
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    const/4 v1, 0x1

    .line 2150
    iput-boolean v1, v0, Lcom/google/android/material/button/b;->w:Z

    .line 2153
    iget-object v1, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v0, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2154
    iget-object v1, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, v0, Lcom/google/android/material/button/b;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .line 315
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 298
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 6

    .line 688
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 3351
    iget v1, v0, Lcom/google/android/material/button/b;->g:I

    if-eq v1, p1, :cond_4

    .line 3352
    iput p1, v0, Lcom/google/android/material/button/b;->g:I

    .line 3353
    sget-boolean v1, Lcom/google/android/material/button/b;->a:Z

    const v2, 0x3727c5ac    # 1.0E-5f

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/material/button/b;->u:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/material/button/b;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    .line 3358
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v1, v3, :cond_2

    .line 3394
    sget-boolean v1, Lcom/google/android/material/button/b;->a:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3395
    iget-object v1, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 3396
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 3397
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 3398
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    int-to-float v5, p1

    add-float/2addr v5, v2

    .line 3359
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 4382
    sget-boolean v1, Lcom/google/android/material/button/b;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4383
    iget-object v1, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 4384
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 4385
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x1

    .line 4386
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 3360
    :cond_1
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3362
    :cond_2
    iget-object v1, v0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    add-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3363
    iget-object v1, v0, Lcom/google/android/material/button/b;->u:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3364
    iget-object v0, v0, Lcom/google/android/material/button/b;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void

    .line 3365
    :cond_3
    sget-boolean v1, Lcom/google/android/material/button/b;->a:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/material/button/b;->r:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_4

    .line 3368
    iget-object v1, v0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    add-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3369
    iget-object v1, v0, Lcom/google/android/material/button/b;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3371
    iget-object p1, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    :cond_4
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    .line 702
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 440
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    .line 441
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()V

    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 0

    .line 740
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->h:I

    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 381
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->b:I

    if-eq v0, p1, :cond_0

    .line 382
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->b:I

    .line 383
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 458
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 411
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->f:I

    if-eq v0, p1, :cond_0

    .line 412
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->f:I

    .line 413
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()V

    :cond_0
    return-void

    .line 408
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iconSize cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 483
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->d:Landroid/content/res/ColorStateList;

    .line 484
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->c:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 521
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->c:Landroid/graphics/PorterDuff$Mode;

    .line 522
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 370
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 563
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 3296
    iget-object v1, v0, Lcom/google/android/material/button/b;->l:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 3297
    iput-object p1, v0, Lcom/google/android/material/button/b;->l:Landroid/content/res/ColorStateList;

    .line 3298
    sget-boolean v1, Lcom/google/android/material/button/b;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 3299
    iget-object v0, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 3300
    :cond_0
    sget-boolean v1, Lcom/google/android/material/button/b;->a:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/material/button/b;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 3301
    iget-object v0, v0, Lcom/google/android/material/button/b;->s:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 577
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 604
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 3312
    iget-object v1, v0, Lcom/google/android/material/button/b;->k:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 3313
    iput-object p1, v0, Lcom/google/android/material/button/b;->k:Landroid/content/res/ColorStateList;

    .line 3314
    iget-object v1, v0, Lcom/google/android/material/button/b;->m:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, v0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 3316
    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 3314
    :cond_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3318
    invoke-virtual {v0}, Lcom/google/android/material/button/b;->b()V

    :cond_1
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .line 619
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .line 646
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 3328
    iget v1, v0, Lcom/google/android/material/button/b;->h:I

    if-eq v1, p1, :cond_0

    .line 3329
    iput p1, v0, Lcom/google/android/material/button/b;->h:I

    .line 3330
    iget-object v1, v0, Lcom/google/android/material/button/b;->m:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3331
    invoke-virtual {v0}, Lcom/google/android/material/button/b;->b()V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 661
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 188
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 1210
    iget-object v1, v0, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 1211
    iput-object p1, v0, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    .line 1212
    sget-boolean p1, Lcom/google/android/material/button/b;->a:Z

    if-eqz p1, :cond_0

    .line 1213
    invoke-virtual {v0}, Lcom/google/android/material/button/b;->a()V

    return-void

    .line 1214
    :cond_0
    iget-object p1, v0, Lcom/google/android/material/button/b;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1215
    iget-object p1, v0, Lcom/google/android/material/button/b;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    if-eqz v0, :cond_3

    .line 193
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 226
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    .line 1225
    iget-object v1, v0, Lcom/google/android/material/button/b;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    .line 1226
    iput-object p1, v0, Lcom/google/android/material/button/b;->i:Landroid/graphics/PorterDuff$Mode;

    .line 1227
    sget-boolean p1, Lcom/google/android/material/button/b;->a:Z

    if-eqz p1, :cond_0

    .line 1228
    invoke-virtual {v0}, Lcom/google/android/material/button/b;->a()V

    return-void

    .line 1229
    :cond_0
    iget-object p1, v0, Lcom/google/android/material/button/b;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/google/android/material/button/b;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    .line 1230
    iget-object p1, v0, Lcom/google/android/material/button/b;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/google/android/material/button/b;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/b;

    if-eqz v0, :cond_3

    .line 231
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    return-void
.end method
