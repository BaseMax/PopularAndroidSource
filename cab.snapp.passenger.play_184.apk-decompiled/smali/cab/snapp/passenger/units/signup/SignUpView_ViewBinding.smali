.class public Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/signup/SignUpView;

.field private view7f0a047f:Landroid/view/View;

.field private view7f0a0485:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/signup/SignUpView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/signup/SignUpView;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;->target:Lcab/snapp/passenger/units/signup/SignUpView;

    .line 36
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a0481

    const-string v2, "field \'fullNameEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/signup/SignUpView;->fullNameEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 37
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a0480

    const-string v2, "field \'emailEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/signup/SignUpView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 38
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a0484

    const-string v2, "field \'passwordEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    const v0, 0x7f0a047f

    const-string v1, "field \'signUpButton\' and method \'onSignUpClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'signUpButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/signup/SignUpView;->signUpButton:Lcab/snapp/snappuikit/SnappButton;

    .line 41
    iput-object v1, p0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;->view7f0a047f:Landroid/view/View;

    .line 42
    new-instance v0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;Lcab/snapp/passenger/units/signup/SignUpView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0485

    const-string v1, "field \'signUpWithGoogleButton\' and method \'onSignUpWithGoogleClick\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'signUpWithGoogleButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/signup/SignUpView;->signUpWithGoogleButton:Lcab/snapp/snappuikit/SnappButton;

    .line 50
    iput-object v1, p0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;->view7f0a0485:Landroid/view/View;

    .line 51
    new-instance v0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;Lcab/snapp/passenger/units/signup/SignUpView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a0487

    const-string v2, "field \'loadingWithGoogle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/signup/SignUpView;->loadingWithGoogle:Lcab/snapp/snappuikit/SnappLoading;

    .line 58
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a0482

    const-string v2, "field \'loading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/signup/SignUpView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    .line 59
    const-class v0, Lcab/snapp/snappuikit/SnappCheckBox;

    const v1, 0x7f0a0483

    const-string v2, "field \'newsLetterCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappCheckBox;

    iput-object v0, p1, Lcab/snapp/passenger/units/signup/SignUpView;->newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 60
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0486

    const-string v2, "field \'signUpWithGoogleLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcab/snapp/passenger/units/signup/SignUpView;->signUpWithGoogleLayout:Landroid/view/ViewGroup;

    .line 61
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0214

    const-string v2, "field \'panelSeparatorLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p1, Lcab/snapp/passenger/units/signup/SignUpView;->panelSeparatorLayout:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;->target:Lcab/snapp/passenger/units/signup/SignUpView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;->target:Lcab/snapp/passenger/units/signup/SignUpView;

    .line 71
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->fullNameEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 72
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 73
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 74
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->signUpButton:Lcab/snapp/snappuikit/SnappButton;

    .line 75
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->signUpWithGoogleButton:Lcab/snapp/snappuikit/SnappButton;

    .line 76
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->loadingWithGoogle:Lcab/snapp/snappuikit/SnappLoading;

    .line 77
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    .line 78
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 79
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->signUpWithGoogleLayout:Landroid/view/ViewGroup;

    .line 80
    iput-object v1, v0, Lcab/snapp/passenger/units/signup/SignUpView;->panelSeparatorLayout:Landroid/view/ViewGroup;

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;->view7f0a047f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object v1, p0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;->view7f0a047f:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;->view7f0a0485:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcab/snapp/passenger/units/signup/SignUpView_ViewBinding;->view7f0a0485:Landroid/view/View;

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
