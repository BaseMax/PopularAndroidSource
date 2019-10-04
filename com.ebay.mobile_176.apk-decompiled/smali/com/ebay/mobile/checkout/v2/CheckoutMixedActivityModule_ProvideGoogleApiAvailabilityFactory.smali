.class public final Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;
.super Ljava/lang/Object;
.source "CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/gms/common/GoogleApiAvailability;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;-><init>()V

    sput-object v0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;->INSTANCE:Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;->INSTANCE:Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1

    .line 19
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;->proxyProvideGoogleApiAvailability()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideGoogleApiAvailability()Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 2

    .line 28
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule;->provideGoogleApiAvailability()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1

    .line 15
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;->provideInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGoogleApiAvailabilityFactory;->get()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    return-object v0
.end method
