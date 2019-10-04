.class public final synthetic Lcom/ebay/mobile/ads/google/display/view/-$$Lambda$AnswersGoogleDisplayAdView$_0pGQpDhY6hsmYvp_We7ZGiPlPU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/gms/ads/formats/NativeAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/view/-$$Lambda$AnswersGoogleDisplayAdView$_0pGQpDhY6hsmYvp_We7ZGiPlPU;->f$0:Lcom/google/android/gms/ads/formats/NativeAdView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/-$$Lambda$AnswersGoogleDisplayAdView$_0pGQpDhY6hsmYvp_We7ZGiPlPU;->f$0:Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-static {v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->lambda$removeAdView$1(Lcom/google/android/gms/ads/formats/NativeAdView;)V

    return-void
.end method
