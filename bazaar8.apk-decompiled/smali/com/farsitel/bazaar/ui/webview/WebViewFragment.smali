.class public Lcom/farsitel/bazaar/ui/webview/WebViewFragment;
.super Lc/c/a/n/c/a/b;
.source "WebViewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/webview/WebViewFragment$a;
    }
.end annotation


# static fields
.field public static final ia:Lcom/farsitel/bazaar/ui/webview/WebViewFragment$a;


# instance fields
.field public ja:Lc/c/a/n/B/d;

.field public final ka:Lc/c/a/n/B/a;

.field public la:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ia:Lcom/farsitel/bazaar/ui/webview/WebViewFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/n/B/c;

    invoke-direct {v0, p0}, Lc/c/a/n/B/c;-><init>(Lcom/farsitel/bazaar/ui/webview/WebViewFragment;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ka:Lc/c/a/n/B/a;

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->la:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/WebViewScreen;
    .locals 2

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/WebViewScreen;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ja:Lc/c/a/n/B/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/B/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/WebViewScreen;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "webViewFragmentArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/WebViewScreen;

    move-result-object v0

    return-object v0
.end method

.method public final Ua()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget v0, Lc/c/a/e;->webview:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bazaar-wv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->Xa()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 5
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ja:Lc/c/a/n/B/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc/c/a/n/B/d;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->_a()Lc/c/a/n/B/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    :cond_0
    const-string v0, "webViewFragmentArgs"

    .line 7
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Va()Lc/c/a/n/B/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ka:Lc/c/a/n/B/a;

    return-object v0
.end method

.method public final Wa()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Lb/o/a/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid state in webView and activity is null = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ja:Lc/c/a/n/B/d;

    const/4 v1, 0x0

    const-string v2, "webViewFragmentArgs"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc/c/a/n/B/d;->c()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 6
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/w/j;->i()Z

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v3

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ja:Lc/c/a/n/B/d;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lc/c/a/n/B/d;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_4
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    return-void
.end method

.method public Xa()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final Ya()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->webview:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ja:Lc/c/a/n/B/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/B/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "webViewFragmentArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final Za()Landroid/view/View;
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "webView is not available"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->Wa()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public _a()Lc/c/a/n/B/b;
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/n/B/b;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ka:Lc/c/a/n/B/a;

    invoke-direct {v0, v1}, Lc/c/a/n/B/b;-><init>(Lc/c/a/n/B/a;)V

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0073

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    .line 2
    :catch_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->Za()Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->Ua()V

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->Ya()V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/B/d;->a:Lc/c/a/n/B/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/B/d$a;->a(Landroid/os/Bundle;)Lc/c/a/n/B/d;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->ja:Lc/c/a/n/B/d;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->la:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->la:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->la:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->la:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public oa()V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lc/c/a/e;->webview:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2
    :cond_0
    sget v0, Lc/c/a/e;->webview:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_1
    invoke-super {p0}, Lc/c/a/d/f/o;->oa()V

    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->La()V

    return-void
.end method

.method public sa()V
    .locals 1

    .line 1
    sget v0, Lc/c/a/e;->webview:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 2
    :cond_0
    invoke-super {p0}, Lc/c/a/n/c/a/b;->sa()V

    return-void
.end method

.method public ta()V
    .locals 1

    .line 1
    sget v0, Lc/c/a/e;->webview:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/webview/WebViewFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 2
    :cond_0
    invoke-super {p0}, Lc/c/a/n/c/a/b;->ta()V

    return-void
.end method
