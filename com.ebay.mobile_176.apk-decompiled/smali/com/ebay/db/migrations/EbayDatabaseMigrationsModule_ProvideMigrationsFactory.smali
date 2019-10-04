.class public final Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;
.super Ljava/lang/Object;
.source "EbayDatabaseMigrationsModule_ProvideMigrationsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "[",
        "Landroidx/room/migration/Migration;",
        ">;"
    }
.end annotation


# instance fields
.field private final providerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/db/migrations/MigrationArrayProvider;",
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
            "Lcom/ebay/db/migrations/MigrationArrayProvider;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;->providerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/db/migrations/MigrationArrayProvider;",
            ">;)",
            "Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;

    invoke-direct {v0, p0}, Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)[Landroidx/room/migration/Migration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/db/migrations/MigrationArrayProvider;",
            ">;)[",
            "Landroidx/room/migration/Migration;"
        }
    .end annotation

    .line 24
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;->proxyProvideMigrations(Ljava/lang/Object;)[Landroidx/room/migration/Migration;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideMigrations(Ljava/lang/Object;)[Landroidx/room/migration/Migration;
    .locals 1

    .line 33
    check-cast p0, Lcom/ebay/db/migrations/MigrationArrayProvider;

    .line 34
    invoke-static {p0}, Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule;->provideMigrations(Lcom/ebay/db/migrations/MigrationArrayProvider;)[Landroidx/room/migration/Migration;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/room/migration/Migration;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;->get()[Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method

.method public get()[Landroidx/room/migration/Migration;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;->providerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;->provideInstance(Ljavax/inject/Provider;)[Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method
