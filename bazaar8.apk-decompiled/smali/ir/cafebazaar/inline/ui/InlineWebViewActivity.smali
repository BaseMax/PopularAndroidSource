.class public Lir/cafebazaar/inline/ui/InlineWebViewActivity;
.super Landroid/app/Activity;
.source "InlineWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/InlineWebViewActivity$a;,
        Lir/cafebazaar/inline/ui/InlineWebViewActivity$b;,
        Lir/cafebazaar/inline/ui/InlineWebViewActivity$c;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ProgressBar;

.field public b:Landroid/webkit/WebView;

.field public c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a(Lf/a/a/e/g;Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-interface {p0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    const-class v2, Lir/cafebazaar/inline/ui/InlineWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_url"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_post_data"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4
    invoke-interface {p0}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p0

    const-string p1, "extra_theme"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final a(Lir/cafebazaar/inline/ui/Theme;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 5
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lf/a/a/f;->inline_activity_web:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 4
    sget p1, Lf/a/a/e;->webview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    .line 5
    sget p1, Lf/a/a/e;->progressBar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->a:Landroid/widget/ProgressBar;

    .line 6
    sget p1, Lf/a/a/e;->progressContainer:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_theme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ui/Theme;

    .line 8
    invoke-virtual {p0, v0}, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->a(Lir/cafebazaar/inline/ui/Theme;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_post_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 11
    iget-object v2, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v3, Lir/cafebazaar/inline/ui/InlineWebViewActivity$b;

    iget-object v4, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->a:Landroid/widget/ProgressBar;

    invoke-direct {v3, p1, v4}, Lir/cafebazaar/inline/ui/InlineWebViewActivity$b;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 12
    iget-object v2, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v3, Lir/cafebazaar/inline/ui/InlineWebViewActivity$c;

    iget-object v4, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, p1, v4, p0}, Lir/cafebazaar/inline/ui/InlineWebViewActivity$c;-><init>(Landroid/widget/FrameLayout;Ljava/util/concurrent/atomic/AtomicInteger;Lir/cafebazaar/inline/ui/InlineWebViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 13
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lir/cafebazaar/inline/ui/InlineWebViewActivity$a;

    invoke-direct {v2, p0}, Lir/cafebazaar/inline/ui/InlineWebViewActivity$a;-><init>(Lir/cafebazaar/inline/ui/InlineWebViewActivity;)V

    const-string v3, "Android"

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 15
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 16
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 17
    :cond_0
    sget p1, Lf/a/a/f;->inline_webview_missing:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    :goto_0
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 5
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
