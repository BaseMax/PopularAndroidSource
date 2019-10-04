.class Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$2;
.super Ljava/lang/Object;
.source "VipAdsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getGoogleTextAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

.field final synthetic val$googleTextAdContainer:Landroid/view/ViewGroup;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$2;->this$0:Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    iput-object p2, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$2;->val$parent:Landroid/view/View;

    iput-object p3, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$2;->val$googleTextAdContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$2;->val$parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 428
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$2;->this$0:Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$2;->val$googleTextAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->loadGoogleTextAds(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
