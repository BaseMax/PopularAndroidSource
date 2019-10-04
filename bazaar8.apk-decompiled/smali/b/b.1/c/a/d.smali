.class public Lb/b/c/a/d;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/c/a/d$a;,
        Lb/b/c/a/d$b;
    }
.end annotation


# instance fields
.field public a:Lb/b/c/a/d$b;

.field public b:Landroid/graphics/Rect;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z

.field public j:Ljava/lang/Runnable;

.field public k:J

.field public l:J

.field public m:Lb/b/c/a/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lb/b/c/a/d;->e:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lb/b/c/a/d;->g:I

    .line 4
    iput v0, p0, Lb/b/c/a/d;->h:I

    return-void
.end method

.method public static a(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    if-nez p1, :cond_1

    const/16 p1, 0xa0

    :cond_1
    return p1
.end method


# virtual methods
.method public a()Lb/b/c/a/d$b;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final a(Landroid/content/res/Resources;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0, p1}, Lb/b/c/a/d$b;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 30
    iget-object v0, p0, Lb/b/c/a/d;->m:Lb/b/c/a/d$a;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lb/b/c/a/d$a;

    invoke-direct {v0}, Lb/b/c/a/d$a;-><init>()V

    iput-object v0, p0, Lb/b/c/a/d;->m:Lb/b/c/a/d$a;

    .line 32
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->m:Lb/b/c/a/d$a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/c/a/d$a;->a(Landroid/graphics/drawable/Drawable$Callback;)Lb/b/c/a/d$a;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 33
    :try_start_0
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget v0, v0, Lb/b/c/a/d$b;->A:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lb/b/c/a/d;->f:Z

    if-eqz v0, :cond_1

    .line 34
    iget v0, p0, Lb/b/c/a/d;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 35
    :cond_1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-boolean v0, v0, Lb/b/c/a/d$b;->E:Z

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-object v0, v0, Lb/b/c/a/d$b;->D:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-boolean v0, v0, Lb/b/c/a/d$b;->H:Z

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-object v0, v0, Lb/b/c/a/d$b;->F:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 39
    :cond_3
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-boolean v0, v0, Lb/b/c/a/d$b;->I:Z

    if-eqz v0, :cond_4

    .line 40
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-object v0, v0, Lb/b/c/a/d$b;->G:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 42
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-boolean v0, v0, Lb/b/c/a/d$b;->x:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 44
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 45
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    .line 47
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 48
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    .line 49
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-boolean v0, v0, Lb/b/c/a/d$b;->C:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 50
    :cond_6
    iget-object v0, p0, Lb/b/c/a/d;->b:Landroid/graphics/Rect;

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7

    if-eqz v0, :cond_7

    .line 52
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_7
    iget-object v0, p0, Lb/b/c/a/d;->m:Lb/b/c/a/d$a;

    invoke-virtual {v0}, Lb/b/c/a/d$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/b/c/a/d;->m:Lb/b/c/a/d$a;

    invoke-virtual {v1}, Lb/b/c/a/d$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 54
    throw v0
.end method

.method public a(Lb/b/c/a/d$b;)V
    .locals 1

    .line 75
    iput-object p1, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    .line 76
    iget v0, p0, Lb/b/c/a/d;->g:I

    if-ltz v0, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Lb/b/c/a/d$b;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object p1, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lb/b/c/a/d;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lb/b/c/a/d;->h:I

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Z)V
    .locals 13

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lb/b/c/a/d;->f:Z

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 57
    iget-object v3, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_1

    .line 58
    iget-wide v9, p0, Lb/b/c/a/d;->k:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_2

    cmp-long v11, v9, v1

    if-gtz v11, :cond_0

    .line 59
    iget v9, p0, Lb/b/c/a/d;->e:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 60
    iput-wide v7, p0, Lb/b/c/a/d;->k:J

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v1

    mul-long v9, v9, v4

    long-to-int v10, v9

    .line 61
    iget-object v9, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget v9, v9, Lb/b/c/a/d$b;->A:I

    div-int/2addr v10, v9

    rsub-int v9, v10, 0xff

    .line 62
    iget v10, p0, Lb/b/c/a/d;->e:I

    mul-int v9, v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x1

    goto :goto_1

    .line 63
    :cond_1
    iput-wide v7, p0, Lb/b/c/a/d;->k:J

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 64
    :goto_1
    iget-object v9, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 65
    iget-wide v10, p0, Lb/b/c/a/d;->l:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_5

    cmp-long v12, v10, v1

    if-gtz v12, :cond_3

    .line 66
    invoke-virtual {v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lb/b/c/a/d;->h:I

    .line 69
    iput-wide v7, p0, Lb/b/c/a/d;->l:J

    goto :goto_2

    :cond_3
    sub-long/2addr v10, v1

    mul-long v10, v10, v4

    long-to-int v3, v10

    .line 70
    iget-object v4, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget v4, v4, Lb/b/c/a/d$b;->B:I

    div-int/2addr v3, v4

    .line 71
    iget v4, p0, Lb/b/c/a/d;->e:I

    mul-int v3, v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 72
    :cond_4
    iput-wide v7, p0, Lb/b/c/a/d;->l:J

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 73
    iget-object p1, p0, Lb/b/c/a/d;->j:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method public a(I)Z
    .locals 8

    .line 1
    iget v0, p0, Lb/b/c/a/d;->g:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget v0, v0, Lb/b/c/a/d$b;->B:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-lez v0, :cond_3

    .line 4
    iget-object v0, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 7
    iput-object v0, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    .line 8
    iget v0, p0, Lb/b/c/a/d;->g:I

    iput v0, p0, Lb/b/c/a/d;->h:I

    .line 9
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget v0, v0, Lb/b/c/a/d$b;->B:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/b/c/a/d;->l:J

    goto :goto_0

    .line 10
    :cond_2
    iput-object v5, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    .line 11
    iput v4, p0, Lb/b/c/a/d;->h:I

    .line 12
    iput-wide v6, p0, Lb/b/c/a/d;->l:J

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    .line 15
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget v1, v0, Lb/b/c/a/d$b;->h:I

    if-ge p1, v1, :cond_6

    .line 16
    invoke-virtual {v0, p1}, Lb/b/c/a/d$b;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    .line 18
    iput p1, p0, Lb/b/c/a/d;->g:I

    if-eqz v0, :cond_7

    .line 19
    iget-object p1, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget p1, p1, Lb/b/c/a/d$b;->A:I

    if-lez p1, :cond_5

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 20
    iput-wide v2, p0, Lb/b/c/a/d;->k:J

    .line 21
    :cond_5
    invoke-virtual {p0, v0}, Lb/b/c/a/d;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 22
    :cond_6
    iput-object v5, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    .line 23
    iput v4, p0, Lb/b/c/a/d;->g:I

    .line 24
    :cond_7
    :goto_1
    iget-wide v0, p0, Lb/b/c/a/d;->k:J

    const/4 p1, 0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_8

    iget-wide v0, p0, Lb/b/c/a/d;->l:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_a

    .line 25
    :cond_8
    iget-object v0, p0, Lb/b/c/a/d;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    .line 26
    new-instance v0, Lb/b/c/a/c;

    invoke-direct {v0, p0}, Lb/b/c/a/c;-><init>(Lb/b/c/a/d;)V

    iput-object v0, p0, Lb/b/c/a/d;->j:Ljava/lang/Runnable;

    goto :goto_2

    .line 27
    :cond_9
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 28
    :goto_2
    invoke-virtual {p0, p1}, Lb/b/c/a/d;->a(Z)V

    .line 29
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0, p1}, Lb/b/c/a/d$b;->a(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lb/b/c/a/d;->g:I

    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/b/c/a/d;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lb/i/c/a/a;->e(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lb/b/c/a/d;->e:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    .line 2
    invoke-virtual {v1}, Lb/b/c/a/d$b;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {p0}, Lb/b/c/a/d;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lb/b/c/a/d$b;->d:I

    .line 3
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->b:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->f()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->j()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->g()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->h()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    .line 2
    invoke-virtual {v0}, Lb/b/c/a/d$b;->k()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x2

    :goto_1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {v0}, Lb/b/c/a/d$b;->i()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lb/b/c/a/d;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 9
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 10
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 11
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/c/a/d$b;->l()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-boolean v0, v0, Lb/b/c/a/d$b;->C:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lb/b/c/a/d;->h:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 7
    iget-boolean v2, p0, Lb/b/c/a/d;->f:Z

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lb/b/c/a/d;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9
    :cond_1
    iget-wide v2, p0, Lb/b/c/a/d;->l:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 10
    iput-wide v4, p0, Lb/b/c/a/d;->l:J

    const/4 v0, 0x1

    .line 11
    :cond_2
    iget-wide v2, p0, Lb/b/c/a/d;->k:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 12
    iput-wide v4, p0, Lb/b/c/a/d;->k:J

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/b/c/a/d;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/b/c/a/d;->a()Lb/b/c/a/d$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lb/b/c/a/d$b;->n()V

    .line 4
    invoke-virtual {p0, v0}, Lb/b/c/a/d;->a(Lb/b/c/a/d$b;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lb/b/c/a/d;->i:Z

    :cond_0
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    invoke-virtual {p0}, Lb/b/c/a/d;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lb/b/c/a/d$b;->b(II)Z

    move-result p1

    return p1
.end method

.method public onLevelChange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lb/b/c/a/d;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/c/a/d;->e:I

    if-eq v0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/b/c/a/d;->f:Z

    .line 3
    iput p1, p0, Lb/b/c/a/d;->e:I

    .line 4
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 5
    iget-wide v1, p0, Lb/b/c/a/d;->k:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lb/b/c/a/d;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-boolean v1, v0, Lb/b/c/a/d$b;->C:Z

    if-eq v1, p1, :cond_0

    .line 2
    iput-boolean p1, v0, Lb/b/c/a/d$b;->C:Z

    .line 3
    iget-object p1, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 4
    iget-boolean v0, v0, Lb/b/c/a/d$b;->C:Z

    invoke-static {p1, v0}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/b/c/a/d$b;->E:Z

    .line 2
    iget-object v1, v0, Lb/b/c/a/d$b;->D:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, v0, Lb/b/c/a/d$b;->D:Landroid/graphics/ColorFilter;

    .line 4
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    iget-boolean v1, v0, Lb/b/c/a/d$b;->x:Z

    if-eq v1, p1, :cond_0

    .line 2
    iput-boolean p1, v0, Lb/b/c/a/d$b;->x:Z

    .line 3
    iget-object p1, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 4
    iget-boolean v0, v0, Lb/b/c/a/d$b;->x:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1, p2}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lb/b/c/a/d;->b:Landroid/graphics/Rect;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    :goto_0
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/b/c/a/d$b;->H:Z

    .line 2
    iget-object v1, v0, Lb/b/c/a/d$b;->F:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, v0, Lb/b/c/a/d$b;->F:Landroid/content/res/ColorStateList;

    .line 4
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->a:Lb/b/c/a/d$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/b/c/a/d$b;->I:Z

    .line 2
    iget-object v1, v0, Lb/b/c/a/d$b;->G:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, v0, Lb/b/c/a/d$b;->G:Landroid/graphics/PorterDuff$Mode;

    .line 4
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lb/b/c/a/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
