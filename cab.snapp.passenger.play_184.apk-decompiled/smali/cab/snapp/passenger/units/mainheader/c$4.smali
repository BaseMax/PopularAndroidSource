.class final Lcab/snapp/passenger/units/mainheader/c$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/mainheader/c;->onDestinationSelected(ILjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/mainheader/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/mainheader/c;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$4;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 457
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 458
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$4;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->z(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 460
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$4;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->A(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideOptionsContainer()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 467
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 468
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$4;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->B(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$4;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->C(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/a;->navigateUpOptions()V

    :cond_0
    return-void
.end method
