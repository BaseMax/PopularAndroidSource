.class public final Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;
.super Ljava/lang/Object;
.source "ApptentiveEncryption_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptUtilsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;->cryptUtilsFactoryProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newApptentiveEncryption(Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;Landroid/content/Context;)Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;
    .locals 1

    .line 37
    new-instance v0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;-><init>(Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;Landroid/content/Context;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;-><init>(Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;->cryptUtilsFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption_Factory;->get()Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;

    move-result-object v0

    return-object v0
.end method
