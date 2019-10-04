.class public final Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;
.super Ljava/lang/Object;
.source "EbayDatabaseModule_ProvideEbayDatabaseFactory.java"

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
.field private final module:Lcom/ebay/db/dagger/EbayDatabaseModule;

.field private final providerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/db/dagger/EbayDatabaseProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/db/dagger/EbayDatabaseModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/dagger/EbayDatabaseModule;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/db/dagger/EbayDatabaseProvider;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;->module:Lcom/ebay/db/dagger/EbayDatabaseModule;

    .line 17
    iput-object p2, p0, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;->providerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/ebay/db/dagger/EbayDatabaseModule;Ljavax/inject/Provider;)Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/dagger/EbayDatabaseModule;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/db/dagger/EbayDatabaseProvider;",
            ">;)",
            "Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;-><init>(Lcom/ebay/db/dagger/EbayDatabaseModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/ebay/db/dagger/EbayDatabaseModule;Ljavax/inject/Provider;)Lcom/ebay/db/EbayDatabase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/dagger/EbayDatabaseModule;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/db/dagger/EbayDatabaseProvider;",
            ">;)",
            "Lcom/ebay/db/EbayDatabase;"
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;->proxyProvideEbayDatabase(Lcom/ebay/db/dagger/EbayDatabaseModule;Ljava/lang/Object;)Lcom/ebay/db/EbayDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideEbayDatabase(Lcom/ebay/db/dagger/EbayDatabaseModule;Ljava/lang/Object;)Lcom/ebay/db/EbayDatabase;
    .locals 0

    .line 37
    check-cast p1, Lcom/ebay/db/dagger/EbayDatabaseProvider;

    .line 38
    invoke-virtual {p0, p1}, Lcom/ebay/db/dagger/EbayDatabaseModule;->provideEbayDatabase(Lcom/ebay/db/dagger/EbayDatabaseProvider;)Lcom/ebay/db/EbayDatabase;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/db/EbayDatabase;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/ebay/db/EbayDatabase;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;->module:Lcom/ebay/db/dagger/EbayDatabaseModule;

    iget-object v1, p0, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;->providerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;->provideInstance(Lcom/ebay/db/dagger/EbayDatabaseModule;Ljavax/inject/Provider;)Lcom/ebay/db/EbayDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;->get()Lcom/ebay/db/EbayDatabase;

    move-result-object v0

    return-object v0
.end method
