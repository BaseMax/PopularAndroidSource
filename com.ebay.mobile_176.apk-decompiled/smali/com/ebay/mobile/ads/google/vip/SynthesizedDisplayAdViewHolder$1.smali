.class Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SynthesizedDisplayAdViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/ebay/mobile/databinding/AdsVipPbDisplayBinding;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder$1;->this$0:Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder$1;->this$0:Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;

    invoke-virtual {p1}, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->nativeAdUpdated()V

    return-void
.end method
