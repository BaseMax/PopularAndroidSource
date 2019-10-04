.class Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ShowWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ShowWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/ShowWebViewActivity;)V
    .locals 0

    .line 1380
    iput-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1385
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p1, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/webkit/WebView;->flingScroll(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1392
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p1, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    float-to-int p2, p4

    neg-int p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/webkit/WebView;->flingScroll(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    float-to-int p1, p4

    .line 1400
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p2, p2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p3, p3, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getScale()F

    move-result p3

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1401
    iget-object p3, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p3, p3, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getScrollY()I

    move-result p3

    iget-object p4, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p4, p4, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p4}, Landroid/webkit/WebView;->getHeight()I

    move-result p4

    add-int/2addr p3, p4

    add-int p4, p3, p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    .line 1404
    iget-object v1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v1, v1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    .line 1407
    iget-object v2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object v2, v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    add-int/2addr v2, p1

    if-gez v2, :cond_1

    .line 1408
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p1, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p2, p2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_0

    :cond_1
    if-le p4, p2, :cond_2

    .line 1411
    iget-object p1, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p1, p1, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    sub-int/2addr p2, p3

    invoke-virtual {p1, v1, p2}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_0

    :cond_2
    if-ge p4, p2, :cond_3

    .line 1414
    iget-object p2, p0, Lcom/ebay/mobile/activities/ShowWebViewActivity$ScrollGestureListener;->this$0:Lcom/ebay/mobile/activities/ShowWebViewActivity;

    iget-object p2, p2, Lcom/ebay/mobile/activities/ShowWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, v1, p1}, Landroid/webkit/WebView;->scrollBy(II)V

    :cond_3
    :goto_0
    return v0
.end method
