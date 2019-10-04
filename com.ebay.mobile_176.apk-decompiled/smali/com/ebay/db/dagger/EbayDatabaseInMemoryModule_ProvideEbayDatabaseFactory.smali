.class public final Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;
.super Ljava/lang/Object;
.source "EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/db/EbayDatabase;",
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

.field private final module:Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;


# direct methods
.method public constructor <init>(Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;->module:Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;

    .line 19
    iput-object p2, p0, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;Ljavax/inject/Provider;)Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;-><init>(Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;Ljavax/inject/Provider;)Lcom/ebay/db/EbayDatabase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/ebay/db/EbayDatabase;"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;->proxyProvideEbayDatabase(Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;Landroid/content/Context;)Lcom/ebay/db/EbayDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideEbayDatabase(Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;Landroid/content/Context;)Lcom/ebay/db/EbayDatabase;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;->provideEbayDatabase(Landroid/content/Context;)Lcom/ebay/db/EbayDatabase;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/db/EbayDatabase;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/ebay/db/EbayDatabase;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;->module:Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;

    iget-object v1, p0, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;->provideInstance(Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;Ljavax/inject/Provider;)Lcom/ebay/db/EbayDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;->get()Lcom/ebay/db/EbayDatabase;

    move-result-object v0

    return-object v0
.end method
