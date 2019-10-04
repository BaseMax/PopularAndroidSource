.class final Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;
.super Landroid/app/Dialog;
.source "ErrorDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ErrorDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FloaterDialog"
.end annotation


# instance fields
.field private dismissed:Z

.field private retry:Z

.field private runningAnimation:Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/ebay/mobile/ErrorDialogFragment;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ErrorDialogFragment;Landroid/content/Context;I)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->this$0:Lcom/ebay/mobile/ErrorDialogFragment;

    .line 312
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->runningAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->runningAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->dismissed:Z

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->retry:Z

    .line 358
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->startAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 p1, 0x0

    .line 371
    iput-object p1, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->runningAnimation:Landroid/view/animation/Animation;

    .line 372
    iget-object v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->this$0:Lcom/ebay/mobile/ErrorDialogFragment;

    iget-object v0, v0, Lcom/ebay/mobile/ErrorDialogFragment;->floaterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 376
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->dismissed:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    const/16 p1, 0x8

    .line 379
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->this$0:Lcom/ebay/mobile/ErrorDialogFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/ErrorDialogFragment;->dismissAllowingStateLoss()V

    .line 381
    iget-object p1, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->this$0:Lcom/ebay/mobile/ErrorDialogFragment;

    iget-boolean v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->retry:Z

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/ErrorDialogFragment;->dismissMessage(Z)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->runningAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 393
    iget-boolean v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->runningAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->runningAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->dismissed:Z

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a09f1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->retry:Z

    .line 402
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->startAnimation(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 403
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public startAnimation(Z)Z
    .locals 12

    .line 317
    iget-object v0, p0, Lcom/ebay/mobile/ErrorDialogFragment$FloaterDialog;->this$0:Lcom/ebay/mobile/ErrorDialogFragment;

    iget-object v0, v0, Lcom/ebay/mobile/ErrorDialogFragment;->floaterView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v9, 0x1

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 326
    :cond_2
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v1

    int-to-float v8, v3

    int-to-float v10, v2

    move-object v2, v11

    move v3, v9

    move v4, v6

    move v5, v9

    move v7, v9

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 328
    invoke-virtual {v11, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0x1f4

    .line 329
    invoke-virtual {v11, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    if-eqz p1, :cond_3

    .line 337
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1

    .line 339
    :cond_3
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 340
    :goto_1
    invoke-virtual {v11, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 341
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartTime(J)V

    .line 342
    invoke-virtual {v0, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    return p1
.end method
