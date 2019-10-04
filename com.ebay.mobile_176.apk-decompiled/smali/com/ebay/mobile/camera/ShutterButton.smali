.class public Lcom/ebay/mobile/camera/ShutterButton;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ShutterButton.java"


# instance fields
.field private final grow:Landroid/animation/ValueAnimator;

.field private lastPressedState:Z

.field private final shrink:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/camera/ShutterButton;->setSoundEffectsEnabled(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070103

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    int-to-float v0, p2

    const v1, 0x3f87ae14    # 1.06f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x2

    .line 33
    new-array v2, v1, [I

    aput p2, v2, p1

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/camera/ShutterButton;->grow:Landroid/animation/ValueAnimator;

    .line 34
    iget-object v2, p0, Lcom/ebay/mobile/camera/ShutterButton;->grow:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35
    iget-object v2, p0, Lcom/ebay/mobile/camera/ShutterButton;->grow:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/ebay/mobile/camera/-$$Lambda$ShutterButton$93jKqXN1DfMfDG81sub_WmjQkpY;

    invoke-direct {v6, p0}, Lcom/ebay/mobile/camera/-$$Lambda$ShutterButton$93jKqXN1DfMfDG81sub_WmjQkpY;-><init>(Lcom/ebay/mobile/camera/ShutterButton;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    new-array v1, v1, [I

    aput v0, v1, p1

    aput p2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/camera/ShutterButton;->shrink:Landroid/animation/ValueAnimator;

    .line 44
    iget-object p1, p0, Lcom/ebay/mobile/camera/ShutterButton;->shrink:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    iget-object p1, p0, Lcom/ebay/mobile/camera/ShutterButton;->shrink:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/ebay/mobile/camera/-$$Lambda$ShutterButton$5dRkDBVUc5p59-sVzFFWZobdp3g;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/camera/-$$Lambda$ShutterButton$5dRkDBVUc5p59-sVzFFWZobdp3g;-><init>(Lcom/ebay/mobile/camera/ShutterButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/ebay/mobile/camera/ShutterButton;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 37
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/ShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 38
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/ShutterButton;->requestLayout()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/ebay/mobile/camera/ShutterButton;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 47
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/ShutterButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 48
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/ShutterButton;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 58
    invoke-virtual {p0}, Lcom/ebay/mobile/camera/ShutterButton;->isPressed()Z

    move-result v0

    .line 59
    iget-boolean v1, p0, Lcom/ebay/mobile/camera/ShutterButton;->lastPressedState:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/ebay/mobile/camera/ShutterButton;->grow:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/camera/ShutterButton;->shrink:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 66
    :goto_0
    iput-boolean v0, p0, Lcom/ebay/mobile/camera/ShutterButton;->lastPressedState:Z

    :cond_1
    return-void
.end method
