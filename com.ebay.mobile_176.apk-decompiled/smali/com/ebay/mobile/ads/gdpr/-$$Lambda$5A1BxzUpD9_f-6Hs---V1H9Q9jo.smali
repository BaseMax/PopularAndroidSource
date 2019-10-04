.class public final synthetic Lcom/ebay/mobile/ads/gdpr/-$$Lambda$5A1BxzUpD9_f-6Hs---V1H9Q9jo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/ads/gdpr/-$$Lambda$5A1BxzUpD9_f-6Hs---V1H9Q9jo;->f$0:Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/ads/gdpr/-$$Lambda$5A1BxzUpD9_f-6Hs---V1H9Q9jo;->f$0:Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;->onMoreOptionsClicked(Landroid/view/View;)V

    return-void
.end method
