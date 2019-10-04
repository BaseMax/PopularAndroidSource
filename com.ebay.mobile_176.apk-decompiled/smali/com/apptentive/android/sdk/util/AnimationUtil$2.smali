.class final Lcom/apptentive/android/sdk/util/AnimationUtil$2;
.super Ljava/lang/Object;
.source "AnimationUtil.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/util/AnimationUtil;->fadeOut(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endVisibility:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/AnimationUtil$2;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/apptentive/android/sdk/util/AnimationUtil$2;->val$endVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/AnimationUtil$2;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/apptentive/android/sdk/util/AnimationUtil$2;->val$endVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
