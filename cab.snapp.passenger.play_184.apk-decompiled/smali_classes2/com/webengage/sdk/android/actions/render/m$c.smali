.class final Lcom/webengage/sdk/android/actions/render/m$c;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/actions/render/m;

.field private b:Lcom/webengage/sdk/android/actions/render/g;


# direct methods
.method public constructor <init>(Lcom/webengage/sdk/android/actions/render/m;Landroid/content/Context;I)V
    .locals 7

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m$c;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/m$c;->b:Lcom/webengage/sdk/android/actions/render/g;

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/webengage/sdk/android/actions/render/m$c;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m$c;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/m;->a(Lcom/webengage/sdk/android/actions/render/m;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m$c;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x400

    invoke-virtual {p2, p3, p3}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m$c;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/webengage/sdk/android/actions/render/m;->a(Lcom/webengage/sdk/android/actions/render/m;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/m;->b(Lcom/webengage/sdk/android/actions/render/m;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/webengage/sdk/android/actions/render/g;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/m;->c(Lcom/webengage/sdk/android/actions/render/m;)Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/webengage/sdk/android/actions/render/g;-><init>(Lcom/webengage/sdk/android/actions/render/InAppNotificationData;Lcom/webengage/sdk/android/actions/render/m;)V

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/m$c;->b:Lcom/webengage/sdk/android/actions/render/g;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m$c;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/m;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1, p2, p3}, Lcom/webengage/sdk/android/actions/render/m;->a(Lcom/webengage/sdk/android/actions/render/m;Landroid/view/Window;I)V

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/m;->d(Lcom/webengage/sdk/android/actions/render/m;)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m$c;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance p2, Lcom/webengage/sdk/android/actions/render/o;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/m;->e(Lcom/webengage/sdk/android/actions/render/m;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/m$c;->b:Lcom/webengage/sdk/android/actions/render/g;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/m;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/m;->f(Lcom/webengage/sdk/android/actions/render/m;)Lorg/a/c;

    move-result-object v6

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/webengage/sdk/android/actions/render/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/webengage/sdk/android/actions/render/g;Landroid/app/Activity;Lorg/a/c;)V

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/render/o;->a()Landroid/webkit/WebView;

    move-result-object p2

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/m;->b(Lcom/webengage/sdk/android/actions/render/m;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/m;->b(Lcom/webengage/sdk/android/actions/render/m;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/webengage/sdk/android/actions/render/m$c;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ExceptionDialog"

    invoke-static {v0, p3}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    new-instance v0, Lcom/webengage/sdk/android/actions/exception/WebViewException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/webengage/sdk/android/actions/exception/WebViewException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/m;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p3, v0, p2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/m;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$c;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m;->c()V

    return-void
.end method
