.class public Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

.field private view7f0a0357:Landroid/view/View;

.field private view7f0a0362:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;-><init>(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;->target:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    const v0, 0x7f0a0362

    const-string v1, "field \'backLayout\' and method \'onBackClicked\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'backLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->backLayout:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;->view7f0a0362:Landroid/view/View;

    .line 38
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0262

    const-string v2, "field \'relativeAuthEnterPhoneTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->relativeAuthEnterPhoneTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a0356

    const-string v2, "field \'viewLogInPhoneEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->viewLogInPhoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    const v0, 0x7f0a0357

    const-string v1, "field \'viewLogInSendCodeButton\' and method \'sendPhoneNumber\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    const-class v1, Lcab/snapp/snappuikit/SnappButton;

    const-string v2, "field \'viewLogInSendCodeButton\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->viewLogInSendCodeButton:Lcab/snapp/snappuikit/SnappButton;

    .line 48
    iput-object p2, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;->view7f0a0357:Landroid/view/View;

    .line 49
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;->target:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;->target:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    .line 64
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->backLayout:Landroid/widget/LinearLayout;

    .line 65
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->relativeAuthEnterPhoneTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->viewLogInPhoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 67
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->viewLogInSendCodeButton:Lcab/snapp/snappuikit/SnappButton;

    .line 69
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;->view7f0a0362:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;->view7f0a0362:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;->view7f0a0357:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView_ViewBinding;->view7f0a0357:Landroid/view/View;

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
