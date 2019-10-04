.class final Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$PopulateAdRunnable;
.super Ljava/lang/Object;
.source "XoDisplayAdFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PopulateAdRunnable"
.end annotation


# instance fields
.field private final xoDisplayAdFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;)V
    .locals 1
    .param p1    # Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$PopulateAdRunnable;->xoDisplayAdFragmentWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$PopulateAdRunnable;->xoDisplayAdFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    if-eqz v1, :cond_1

    .line 445
    iget-boolean v2, v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->isUsingHouseAd:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 446
    invoke-virtual {v0, v1, v3}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->populateDisplayAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;Z)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {v0, v1, v3}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->populateHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;Z)V

    :cond_1
    :goto_0
    return-void
.end method
