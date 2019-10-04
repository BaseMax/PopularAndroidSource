.class public final Lcom/ebay/mobile/AndroidSecurityProviderInstallListener_Factory;
.super Ljava/lang/Object;
.source "AndroidSecurityProviderInstallListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final aplsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/net/AplsLogger;",
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
            "Lcom/ebay/nautilus/kernel/net/AplsLogger;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener_Factory;->aplsLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/AndroidSecurityProviderInstallListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/net/AplsLogger;",
            ">;)",
            "Lcom/ebay/mobile/AndroidSecurityProviderInstallListener_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener_Factory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAndroidSecurityProviderInstallListener(Ldagger/Lazy;)Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/ebay/nautilus/kernel/net/AplsLogger;",
            ">;)",
            "Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/net/AplsLogger;",
            ">;)",
            "Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener_Factory;->aplsLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ebay/mobile/AndroidSecurityProviderInstallListener_Factory;->get()Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;

    move-result-object v0

    return-object v0
.end method
