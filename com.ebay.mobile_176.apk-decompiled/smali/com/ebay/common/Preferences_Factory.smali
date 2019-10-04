.class public final Lcom/ebay/common/Preferences_Factory;
.super Ljava/lang/Object;
.source "Preferences_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/common/Preferences;",
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

.field private final preferencesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/util/PreferencesHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/util/PreferencesHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ebay/common/Preferences_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/ebay/common/Preferences_Factory;->preferencesHelperProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/ebay/common/Preferences_Factory;->cryptUtilsFactoryProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/ebay/common/Preferences_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/common/Preferences_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/util/PreferencesHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Lcom/ebay/common/Preferences_Factory;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/ebay/common/Preferences_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ebay/common/Preferences_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newPreferences(Landroid/content/Context;Lcom/ebay/nautilus/domain/util/PreferencesHelper;Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;Landroid/content/SharedPreferences;)Lcom/ebay/common/Preferences;
    .locals 1

    .line 69
    new-instance v0, Lcom/ebay/common/Preferences;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ebay/common/Preferences;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/util/PreferencesHelper;Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/common/Preferences;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/util/PreferencesHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Lcom/ebay/common/Preferences;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/ebay/common/Preferences;

    .line 46
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 47
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/util/PreferencesHelper;

    .line 48
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;

    .line 49
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ebay/common/Preferences;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/util/PreferencesHelper;Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;Landroid/content/SharedPreferences;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/common/Preferences;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/ebay/common/Preferences_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/common/Preferences_Factory;->preferencesHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/ebay/common/Preferences_Factory;->cryptUtilsFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/ebay/common/Preferences_Factory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/ebay/common/Preferences_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/common/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/ebay/common/Preferences_Factory;->get()Lcom/ebay/common/Preferences;

    move-result-object v0

    return-object v0
.end method
