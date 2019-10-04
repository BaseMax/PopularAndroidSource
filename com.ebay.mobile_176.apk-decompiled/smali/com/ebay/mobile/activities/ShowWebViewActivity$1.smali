.class Lcom/ebay/mobile/activities/ShowWebViewActivity$1;
.super Lcom/ebay/android/widget/AplsTrackingWebChromeClient;
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
.method constructor <init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$1;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {p0, p2}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .line 722
    invoke-super {p0, p1, p2}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 723
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$1;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-boolean p1, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->useLessProgressSpinner:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 724
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$1;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    const/16 v2, 0x1e

    if-gt p2, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->showProgress(Z)V

    goto :goto_0

    .line 726
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$1;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    const/16 v2, 0x63

    if-gt p2, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->showProgress(Z)V

    :goto_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 734
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$1;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iput-object p2, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 735
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$1;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->access$000(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V

    const/4 p1, 0x1

    return p1
.end method
