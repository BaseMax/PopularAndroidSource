.class public final Lcab/snapp/passenger/units/webhost/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/webhost/WebHostView;",
        "Lcab/snapp/passenger/units/webhost/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/webhost/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v1, v1, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/webhost/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/webhost/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/webhost/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final closeKeyboardIfNeeded()V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcab/snapp/passenger/units/webhost/c;->a()V

    return-void
.end method

.method public final onBackButtonClicked()V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/a;->onApplicationRootBackPressed()V

    :cond_0
    return-void
.end method

.method public final onCheckAndBackWebview()Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/webhost/c;->a()V

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final onHomeButtonClicked()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/a;->a()V

    :cond_0
    return-void
.end method

.method public final onInitialize()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcab/snapp/passenger/units/webhost/c$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/webhost/c$1;-><init>(Lcab/snapp/passenger/units/webhost/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 70
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcab/snapp/passenger/units/webhost/c$2;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/webhost/c$2;-><init>(Lcab/snapp/passenger/units/webhost/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method public final onIsTopBarHiddenReady(Ljava/lang/Boolean;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/webhost/WebHostView;->changeTopBarVisibility(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final onNoTitleWebHost()V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/webhost/WebHostView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final onSetupTheme(ILandroid/app/Activity;)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1152
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const v1, 0x7f06012a

    if-lt p1, v0, :cond_1

    .line 1154
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/webhost/WebHostView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/webhost/WebHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 1158
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/webhost/WebHostView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/webhost/WebHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_0
    if-eqz p2, :cond_2

    .line 139
    invoke-static {p2, p1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColor(Landroid/app/Activity;I)V

    :cond_2
    return-void
.end method

.method public final onUrlReady(Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onWebHostIsInitializedFromInbox()V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->homeImageButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 198
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/webhost/WebHostView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/webhost/WebHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120151

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/webhost/WebHostView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final onWebHostIsInitializedFromService(Ljava/lang/String;)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object v0, v0, Lcab/snapp/passenger/units/webhost/WebHostView;->homeImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 212
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/WebHostView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/webhost/WebHostView;->setTitle(Ljava/lang/String;)V

    return-void
.end method
