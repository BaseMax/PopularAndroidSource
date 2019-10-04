.class public final Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;
.super Ljava/lang/Object;
.source "CheckoutMixedActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final ebayContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;"
        }
    .end annotation
.end field

.field private final googleApiAvailabilityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            ">;"
        }
    .end annotation
.end field

.field private final googlePaymentsClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/wallet/PaymentsClient;",
            ">;"
        }
    .end annotation
.end field

.field private final threeDs2ClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;",
            ">;"
        }
    .end annotation
.end field

.field private final wallClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/time/ClockWall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/wallet/PaymentsClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/time/ClockWall;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->googlePaymentsClientProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->googleApiAvailabilityProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->threeDs2ClientProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->wallClockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/wallet/PaymentsClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/time/ClockWall;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v6, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectEbayContext(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    return-void
.end method

.method public static injectGoogleApiAvailability(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method public static injectGooglePaymentsClientProvider(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/wallet/PaymentsClient;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->googlePaymentsClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectThreeDs2Client(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->threeDs2Client:Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    return-void
.end method

.method public static injectWallClock(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/nautilus/kernel/time/ClockWall;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;->wallClock:Lcom/ebay/nautilus/kernel/time/ClockWall;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->googlePaymentsClientProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->injectGooglePaymentsClientProvider(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Ljavax/inject/Provider;)V

    .line 53
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->googleApiAvailabilityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->injectGoogleApiAvailability(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    .line 54
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->injectEbayContext(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->threeDs2ClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->injectThreeDs2Client(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;)V

    .line 56
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->wallClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/time/ClockWall;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->injectWallClock(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;Lcom/ebay/nautilus/kernel/time/ClockWall;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity_MembersInjector;->injectMembers(Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivity;)V

    return-void
.end method
