.class public Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicLinkProcessor;
.super Ljava/lang/Object;
.source "PlBasicLinkProcessor.java"

# interfaces
.implements Lcom/ebay/mobile/mktgtech/deeplinking/LinkProcessor;


# annotations
.annotation runtime Lcom/ebay/mobile/mktgtech/deeplinking/devtools/LinkDetails;
    description = "Promoted listings page"
.end annotation

.annotation runtime Lcom/ebay/mobile/mktgtech/deeplinking/devtools/Parameters;
    value = {
        .subannotation Lcom/ebay/mobile/mktgtech/deeplinking/devtools/Parameter;
            description = "Item ID"
            name = "id"
            required = true
            type = .enum Lcom/ebay/mobile/mktgtech/deeplinking/devtools/ParameterType;->STRING:Lcom/ebay/mobile/mktgtech/deeplinking/devtools/ParameterType;
        .end subannotation,
        .subannotation Lcom/ebay/mobile/mktgtech/deeplinking/devtools/Parameter;
            description = "the dev tool is busted unless we have an optional param"
            name = "unused"
            required = false
        .end subannotation
    }
.end annotation


# static fields
.field public static final NAV_TARGET:Ljava/lang/String; = "item.promote"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processUri(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
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

    const-string v0, "id"

    .line 29
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 31
    new-instance v0, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicIntentBuilder;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicIntentBuilder;-><init>(J)V

    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicIntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
