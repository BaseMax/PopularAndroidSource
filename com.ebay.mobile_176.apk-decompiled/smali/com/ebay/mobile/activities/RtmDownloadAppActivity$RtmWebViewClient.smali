.class Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "RtmDownloadAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/RtmDownloadAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RtmWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;Lcom/ebay/mobile/activities/RtmDownloadAppActivity$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;-><init>(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-static {p2}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->access$200(Lcom/ebay/mobile/activities/RtmDownloadAppActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-static {p1}, Lcom/ebay/mobile/util/Util;->resetAppStatus(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "RtmDownloadAppActivity"

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": errorCode = <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: description = <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">: failingUrl = <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ">"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_0

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    iget-object p1, p1, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    const/4 p2, 0x0

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmDownloadAppActivity$RtmWebViewClient;->this$0:Lcom/ebay/mobile/activities/RtmDownloadAppActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/RtmDownloadAppActivity;->finish()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "RtmDownloadAppActivity"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url = <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
