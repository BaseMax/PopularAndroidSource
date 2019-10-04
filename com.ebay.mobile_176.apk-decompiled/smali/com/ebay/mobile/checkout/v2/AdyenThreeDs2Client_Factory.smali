.class public final Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client_Factory;
.super Ljava/lang/Object;
.source "AdyenThreeDs2Client_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client_Factory;->deviceConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client_Factory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAdyenThreeDs2Client(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;
    .locals 1

    .line 32
    new-instance v0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client_Factory;->deviceConfigurationProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client_Factory;->get()Lcom/ebay/mobile/checkout/v2/AdyenThreeDs2Client;

    move-result-object v0

    return-object v0
.end method
