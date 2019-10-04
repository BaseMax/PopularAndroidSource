.class public Lcom/ebay/android/widget/AplsTrackingWebView;
.super Lcom/ebay/android/widget/TrackingWebView;
.source "AplsTrackingWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/TrackingWebView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/AplsTrackingWebView;->initializeAplsTrackingWebChromeClient(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ebay/android/widget/TrackingWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/AplsTrackingWebView;->initializeAplsTrackingWebChromeClient(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/android/widget/TrackingWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/AplsTrackingWebView;->initializeAplsTrackingWebChromeClient(Landroid/content/Context;)V

    return-void
.end method

.method private initializeAplsTrackingWebChromeClient(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/ebay/android/widget/AplsTrackingWebView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    instance-of v0, p1, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 42
    :cond_2
    new-instance v0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;

    invoke-direct {v0, p1}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/AplsTrackingWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
