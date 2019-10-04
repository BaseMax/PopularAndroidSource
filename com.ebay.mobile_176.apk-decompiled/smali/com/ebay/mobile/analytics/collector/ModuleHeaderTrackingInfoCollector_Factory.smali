.class public final Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector_Factory;
.super Ljava/lang/Object;
.source "ModuleHeaderTrackingInfoCollector_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;",
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector_Factory;->deviceConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ">;)",
            "Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector_Factory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newModuleHeaderTrackingInfoCollector(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;
    .locals 1

    .line 34
    new-instance v0, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ">;)",
            "Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector_Factory;->deviceConfigurationProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector_Factory;->get()Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;

    move-result-object v0

    return-object v0
.end method
