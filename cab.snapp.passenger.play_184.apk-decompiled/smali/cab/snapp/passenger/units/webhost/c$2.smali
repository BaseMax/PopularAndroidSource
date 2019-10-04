.class final Lcab/snapp/passenger/units/webhost/c$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/webhost/c;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/webhost/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/webhost/c;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcab/snapp/passenger/units/webhost/c$2;->a:Lcab/snapp/passenger/units/webhost/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcab/snapp/passenger/units/webhost/c$2;->a:Lcab/snapp/passenger/units/webhost/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/webhost/c;->b(Lcab/snapp/passenger/units/webhost/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object p1, p1, Lcab/snapp/passenger/units/webhost/WebHostView;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcab/snapp/passenger/units/webhost/c$2;->a:Lcab/snapp/passenger/units/webhost/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/webhost/c;->a(Lcab/snapp/passenger/units/webhost/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/webhost/WebHostView;

    iget-object p1, p1, Lcab/snapp/passenger/units/webhost/WebHostView;->progressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/c$2;->a:Lcab/snapp/passenger/units/webhost/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/webhost/c;->c(Lcab/snapp/passenger/units/webhost/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/c$2;->a:Lcab/snapp/passenger/units/webhost/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/webhost/c;->d(Lcab/snapp/passenger/units/webhost/c;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/a;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/units/webhost/a;->handleOnUrlClick(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
