.class Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$1;
.super Ljava/lang/Object;
.source "XoDisplayAdFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->onMerchandiseLoaded(Lcom/ebay/mobile/merch/MerchandiseDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$1;->this$0:Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$1;->this$0:Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    iget-boolean v0, v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->isUsingHouseAd:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$1;->this$0:Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->showHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    :cond_0
    return-void
.end method
