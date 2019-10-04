.class Lcom/ebay/mobile/activities/RtmHtmlActivity$1;
.super Lcom/ebay/android/widget/AplsTrackingWebChromeClient;
.source "RtmHtmlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/RtmHtmlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

.field final synthetic val$progressView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/RtmHtmlActivity;Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/view/View;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$1;->this$0:Lcom/ebay/mobile/activities/RtmHtmlActivity;

    iput-object p3, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$1;->val$progressView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 105
    invoke-super {p0, p1, p2}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 106
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmHtmlActivity$1;->val$progressView:Landroid/view/View;

    const/16 v0, 0x63

    if-gt p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
