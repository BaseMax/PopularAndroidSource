.class Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;
.super Ljava/lang/Object;
.source "VipAdsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getDisplayAdsFromDfp(Lcom/ebay/nautilus/domain/data/recommendation/Placement;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

.field final synthetic val$ad:Lcom/ebay/nautilus/domain/data/recommendation/AdContent;

.field final synthetic val$impressionId:Ljava/lang/String;

.field final synthetic val$itemViewActivity:Lcom/ebay/mobile/viewitem/ItemViewActivity;

.field final synthetic val$parent:Landroid/view/View;

.field final synthetic val$placementId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;Landroid/view/View;Lcom/ebay/mobile/viewitem/ItemViewActivity;Lcom/ebay/nautilus/domain/data/recommendation/AdContent;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->this$0:Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    iput-object p2, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$parent:Landroid/view/View;

    iput-object p3, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$itemViewActivity:Lcom/ebay/mobile/viewitem/ItemViewActivity;

    iput-object p4, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$ad:Lcom/ebay/nautilus/domain/data/recommendation/AdContent;

    iput-object p5, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$impressionId:Ljava/lang/String;

    iput-object p6, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$placementId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 357
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->this$0:Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$itemViewActivity:Lcom/ebay/mobile/viewitem/ItemViewActivity;

    iget-object v2, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$ad:Lcom/ebay/nautilus/domain/data/recommendation/AdContent;

    iget-object v3, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$impressionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;->val$placementId:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->access$000(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/recommendation/AdContent;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
