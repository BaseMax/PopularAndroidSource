.class public Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/splash/SplashView;

.field private view7f0a02cb:Landroid/view/View;

.field private view7f0a02cc:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/splash/SplashView;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;-><init>(Lcab/snapp/passenger/units/splash/SplashView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/splash/SplashView;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;->target:Lcab/snapp/passenger/units/splash/SplashView;

    .line 34
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a02c9

    const-string v2, "field \'snappLogoIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/splash/SplashView;->snappLogoIv:Landroid/widget/ImageView;

    const v0, 0x7f0a02cb

    const-string v1, "field \'tryAgainButton\' and method \'onTryAgainButtonClicked\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'tryAgainButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/splash/SplashView;->tryAgainButton:Lcab/snapp/snappuikit/SnappButton;

    .line 37
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;->view7f0a02cb:Landroid/view/View;

    .line 38
    new-instance v0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;Lcab/snapp/passenger/units/splash/SplashView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02cc

    const-string v1, "field \'versionNameTv\' and method \'onVersionNameClicked\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "field \'versionNameTv\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/splash/SplashView;->versionNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    iput-object p2, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;->view7f0a02cc:Landroid/view/View;

    .line 47
    new-instance v0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;Lcab/snapp/passenger/units/splash/SplashView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;->target:Lcab/snapp/passenger/units/splash/SplashView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;->target:Lcab/snapp/passenger/units/splash/SplashView;

    .line 62
    iput-object v1, v0, Lcab/snapp/passenger/units/splash/SplashView;->snappLogoIv:Landroid/widget/ImageView;

    .line 63
    iput-object v1, v0, Lcab/snapp/passenger/units/splash/SplashView;->tryAgainButton:Lcab/snapp/snappuikit/SnappButton;

    .line 64
    iput-object v1, v0, Lcab/snapp/passenger/units/splash/SplashView;->versionNameTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;->view7f0a02cb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;->view7f0a02cb:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;->view7f0a02cc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/SplashView_ViewBinding;->view7f0a02cc:Landroid/view/View;

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
