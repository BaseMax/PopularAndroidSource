.class public final Lcab/snapp/passenger/units/main/a/c;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;
.source "SourceFile"


# instance fields
.field private a:Lcab/snapp/passenger/units/main/a/a;

.field private b:F

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(FFFFLandroid/view/View;Landroid/view/View;Lcab/snapp/passenger/units/main/a/a;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/a/c;->f:Z

    .line 30
    iput-object p7, p0, Lcab/snapp/passenger/units/main/a/c;->a:Lcab/snapp/passenger/units/main/a/a;

    .line 31
    iput p4, p0, Lcab/snapp/passenger/units/main/a/c;->b:F

    .line 32
    iput-object p5, p0, Lcab/snapp/passenger/units/main/a/c;->c:Landroid/view/View;

    .line 33
    iput-object p6, p0, Lcab/snapp/passenger/units/main/a/c;->e:Landroid/view/View;

    sub-float/2addr p1, p2

    sub-float/2addr p1, p3

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/units/main/a/c;->i:F

    .line 35
    iget p1, p0, Lcab/snapp/passenger/units/main/a/c;->i:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcab/snapp/passenger/units/main/a/c;->g:F

    return-void
.end method


# virtual methods
.method public final onSlide(Landroid/view/View;F)V
    .locals 3

    .line 68
    iget p1, p0, Lcab/snapp/passenger/units/main/a/c;->b:F

    mul-float v0, p2, p1

    .line 69
    iget-object v1, p0, Lcab/snapp/passenger/units/main/a/c;->c:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p1, v2

    sub-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    .line 70
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/c;->c:Landroid/view/View;

    iget v1, p0, Lcab/snapp/passenger/units/main/a/c;->b:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 72
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/c;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 74
    iget v1, p0, Lcab/snapp/passenger/units/main/a/c;->b:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 75
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/c;->d:Landroid/view/View;

    iget v1, p0, Lcab/snapp/passenger/units/main/a/c;->b:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 79
    :cond_0
    iget p1, p0, Lcab/snapp/passenger/units/main/a/c;->g:F

    mul-float p2, p2, p1

    .line 80
    iget p1, p0, Lcab/snapp/passenger/units/main/a/c;->h:F

    sub-float/2addr p1, p2

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 84
    iput p2, p0, Lcab/snapp/passenger/units/main/a/c;->h:F

    return-void
.end method

.method public final onStateChanged(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/c;->a:Lcab/snapp/passenger/units/main/a/a;

    invoke-interface {p1}, Lcab/snapp/passenger/units/main/a/a;->onHalfExpanded()V

    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/c;->a:Lcab/snapp/passenger/units/main/a/a;

    invoke-interface {p1}, Lcab/snapp/passenger/units/main/a/a;->onHidden()V

    :goto_0
    return-void

    .line 53
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/c;->a:Lcab/snapp/passenger/units/main/a/a;

    invoke-interface {p1}, Lcab/snapp/passenger/units/main/a/a;->onCollapsed()V

    return-void

    .line 50
    :cond_3
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/c;->a:Lcab/snapp/passenger/units/main/a/a;

    invoke-interface {p1}, Lcab/snapp/passenger/units/main/a/a;->onExpanded()V

    return-void
.end method

.method public final setHeaderFrame(Landroid/view/View;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/c;->d:Landroid/view/View;

    return-void
.end method

.method public final setShouldMoveHeader(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcab/snapp/passenger/units/main/a/c;->f:Z

    return-void
.end method

.method public final shouldMoveHeader()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/a/c;->f:Z

    return v0
.end method
