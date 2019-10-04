.class public Lcom/ebay/mobile/activities/WebViewLinkProcessor;
.super Ljava/lang/Object;
.source "WebViewLinkProcessor.java"

# interfaces
.implements Lcom/ebay/mobile/mktgtech/deeplinking/LinkProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;
    }
.end annotation


# static fields
.field public static final NAV_TARGET:Ljava/lang/String; = "webview"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrustedLandingPage(Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 152
    invoke-static {p1}, Lcom/ebay/mobile/activities/HybridWebLandingActivity;->isTrustedLanding(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public processUri(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 6
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/mobile/mktgtech/deeplinking/MissingParameterException;,
            Lcom/ebay/mobile/mktgtech/deeplinking/MalformedParameterException;
        }
    .end annotation

    const-string/jumbo v0, "url"

    .line 24
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 27
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/WebViewLinkProcessor;->isTrustedLandingPage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ssoScope"

    .line 40
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "//EBAYSSO/EBAYCLASSIC"

    const-string/jumbo v3, "true"

    .line 44
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const-string v3, "false"

    .line 46
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v2, v1

    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    new-instance v1, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;

    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;-><init>(Landroid/content/Context;)V

    const-string p1, "1"

    const-string v3, "external"

    .line 55
    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->setExternal(Z)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;

    move-result-object p1

    const-string/jumbo v1, "title"

    .line 56
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->setTitle(Ljava/lang/String;)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->setUrl(Ljava/lang/String;)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;

    move-result-object p1

    if-eqz v4, :cond_3

    .line 60
    invoke-virtual {p1, v2}, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->setSsoScope(Ljava/lang/String;)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->setPassiveSso(Z)Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;

    .line 62
    :cond_3
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/WebViewLinkProcessor$WebViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 28
    :cond_4
    new-instance p1, Lcom/ebay/mobile/mktgtech/deeplinking/MalformedParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "webview link requires a \"trusted\" URL, this URL is untrusted:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ebay/mobile/mktgtech/deeplinking/MalformedParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_5
    new-instance p1, Lcom/ebay/mobile/mktgtech/deeplinking/MissingParameterException;

    const-string/jumbo p2, "webview link requires a valid URL"

    invoke-direct {p1, p2}, Lcom/ebay/mobile/mktgtech/deeplinking/MissingParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
