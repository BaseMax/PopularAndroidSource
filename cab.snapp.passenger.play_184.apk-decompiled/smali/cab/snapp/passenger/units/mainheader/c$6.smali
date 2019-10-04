.class final Lcab/snapp/passenger/units/mainheader/c$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/mainheader/c;->onOptionsClicked()V
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

    .line 1250
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$6;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1255
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1256
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$6;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->J(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1258
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$6;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->K(Lcab/snapp/passenger/units/mainheader/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1260
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$6;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->L(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRide()V

    goto :goto_0

    .line 1264
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$6;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->M(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideButton()V

    .line 1266
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$6;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->N(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showBackButton()V

    .line 1268
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$6;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->O(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1270
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$6;->a:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->P(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/a;->navigateToOptions()V

    :cond_2
    return-void
.end method
