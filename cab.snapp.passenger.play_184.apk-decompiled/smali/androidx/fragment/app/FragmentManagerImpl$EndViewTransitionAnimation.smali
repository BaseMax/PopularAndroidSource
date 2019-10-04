.class Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;
.super Landroid/view/animation/AnimationSet;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndViewTransitionAnimation"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 3430
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    .line 3426
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3431
    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    .line 3432
    iput-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    .line 3433
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3436
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2

    const/4 v0, 0x1

    .line 3441
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3442
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_1

    .line 3443
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mTransitionEnded:Z

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3445
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3447
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    .line 3448
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_2
    return v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 2

    const/4 v0, 0x1

    .line 3456
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3457
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_1

    .line 3458
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mTransitionEnded:Z

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3460
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3462
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    .line 3463
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_2
    return v0
.end method

.method public run()V
    .locals 2

    .line 3470
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mEnded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3471
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mAnimating:Z

    .line 3473
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3475
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 3476
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;->mTransitionEnded:Z

    return-void
.end method
