.class public Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

.field private view7f0a035c:Landroid/view/View;

.field private view7f0a035d:Landroid/view/View;

.field private view7f0a035e:Landroid/view/View;

.field private view7f0a0361:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;Landroid/view/View;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->target:Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    const v0, 0x7f0a0361

    const-string v1, "field \'backLayout\' and method \'onBackClicked\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'backLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->backLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a0361:Landroid/view/View;

    .line 42
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a035a

    const-string v2, "field \'viewLogInWithOtpDescTextview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpDescTextview:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a035c

    const-string v1, "field \'viewLogInWithOtpEnterPhoneButton\' and method \'fixPhoneNumberClicked\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'viewLogInWithOtpEnterPhoneButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEnterPhoneButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a035c:Landroid/view/View;

    .line 52
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a035b

    const-string v2, "field \'viewLogInWithOtpEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 59
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a035f

    const-string v2, "field \'viewLogInWithOtpTimerTextview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a035e

    const-string v1, "field \'viewLogInWithOtpResendCodeButton\' and method \'resendSmsButtonClicked\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'viewLogInWithOtpResendCodeButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpResendCodeButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a035e:Landroid/view/View;

    .line 63
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035d

    const-string v1, "field \'viewLogInWithOtpLoginButton\' and method \'loginWithOtpClick\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 70
    const-class v1, Lcab/snapp/snappuikit/SnappButton;

    const-string v2, "field \'viewLogInWithOtpLoginButton\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpLoginButton:Lcab/snapp/snappuikit/SnappButton;

    .line 71
    iput-object p2, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a035d:Landroid/view/View;

    .line 72
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->target:Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->target:Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    .line 87
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->backLayout:Landroid/widget/LinearLayout;

    .line 88
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpDescTextview:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEnterPhoneButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 91
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpResendCodeButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpLoginButton:Lcab/snapp/snappuikit/SnappButton;

    .line 95
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a0361:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a0361:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a035c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a035c:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a035e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a035e:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a035d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;->view7f0a035d:Landroid/view/View;

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
