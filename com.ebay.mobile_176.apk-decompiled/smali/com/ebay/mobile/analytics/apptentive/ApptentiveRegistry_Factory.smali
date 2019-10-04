.class public final Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;
.super Ljava/lang/Object;
.source "ApptentiveRegistry_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final apptentiveConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final apptentiveEncryptionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;",
            ">;"
        }
    .end annotation
.end field

.field private final dcsObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final preferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;"
        }
    .end annotation
.end field

.field private final statusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->dcsObservableProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->applicationProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->preferencesProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->apptentiveConfigProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p5, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->statusProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p6, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->apptentiveEncryptionProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;",
            ">;)",
            "Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;"
        }
    .end annotation

    .line 74
    new-instance v7, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newApptentiveRegistry(Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;Landroid/app/Application;Lcom/ebay/common/Preferences;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;)Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;
    .locals 8

    .line 90
    new-instance v7, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;Landroid/app/Application;Lcom/ebay/common/Preferences;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;",
            ">;)",
            "Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;"
        }
    .end annotation

    .line 58
    new-instance v7, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;

    .line 59
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;

    .line 60
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/Application;

    .line 61
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/ebay/common/Preferences;

    .line 62
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;

    .line 63
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;

    .line 64
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;-><init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;Landroid/app/Application;Lcom/ebay/common/Preferences;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->dcsObservableProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->applicationProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->preferencesProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->apptentiveConfigProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->statusProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->apptentiveEncryptionProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry_Factory;->get()Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;

    move-result-object v0

    return-object v0
.end method
