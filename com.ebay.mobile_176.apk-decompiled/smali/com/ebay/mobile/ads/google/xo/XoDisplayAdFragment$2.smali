.class Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$2;
.super Ljava/lang/Object;
.source "XoDisplayAdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getHouseAdCtaOnClickListner(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

.field final synthetic val$ctaUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$2;->this$0:Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    iput-object p2, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$2;->val$ctaUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 417
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v0, "AdFallbackClick"

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 418
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$2;->this$0:Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 419
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$2;->this$0:Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$2;->val$ctaUrl:Ljava/lang/String;

    .line 421
    invoke-static {}, Lcom/ebay/common/view/util/EbayCountryManager;->getBuyerProtectionPageTitle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    .line 419
    invoke-static {p1, v0, v1, v2}, Lcom/ebay/mobile/activities/ShowFileWebViewActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
