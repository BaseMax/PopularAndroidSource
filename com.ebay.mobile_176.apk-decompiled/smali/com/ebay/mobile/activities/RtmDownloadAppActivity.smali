.class public Lcom/ebay/mobile/activities/RtmDownloadAppActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "RtmDownloadAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;
    }
.end annotation


# instance fields
.field protected final dialogManager:Lcom/ebay/common/view/util/DialogManager;

.field private downloadUrl:Ljava/lang/String;

.field private myTitle:Ljava/lang/String;

.field private myWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myWebView:Landroid/webkit/WebView;

    .line 33
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->downloadUrl:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myTitle:Ljava/lang/String;

    .line 35
    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager;

    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myTitle:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "RtmDownload"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 46
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 47
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "android.intent.extra.TITLE"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadUrl"

    .line 52
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    :cond_0
    iput-object v2, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->downloadUrl:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myTitle:Ljava/lang/String;

    const p1, 0x7f0d03cf

    .line 57
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0e12

    .line 59
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myWebView:Landroid/webkit/WebView;

    .line 61
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 62
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 64
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    iget-object v2, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;-><init>(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;Lcom/ebay/mobile/activities/RtmDownloadAppActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 70
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const p1, 0x7f0a0e13

    .line 72
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ButtonBar;

    .line 73
    invoke-virtual {p1}, Lcom/ebay/android/widget/ButtonBar;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$1;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$1;-><init>(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p1}, Lcom/ebay/android/widget/ButtonBar;->getPositiveButton()Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$2;-><init>(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0a1e

    .line 116
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    new-instance v0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$3;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$3;-><init>(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 159
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 133
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onResume()V

    .line 134
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected recoverFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    return-void
.end method
