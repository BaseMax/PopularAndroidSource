.class final Lcab/snapp/passenger/units/login/loginWithOTP/c$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/login/loginWithOTP/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/login/loginWithOTP/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/login/loginWithOTP/c;)V
    .locals 4

    .line 118
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$2;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$2;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->h(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$2;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->i(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showCodeExpiredText()V

    .line 135
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$2;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->j(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->clearUserInput()V

    .line 136
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$2;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->k(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showResendSmsButton()V

    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$2;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->f(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$2;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->g(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->setTimerTime(J)V

    :cond_0
    return-void
.end method
