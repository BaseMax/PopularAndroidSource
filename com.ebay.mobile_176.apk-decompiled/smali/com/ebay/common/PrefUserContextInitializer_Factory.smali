.class public final Lcom/ebay/common/PrefUserContextInitializer_Factory;
.super Ljava/lang/Object;
.source "PrefUserContextInitializer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/common/PrefUserContextInitializer;",
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

.field private final preferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ebay/common/PrefUserContextInitializer_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/ebay/common/PrefUserContextInitializer_Factory;->preferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/common/PrefUserContextInitializer_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;)",
            "Lcom/ebay/common/PrefUserContextInitializer_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/ebay/common/PrefUserContextInitializer_Factory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/common/PrefUserContextInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newPrefUserContextInitializer(Landroid/content/Context;Lcom/ebay/common/Preferences;)Lcom/ebay/common/PrefUserContextInitializer;
    .locals 1

    .line 37
    new-instance v0, Lcom/ebay/common/PrefUserContextInitializer;

    invoke-direct {v0, p0, p1}, Lcom/ebay/common/PrefUserContextInitializer;-><init>(Landroid/content/Context;Lcom/ebay/common/Preferences;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/common/PrefUserContextInitializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;)",
            "Lcom/ebay/common/PrefUserContextInitializer;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/ebay/common/PrefUserContextInitializer;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/Preferences;

    invoke-direct {v0, p0, p1}, Lcom/ebay/common/PrefUserContextInitializer;-><init>(Landroid/content/Context;Lcom/ebay/common/Preferences;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/common/PrefUserContextInitializer;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/ebay/common/PrefUserContextInitializer_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/common/PrefUserContextInitializer_Factory;->preferencesProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/ebay/common/PrefUserContextInitializer_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/common/PrefUserContextInitializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/ebay/common/PrefUserContextInitializer_Factory;->get()Lcom/ebay/common/PrefUserContextInitializer;

    move-result-object v0

    return-object v0
.end method
