.class final Lcab/snapp/passenger/units/main/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/main/a/d;->collapseHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/main/a/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/main/a/d;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/d$1;->a:Lcab/snapp/passenger/units/main/a/d;

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

    .line 138
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/d$1;->a:Lcab/snapp/passenger/units/main/a/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/d;->a(Lcab/snapp/passenger/units/main/a/d;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

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
