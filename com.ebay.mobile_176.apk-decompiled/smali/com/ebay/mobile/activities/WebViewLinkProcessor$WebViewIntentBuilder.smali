.class Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;
.super Ljava/lang/Object;
.source "WebViewLinkProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/WebViewLinkProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewIntentBuilder"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field external:Z

.field ssoScope:Ljava/lang/String;

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;

.field usePassiveSso:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 4

    .line 111
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->context:Landroid/content/Context;

    const-class v2, Lcom/ebay/mobile/activities/HybridWebLandingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    .line 113
    iget-object v2, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.extra.TITLE"

    .line 116
    iget-object v2, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_0
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->external:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 123
    sget-object v1, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->EXTRA_FLAG_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v1, "ok"

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "show_menu"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "back"

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->usePassiveSso:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "passive_sso"

    .line 137
    iget-boolean v2, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->usePassiveSso:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_scope"

    .line 138
    iget-object v2, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->ssoScope:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method public setExternal(Z)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->external:Z

    return-object p0
.end method

.method public setPassiveSso(Z)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->usePassiveSso:Z

    return-object p0
.end method

.method public setSsoScope(Ljava/lang/String;)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->ssoScope:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->url:Ljava/lang/String;

    return-object p0
.end method
