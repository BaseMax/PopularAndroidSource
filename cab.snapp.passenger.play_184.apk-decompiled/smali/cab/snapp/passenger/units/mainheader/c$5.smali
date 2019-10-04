.class final Lcab/snapp/passenger/units/mainheader/c$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/mainheader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcab/snapp/passenger/units/mainheader/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/mainheader/c;Z)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$5;->b:Lcab/snapp/passenger/units/mainheader/c;

    iput-boolean p2, p0, Lcab/snapp/passenger/units/mainheader/c$5;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 846
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$5;->b:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->D(Lcab/snapp/passenger/units/mainheader/c;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 848
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$5;->b:Lcab/snapp/passenger/units/mainheader/c;

    iget-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c$5;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/mainheader/c;->a(Lcab/snapp/passenger/units/mainheader/c;Z)V

    return-void

    .line 852
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$5;->b:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->E(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 854
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$5;->b:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->F(Lcab/snapp/passenger/units/mainheader/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 856
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$5;->b:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->G(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setOptionsEnabled()V

    .line 859
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$5;->b:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->H(Lcab/snapp/passenger/units/mainheader/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 861
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c$5;->b:Lcab/snapp/passenger/units/mainheader/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/mainheader/c;->I(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoEnabled()V

    :cond_2
    return-void
.end method
