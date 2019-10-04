.class final Lcab/snapp/passenger/units/mainheader/MainHeaderView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideUpSnappArrived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/mainheader/MainHeaderView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView$2;->a:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 687
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView$2;->a:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object p1, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 688
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView$2;->a:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object p1, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
