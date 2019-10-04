.class public Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/CsaGoogleTextAdListener;
.super Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;
.source "CsaGoogleTextAdListener.java"


# instance fields
.field final placementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;-><init>(Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;)V

    .line 18
    iput-object p3, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/CsaGoogleTextAdListener;->placementId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMapKey()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/CsaGoogleTextAdListener;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getToastContext()Landroid/content/Context;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/CsaGoogleTextAdListener;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
