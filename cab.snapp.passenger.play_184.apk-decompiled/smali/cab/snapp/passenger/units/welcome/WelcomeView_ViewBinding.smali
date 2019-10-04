.class public Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/welcome/WelcomeView;

.field private view7f0a04e3:Landroid/view/View;

.field private view7f0a04e4:Landroid/view/View;

.field private view7f0a04e6:Landroid/view/View;

.field private view7f0a04e9:Landroid/view/View;

.field private view7f0a04ea:Landroid/view/View;

.field private view7f0a04eb:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/welcome/WelcomeView;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;-><init>(Lcab/snapp/passenger/units/welcome/WelcomeView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/welcome/WelcomeView;Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->target:Lcab/snapp/passenger/units/welcome/WelcomeView;

    .line 42
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04e8

    const-string v2, "field \'mainLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->mainLayout:Landroid/widget/LinearLayout;

    .line 43
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04e7

    const-string v2, "field \'mainButtonsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->mainButtonsLayout:Landroid/widget/LinearLayout;

    .line 44
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04e5

    const-string v2, "field \'languageButtonsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->languageButtonsLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04e3

    const-string v1, "field \'firstLanguageButton\' and method \'onFirstLanguageClicked\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 46
    const-class v2, Lcab/snapp/snappuikit/SnappTextButton;

    const-string v3, "field \'firstLanguageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappTextButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->firstLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    .line 47
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e3:Landroid/view/View;

    .line 48
    new-instance v0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;Lcab/snapp/passenger/units/welcome/WelcomeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04e9

    const-string v1, "field \'secondLanguageButton\' and method \'onSecondLanguageClicked\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    const-class v2, Lcab/snapp/snappuikit/SnappTextButton;

    const-string v3, "field \'secondLanguageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappTextButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->secondLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    .line 56
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e9:Landroid/view/View;

    .line 57
    new-instance v0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;Lcab/snapp/passenger/units/welcome/WelcomeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04eb

    const-string v1, "field \'thirdLanguageButton\' and method \'onThirdLanguageClicked\'"

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 64
    const-class v2, Lcab/snapp/snappuikit/SnappTextButton;

    const-string v3, "field \'thirdLanguageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappTextButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->thirdLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    .line 65
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04eb:Landroid/view/View;

    .line 66
    new-instance v0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;Lcab/snapp/passenger/units/welcome/WelcomeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04e4

    const-string v1, "field \'fourthLanguageButton\' and method \'onFourthLanguageClicked\'"

    .line 72
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 73
    const-class v2, Lcab/snapp/snappuikit/SnappTextButton;

    const-string v3, "field \'fourthLanguageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappTextButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->fourthLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    .line 74
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e4:Landroid/view/View;

    .line 75
    new-instance v0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;Lcab/snapp/passenger/units/welcome/WelcomeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04e6

    const-string v1, "field \'loginButton\' and method \'onLoginClicked\'"

    .line 81
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 82
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'loginButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->loginButton:Lcab/snapp/snappuikit/SnappButton;

    .line 83
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e6:Landroid/view/View;

    .line 84
    new-instance v0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;Lcab/snapp/passenger/units/welcome/WelcomeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ea

    const-string v1, "field \'signUpButton\' and method \'onSignUpClicked\'"

    .line 90
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 91
    const-class v1, Lcab/snapp/snappuikit/SnappButton;

    const-string v2, "field \'signUpButton\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->signUpButton:Lcab/snapp/snappuikit/SnappButton;

    .line 92
    iput-object p2, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04ea:Landroid/view/View;

    .line 93
    new-instance v0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$6;-><init>(Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;Lcab/snapp/passenger/units/welcome/WelcomeView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->target:Lcab/snapp/passenger/units/welcome/WelcomeView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->target:Lcab/snapp/passenger/units/welcome/WelcomeView;

    .line 108
    iput-object v1, v0, Lcab/snapp/passenger/units/welcome/WelcomeView;->mainLayout:Landroid/widget/LinearLayout;

    .line 109
    iput-object v1, v0, Lcab/snapp/passenger/units/welcome/WelcomeView;->mainButtonsLayout:Landroid/widget/LinearLayout;

    .line 110
    iput-object v1, v0, Lcab/snapp/passenger/units/welcome/WelcomeView;->languageButtonsLayout:Landroid/widget/LinearLayout;

    .line 111
    iput-object v1, v0, Lcab/snapp/passenger/units/welcome/WelcomeView;->firstLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    .line 112
    iput-object v1, v0, Lcab/snapp/passenger/units/welcome/WelcomeView;->secondLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    .line 113
    iput-object v1, v0, Lcab/snapp/passenger/units/welcome/WelcomeView;->thirdLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    .line 114
    iput-object v1, v0, Lcab/snapp/passenger/units/welcome/WelcomeView;->fourthLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    .line 115
    iput-object v1, v0, Lcab/snapp/passenger/units/welcome/WelcomeView;->loginButton:Lcab/snapp/snappuikit/SnappButton;

    .line 116
    iput-object v1, v0, Lcab/snapp/passenger/units/welcome/WelcomeView;->signUpButton:Lcab/snapp/snappuikit/SnappButton;

    .line 118
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e3:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e9:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04eb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04eb:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e4:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04e6:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04ea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;->view7f0a04ea:Landroid/view/View;

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
