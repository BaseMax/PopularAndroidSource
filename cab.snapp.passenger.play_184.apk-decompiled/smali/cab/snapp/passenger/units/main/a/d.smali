.class public final Lcab/snapp/passenger/units/main/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private c:F

.field private d:F

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcab/snapp/passenger/units/main/a/b;

.field private h:F


# direct methods
.method public constructor <init>(FFLandroid/view/View;Lcab/snapp/passenger/units/main/a/b;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 16
    iput v0, p0, Lcab/snapp/passenger/units/main/a/d;->a:F

    .line 38
    iput p2, p0, Lcab/snapp/passenger/units/main/a/d;->d:F

    .line 39
    iput-object p3, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    .line 40
    iput-object p4, p0, Lcab/snapp/passenger/units/main/a/d;->g:Lcab/snapp/passenger/units/main/a/b;

    .line 41
    iput p1, p0, Lcab/snapp/passenger/units/main/a/d;->c:F

    .line 42
    iput-object p5, p0, Lcab/snapp/passenger/units/main/a/d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/main/a/d;)Landroid/view/View;
    .locals 0

    .line 13
    iget-object p0, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget v0, p0, Lcab/snapp/passenger/units/main/a/d;->c:F

    iget-object v2, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 114
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v3, 0x12c

    .line 115
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v1

    .line 116
    iget v0, p0, Lcab/snapp/passenger/units/main/a/d;->c:F

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 117
    new-instance v0, Lcab/snapp/passenger/units/main/a/-$$Lambda$d$sHnozCyWXJVvSceOOR5qycSbpos;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/a/-$$Lambda$d$sHnozCyWXJVvSceOOR5qycSbpos;-><init>(Lcab/snapp/passenger/units/main/a/d;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public static synthetic lambda$sHnozCyWXJVvSceOOR5qycSbpos(Lcab/snapp/passenger/units/main/a/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/a/d;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$wHq4RPYV03C3SCrC80rV50Zuc38(Lcab/snapp/passenger/units/main/a/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/a/d;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public final collapseHeader()V
    .locals 5

    .line 123
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v1, 0x12c

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget v1, p0, Lcab/snapp/passenger/units/main/a/d;->c:F

    iget-object v2, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 126
    iget v3, p0, Lcab/snapp/passenger/units/main/a/d;->c:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 127
    new-instance v1, Lcab/snapp/passenger/units/main/a/-$$Lambda$d$wHq4RPYV03C3SCrC80rV50Zuc38;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/main/a/-$$Lambda$d$wHq4RPYV03C3SCrC80rV50Zuc38;-><init>(Lcab/snapp/passenger/units/main/a/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    new-instance v1, Lcab/snapp/passenger/units/main/a/d$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/main/a/d$1;-><init>(Lcab/snapp/passenger/units/main/a/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final hideHeader()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 52
    iget-object p2, p0, Lcab/snapp/passenger/units/main/a/d;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget p2, p0, Lcab/snapp/passenger/units/main/a/d;->h:F

    int-to-float v0, p3

    sub-float/2addr p2, v0

    .line 58
    iget v0, p0, Lcab/snapp/passenger/units/main/a/d;->d:F

    div-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-eqz p3, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcab/snapp/passenger/units/main/a/d;->f:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    if-lez p3, :cond_3

    .line 71
    iget p3, p0, Lcab/snapp/passenger/units/main/a/d;->d:F

    sub-float/2addr p3, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/16 v3, 0x8

    cmpg-float p3, p3, v2

    if-gez p3, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v2, p0, Lcab/snapp/passenger/units/main/a/d;->d:F

    add-float/2addr v2, v0

    cmpg-float p3, p3, v2

    if-gez p3, :cond_2

    iget-object p3, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-ne p3, v3, :cond_2

    .line 73
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/a/d;->a()V

    goto/16 :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 77
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/a/d;->a()V

    .line 78
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/d;->f:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 84
    :cond_3
    iget p3, p0, Lcab/snapp/passenger/units/main/a/d;->d:F

    sub-float/2addr p3, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v1, p0, Lcab/snapp/passenger/units/main/a/d;->d:F

    add-float/2addr v1, v0

    cmpg-float p3, p3, v1

    if-gez p3, :cond_4

    iget-object p3, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    iget v0, p0, Lcab/snapp/passenger/units/main/a/d;->c:F

    cmpl-float p3, p3, v0

    if-nez p3, :cond_4

    .line 86
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/a/d;->collapseHeader()V

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_5

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/d;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget v0, p0, Lcab/snapp/passenger/units/main/a/d;->c:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_7

    .line 90
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/a/d;->collapseHeader()V

    .line 91
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/d;->f:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 92
    :cond_6
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/d;->g:Lcab/snapp/passenger/units/main/a/b;

    invoke-interface {p1}, Lcab/snapp/passenger/units/main/a/b;->reachedTop()V

    .line 97
    :cond_7
    :goto_0
    iput p2, p0, Lcab/snapp/passenger/units/main/a/d;->h:F

    return-void
.end method

.method public final setAlphaView(Landroid/view/View;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/d;->f:Landroid/view/View;

    return-void
.end method
