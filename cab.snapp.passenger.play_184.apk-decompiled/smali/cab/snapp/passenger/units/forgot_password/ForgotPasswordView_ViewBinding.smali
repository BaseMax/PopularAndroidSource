.class public Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

.field private view7f0a034b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding;-><init>(Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding;->target:Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    const v0, 0x7f0a034b

    const-string v1, "field \'sendButton\' and method \'onSendButtonClicked\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'sendButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->sendButton:Lcab/snapp/snappuikit/SnappButton;

    .line 34
    iput-object v1, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding;->view7f0a034b:Landroid/view/View;

    .line 35
    new-instance v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding;Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a034a

    const-string v2, "field \'loading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    .line 42
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a0349

    const-string v2, "field \'emailEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/snappuikit/SnappEditText;

    iput-object p2, p1, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding;->target:Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding;->target:Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    .line 52
    iput-object v1, v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->sendButton:Lcab/snapp/snappuikit/SnappButton;

    .line 53
    iput-object v1, v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    .line 54
    iput-object v1, v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 56
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding;->view7f0a034b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView_ViewBinding;->view7f0a034b:Landroid/view/View;

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
