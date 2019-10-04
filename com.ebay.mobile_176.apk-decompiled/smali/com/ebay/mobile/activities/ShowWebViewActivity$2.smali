.class Lcom/ebay/mobile/activities/ShowWebViewActivity$2;
.super Landroid/webkit/WebViewClient;
.source "ShowWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/ShowWebViewActivity;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private getSslErrorUrl(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 0

    .line 781
    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 812
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-boolean v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isHandlingError:Z

    if-eqz v0, :cond_0

    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iput-object p2, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->hasContentSettled:Z

    .line 825
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-boolean v2, v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-boolean v2, v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isLoadingLastPage:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iput-boolean v1, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    .line 827
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-boolean v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->okButtonView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 829
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->animationSlideUp:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 830
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->okButtonView:Landroid/view/View;

    iget-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v1, v1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->animationSlideUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 832
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->okButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->access$200(Lcom/ebay/mobile/activities/ShowWebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 836
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 838
    :cond_5
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 787
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->access$100(Lcom/ebay/mobile/activities/ShowWebViewActivity;)Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->access$100(Lcom/ebay/mobile/activities/ShowWebViewActivity;)Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->maskWebViewForUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-boolean v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isHandlingError:Z

    if-eqz v0, :cond_1

    return-void

    .line 793
    :cond_1
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_2

    .line 794
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v0, p2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isUrlLastPage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iput-boolean v1, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isLoadingLastPage:Z

    goto :goto_0

    .line 798
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v0, p2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isUrlPastLastPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 800
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iput-object p2, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    .line 801
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iput-boolean v1, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    .line 802
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onDone()V

    .line 805
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-boolean v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    if-nez v0, :cond_5

    .line 806
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_5
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isLoadingLastPage:Z

    .line 749
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isHandlingError:Z

    .line 750
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iput p2, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->httpErrorCode:I

    .line 751
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iput-object p3, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->httpErrorDescription:Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->showProgress(Z)V

    .line 753
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error from webview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] \""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" while fetching "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f120224

    goto :goto_0

    :cond_1
    const p1, 0x7f120226

    .line 757
    :goto_0
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p2, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->showDialog(I)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5

    .line 763
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 766
    :cond_0
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isLoadingLastPage:Z

    .line 767
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isHandlingError:Z

    .line 768
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p2, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->showProgress(Z)V

    .line 770
    sget-object p2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "Error from webview %s: \"%s\" while fetching %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v4}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 771
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    invoke-direct {p0, p3}, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->getSslErrorUrl(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, p1

    .line 770
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .line 844
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 845
    sget-object v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v0, p2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isUrlPastLastPage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 849
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iput-object p2, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->url:Ljava/lang/String;

    .line 850
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iput-boolean v2, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isDoneFlag:Z

    .line 851
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onDone()V

    return v1

    .line 858
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v0, p2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->rewriteUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 861
    :goto_0
    iget-object v3, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {v3, p1, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 865
    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 866
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 868
    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-nez v5, :cond_5

    const-string p1, "data"

    .line 871
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    .line 877
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p1, v4}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v2

    .line 888
    :cond_5
    iget-object v5, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-static {v5, v4}, Lcom/ebay/motors/videos/FwContextUtil;->getLocalActivity(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 889
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 892
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p1, v4}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 897
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-boolean p1, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->hasContentSettled:Z

    if-nez p1, :cond_6

    .line 898
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->finish()V

    :cond_6
    return v2

    .line 902
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    .line 906
    :cond_8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 909
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p1, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v2

    .line 913
    :cond_9
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p1, v3}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->isSignIn(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 915
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    const-string/jumbo p2, "ru"

    invoke-virtual {v3, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->returnUrl:Ljava/lang/String;

    .line 917
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_a

    .line 918
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sign-in URL detected with return path:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->returnUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 920
    :cond_a
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-boolean p1, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->passiveSso:Z

    if-eqz p1, :cond_e

    .line 922
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 925
    sget-object p2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p2, p2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p2, :cond_b

    .line 926
    sget-object p2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "User already logged in, launching SSO"

    invoke-virtual {p2, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 928
    :cond_b
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v0, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ShowWebViewActivity;->scope:Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v1, v1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->returnUrl:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->launchSso(Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 932
    :cond_c
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_d

    .line 933
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "User not logged in, showing sign in"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_d
    const/4 p1, 0x0

    .line 935
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    .line 936
    invoke-static {p1, p2}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 937
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$2;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return v2

    .line 944
    :cond_e
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_f

    .line 945
    sget-object p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "passiveSso not enabled, ignoring sign-in URL"

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_f
    return v1

    :cond_10
    return v1
.end method
