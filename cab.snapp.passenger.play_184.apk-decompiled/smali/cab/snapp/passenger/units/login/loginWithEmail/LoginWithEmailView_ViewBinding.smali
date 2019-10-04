.class public Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

.field private view7f0a0352:Landroid/view/View;

.field private view7f0a0354:Landroid/view/View;

.field private view7f0a0358:Landroid/view/View;

.field private view7f0a0359:Landroid/view/View;

.field private view7f0a0360:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;Landroid/view/View;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->target:Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    .line 38
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a0353

    const-string v2, "field \'viewLogInEmailEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 39
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a0355

    const-string v2, "field \'viewLogInPasswordEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    const v0, 0x7f0a0359

    const-string v1, "method \'loginWithGoogle\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0359:Landroid/view/View;

    .line 42
    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0360

    const-string v1, "method \'loginWithPhone\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0360:Landroid/view/View;

    .line 50
    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0352

    const-string v1, "method \'login\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0352:Landroid/view/View;

    .line 58
    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0358

    const-string v1, "method \'signUp\'"

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0358:Landroid/view/View;

    .line 66
    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0354

    const-string v1, "method \'forgetPassword\'"

    .line 72
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 73
    iput-object p2, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0354:Landroid/view/View;

    .line 74
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->target:Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->target:Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    .line 89
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 90
    iput-object v1, v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 92
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0359:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0359:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0360:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0360:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0352:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0352:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0358:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0358:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0354:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView_ViewBinding;->view7f0a0354:Landroid/view/View;

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
