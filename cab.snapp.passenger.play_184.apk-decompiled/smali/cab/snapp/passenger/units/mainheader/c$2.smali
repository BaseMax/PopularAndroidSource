.class final Lcab/snapp/passenger/units/mainheader/c$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/mainheader/c;->b()V
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

    .line 236
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 241
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->j(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->k(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideOptionsContainer()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 251
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->l(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 253
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->m(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideBackButton()V

    .line 254
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->e(Lcab/snapp/passenger/units/mainheader/c;)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 256
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->n(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showShareRide()V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->o(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showCancelRideButton()V

    .line 263
    :cond_1
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->p(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 265
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$2;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->q(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/a;->navigateUpOptions()V

    :cond_2
    return-void
.end method
