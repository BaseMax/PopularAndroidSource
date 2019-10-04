.class public final synthetic Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$oRymDTCg2zpfMwwqdCZ4E4wPVXU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;

.field private final synthetic f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$oRymDTCg2zpfMwwqdCZ4E4wPVXU;->f$0:Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$oRymDTCg2zpfMwwqdCZ4E4wPVXU;->f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$oRymDTCg2zpfMwwqdCZ4E4wPVXU;->f$0:Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutMixedActivity$oRymDTCg2zpfMwwqdCZ4E4wPVXU;->f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->lambda$onSessionChanged$0(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/googlepay/WalletPayMetadata;)V

    return-void
.end method
