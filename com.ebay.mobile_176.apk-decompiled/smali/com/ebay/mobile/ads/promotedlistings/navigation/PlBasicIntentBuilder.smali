.class public Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicIntentBuilder;
.super Ljava/lang/Object;
.source "PlBasicIntentBuilder.java"


# instance fields
.field final listingId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicIntentBuilder;->listingId:J

    return-void
.end method

.method public static createWebViewIntent(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Landroid/content/Intent;
    .locals 3
    .param p0    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->clientPresentationMetadata()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "viewTitle"

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Lcom/ebay/mobile/activities/ShowWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "url"

    .line 44
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->url:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.TITLE"

    .line 45
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/ads/promotedlistings/PlBasicActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "listing_id"

    .line 31
    iget-wide v1, p0, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicIntentBuilder;->listingId:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method
