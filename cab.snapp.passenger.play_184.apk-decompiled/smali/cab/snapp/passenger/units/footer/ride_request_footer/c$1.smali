.class final Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/ride_request_footer/c;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcab/snapp/passenger/units/footer/ride_request_footer/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Z)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;->b:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iput-boolean p2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 778
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;->b:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->enableUI()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 764
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;->b:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 766
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;->b:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Z)V

    return-void

    .line 770
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;->b:Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->enableUI()V

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
