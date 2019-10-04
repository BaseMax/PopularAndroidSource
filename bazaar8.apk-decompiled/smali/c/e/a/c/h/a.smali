.class public Lc/e/a/c/h/a;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Lc/e/a/c/h/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/c/h/a$a;
    }
.end annotation


# static fields
.field public static final d:Landroid/graphics/Rect;

.field public static final e:[I


# instance fields
.field public f:Lc/e/a/c/h/b;

.field public g:Landroid/graphics/drawable/RippleDrawable;

.field public h:Landroid/view/View$OnClickListener;

.field public i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public final o:Lc/e/a/c/h/a$a;

.field public final p:Landroid/graphics/Rect;

.field public final q:Landroid/graphics/RectF;

.field public final r:Lb/i/b/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lc/e/a/c/h/a;->d:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a1

    aput v2, v0, v1

    sput-object v0, Lc/e/a/c/h/a;->e:[I

    return-void
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/c/h/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/c/h/a;->q:Landroid/graphics/RectF;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    iget-object v1, p0, Lc/e/a/c/h/a;->q:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lc/e/a/c/h/b;->a(Landroid/graphics/RectF;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-direct {p0}, Lc/e/a/c/h/a;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/e/a/c/h/a;->p:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object v0, p0, Lc/e/a/c/h/a;->p:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextAppearance()Lc/e/a/c/o/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->y()Lc/e/a/c/o/b;

    throw v1
.end method

.method private setCloseIconFocused(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/h/a;->n:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lc/e/a/c/h/a;->n:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/h/a;->m:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lc/e/a/c/h/a;->m:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/h/a;->l:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lc/e/a/c/h/a;->l:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setFocusedVirtualView(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/h/a;->k:I

    if-eq v0, p1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lc/e/a/c/h/a;->setCloseIconFocused(Z)V

    .line 3
    :cond_0
    iput p1, p0, Lc/e/a/c/h/a;->k:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lc/e/a/c/h/a;->setCloseIconFocused(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 19
    iget v0, p0, Lc/e/a/c/h/a;->k:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, v0}, Lc/e/a/c/h/a;->setFocusedVirtualView(I)V

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/c/h/b;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lc/e/a/c/h/b;->a(Lc/e/a/c/h/b$a;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const-string v0, "Unable to send Accessibility Exit event"

    const-string v1, "Chip"

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ne p1, v3, :cond_0

    .line 3
    :try_start_0
    const-class p1, Lb/k/b/c;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "p"

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    iget-object v4, p0, Lc/e/a/c/h/a;->o:Lc/e/a/c/h/a$a;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v4, -0x80000000

    if-eq p1, v4, :cond_0

    .line 6
    const-class p1, Lb/k/b/c;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "i"

    .line 7
    :try_start_2
    invoke-virtual {p1, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 9
    iget-object v5, p0, Lc/e/a/c/h/a;->o:Lc/e/a/c/h/a$a;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {p1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 10
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 12
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p1

    .line 13
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v2
.end method

.method public final a(Z)Z
    .locals 3

    .line 14
    invoke-virtual {p0}, Lc/e/a/c/h/a;->a()V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 15
    iget p1, p0, Lc/e/a/c/h/a;->k:I

    if-ne p1, v1, :cond_1

    .line 16
    invoke-direct {p0, v2}, Lc/e/a/c/h/a;->setFocusedVirtualView(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget p1, p0, Lc/e/a/c/h/a;->k:I

    if-nez p1, :cond_1

    .line 18
    invoke-direct {p0, v1}, Lc/e/a/c/h/a;->setFocusedVirtualView(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Lc/e/a/c/h/b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lc/e/a/c/h/b;->a(Lc/e/a/c/h/b$a;)V

    throw v0
.end method

.method public final b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->l()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    throw v0
.end method

.method public c()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 2
    iget-object v1, p0, Lc/e/a/c/h/a;->h:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lc/e/a/c/h/a;->o:Lc/e/a/c/h/a$a;

    invoke-virtual {v3, v0, v2}, Lb/k/b/c;->c(II)Z

    return v1
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/h/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/h/a;->o:Lc/e/a/c/h/a$a;

    .line 2
    invoke-virtual {v0, p1}, Lb/k/b/c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->o:Lc/e/a/c/h/a$a;

    invoke-virtual {v0, p1}, Lb/k/b/c;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->C()Z

    const/4 v0, 0x0

    throw v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->a()Landroid/graphics/drawable/Drawable;

    throw v1
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->b()Landroid/content/res/ColorStateList;

    throw v1
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->c()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->d()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->e()Landroid/graphics/drawable/Drawable;

    throw v1
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->f()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->g()Landroid/content/res/ColorStateList;

    throw v1
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->h()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->i()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->j()Landroid/content/res/ColorStateList;

    throw v1
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->k()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/c/h/a;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->l()Landroid/graphics/drawable/Drawable;

    throw v1
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->m()Ljava/lang/CharSequence;

    throw v1
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->n()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->o()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->p()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->q()Landroid/content/res/ColorStateList;

    throw v1
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->r()Landroid/text/TextUtils$TruncateAt;

    throw v1
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/h/a;->k:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lc/e/a/c/h/a;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getHideMotionSpec()Lc/e/a/c/a/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->s()Lc/e/a/c/a/h;

    throw v1
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->t()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->u()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->v()Landroid/content/res/ColorStateList;

    throw v1
.end method

.method public getShowMotionSpec()Lc/e/a/c/a/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->w()Lc/e/a/c/a/h;

    throw v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->x()Ljava/lang/CharSequence;

    const/4 v0, 0x0

    throw v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->z()F

    const/4 v0, 0x0

    throw v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->A()F

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lc/e/a/c/h/a;->e:[I

    invoke-static {p1, v0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/c/h/a;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->D()Z

    const/4 p1, 0x0

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/c/h/a;->setFocusedVirtualView(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    .line 2
    invoke-direct {p0, v0}, Lc/e/a/c/h/a;->setFocusedVirtualView(I)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lc/e/a/c/h/a;->o:Lc/e/a/c/h/a$a;

    invoke-virtual {v0, p1, p2, p3}, Lb/k/b/c;->a(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lc/e/a/c/h/a;->setCloseIconHovered(Z)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lc/e/a/c/h/a;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lc/e/a/c/h/a;->setCloseIconHovered(Z)V

    .line 4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    invoke-static {p0}, Lc/e/a/c/l/q;->a(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lc/e/a/c/h/a;->a(Z)Z

    move-result v2

    goto :goto_1

    .line 4
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5
    invoke-static {p0}, Lc/e/a/c/l/q;->a(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lc/e/a/c/h/a;->a(Z)Z

    move-result v2

    goto :goto_1

    .line 6
    :cond_0
    :pswitch_2
    iget v0, p0, Lc/e/a/c/h/a;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lc/e/a/c/h/a;->c()Z

    return v3

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->performClick()Z

    return v3

    .line 9
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, p0

    .line 12
    :cond_6
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    if-eq v4, p0, :cond_7

    .line 13
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_6

    :cond_7
    if-eqz v4, :cond_8

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 15
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return v3

    .line 16
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/e/a/c/h/a;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lc/e/a/c/h/a;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lc/e/a/c/h/a;->l:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    .line 4
    invoke-direct {p0, v2}, Lc/e/a/c/h/a;->setCloseIconPressed(Z)V

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lc/e/a/c/h/a;->l:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lc/e/a/c/h/a;->c()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, v2}, Lc/e/a/c/h/a;->setCloseIconPressed(Z)V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    .line 8
    invoke-direct {p0, v3}, Lc/e/a/c/h/a;->setCloseIconPressed(Z)V

    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_6

    .line 9
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/h/a;->g:Landroid/graphics/drawable/RippleDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lc/e/a/c/h/a;->g:Landroid/graphics/drawable/RippleDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->a(Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckableResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lc/e/a/c/h/a;->j:Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/h/b;->B()Z

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/h/a;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/h/a;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->b(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckedIconVisible(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->c(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->b(Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->a(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->d(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipCornerRadius(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->a(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->e(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipDrawable(Lc/e/a/c/h/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lc/e/a/c/h/a;->b(Lc/e/a/c/h/b;)V

    .line 3
    iput-object p1, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    .line 4
    iget-object p1, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    invoke-virtual {p0, p1}, Lc/e/a/c/h/a;->a(Lc/e/a/c/h/b;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->b(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->f(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->b(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/h/a;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/h/a;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->g(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->c(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipIconSizeResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->h(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->b(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipIconTintResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->i(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipIconVisible(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->j(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->c(Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->d(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipMinHeightResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->k(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->e(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->l(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->c(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->m(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->f(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->n(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->c(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/h/a;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/h/a;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->g(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->o(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->p(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->h(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->q(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->i(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->r(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->d(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconTintResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->s(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->t(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->d(Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    .line 3
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->a(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x0

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Chip text must be vertically center and start aligned"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setHideMotionSpec(Lc/e/a/c/a/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->a(Lc/e/a/c/a/h;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->u(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->j(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->v(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->k(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->w(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLines(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxLines(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxWidth(I)V

    .line 2
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->x(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMinLines(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/h/a;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/h/a;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->e(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->y(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setShowMotionSpec(Lc/e/a/c/a/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->b(Lc/e/a/c/a/h;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->z(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setSingleLine(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setSingleLine(Z)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 2
    :cond_1
    invoke-static {}, Lb/i/i/a;->a()Lb/i/i/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/i/i/a;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    invoke-virtual {p1}, Lc/e/a/c/h/b;->D()Z

    const/4 p1, 0x0

    throw p1
.end method

.method public setTextAppearance(I)V
    .locals 4

    .line 10
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setTextAppearance(I)V

    .line 11
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 12
    invoke-direct {p0}, Lc/e/a/c/h/a;->getTextAppearance()Lc/e/a/c/o/b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lc/e/a/c/h/a;->getTextAppearance()Lc/e/a/c/o/b;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/c/h/a;->r:Lb/i/b/a/h$a;

    invoke-virtual {p1, v0, v2, v3}, Lc/e/a/c/o/b;->a(Landroid/content/Context;Landroid/text/TextPaint;Lb/i/b/a/h$a;)V

    throw v1

    .line 14
    :cond_1
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->A(I)V

    throw v1
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 3

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 6
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0}, Lc/e/a/c/h/a;->getTextAppearance()Lc/e/a/c/o/b;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lc/e/a/c/h/a;->getTextAppearance()Lc/e/a/c/o/b;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/c/h/a;->r:Lb/i/b/a/h$a;

    invoke-virtual {p2, p1, v0, v2}, Lc/e/a/c/o/b;->a(Landroid/content/Context;Landroid/text/TextPaint;Lb/i/b/a/h$a;)V

    throw v1

    .line 9
    :cond_1
    invoke-virtual {v0, p2}, Lc/e/a/c/h/b;->A(I)V

    throw v1
.end method

.method public setTextAppearance(Lc/e/a/c/o/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lc/e/a/c/h/a;->getTextAppearance()Lc/e/a/c/o/b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lc/e/a/c/h/a;->getTextAppearance()Lc/e/a/c/o/b;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/c/h/a;->r:Lb/i/b/a/h$a;

    invoke-virtual {p1, v0, v2, v3}, Lc/e/a/c/o/b;->a(Landroid/content/Context;Landroid/text/TextPaint;Lb/i/b/a/h$a;)V

    throw v1

    .line 4
    :cond_1
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->a(Lc/e/a/c/o/b;)V

    throw v1
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lc/e/a/c/h/a;->setTextAppearance(Landroid/content/Context;I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->A(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->l(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->B(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->m(F)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/a;->f:Lc/e/a/c/h/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/h/b;->C(I)V

    const/4 p1, 0x0

    throw p1
.end method
