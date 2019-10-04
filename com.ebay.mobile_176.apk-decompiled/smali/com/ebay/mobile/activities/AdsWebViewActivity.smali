.class public Lcom/ebay/mobile/activities/AdsWebViewActivity;
.super Lcom/ebay/mobile/activities/ShowWebViewActivity;
.source "AdsWebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/AdsWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TITLE"

    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "impression"

    .line 29
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 38
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 39
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/AdsWebViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v1, 0x7f08039c

    .line 40
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setLogo(I)V

    return v0
.end method
