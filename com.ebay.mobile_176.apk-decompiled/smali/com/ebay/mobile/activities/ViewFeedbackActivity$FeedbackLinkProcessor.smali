.class public Lcom/ebay/mobile/activities/ViewFeedbackActivity$FeedbackLinkProcessor;
.super Ljava/lang/Object;
.source "ViewFeedbackActivity.java"

# interfaces
.implements Lcom/ebay/mobile/mktgtech/deeplinking/LinkProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ViewFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedbackLinkProcessor"
.end annotation


# static fields
.field public static final NAV_TARGET:Ljava/lang/String; = "user.feedback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    const-string/jumbo v0, "user"

    .line 298
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    const-string v1, "1"

    const-string v2, "buying"

    .line 302
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v4, "1"

    const-string/jumbo v5, "selling"

    .line 303
    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 305
    :goto_0
    new-instance v4, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1, v0}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v4, v2}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setTabPosition(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 309
    invoke-virtual {v4, v3}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->setTabPosition(I)Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;

    .line 311
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/ebay/mobile/viewitem/feedback/FeedbackIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
