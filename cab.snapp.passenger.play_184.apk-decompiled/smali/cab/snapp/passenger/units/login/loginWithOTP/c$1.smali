.class final Lcab/snapp/passenger/units/login/loginWithOTP/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .locals 0

    .line 53
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$1;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$1;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->a(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$1;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->b(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    iget-object p1, p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappEditText;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$1;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->c(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    iget-object p1, p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappEditText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 75
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$1;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->a()V

    return-void

    .line 79
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$1;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->d(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c$1;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->e(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showNormalState()V

    :cond_2
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
