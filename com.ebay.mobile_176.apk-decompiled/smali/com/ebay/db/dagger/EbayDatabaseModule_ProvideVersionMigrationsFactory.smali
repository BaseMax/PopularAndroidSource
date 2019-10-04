.class public final Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;
.super Ljava/lang/Object;
.source "EbayDatabaseModule_ProvideVersionMigrationsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/List<",
        "Lcom/ebay/db/annotation/api/VersionMigration;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lcom/ebay/db/dagger/EbayDatabaseModule;


# direct methods
.method public constructor <init>(Lcom/ebay/db/dagger/EbayDatabaseModule;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;->module:Lcom/ebay/db/dagger/EbayDatabaseModule;

    return-void
.end method

.method public static create(Lcom/ebay/db/dagger/EbayDatabaseModule;)Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;
    .locals 1

    .line 28
    new-instance v0, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;

    invoke-direct {v0, p0}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;-><init>(Lcom/ebay/db/dagger/EbayDatabaseModule;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/ebay/db/dagger/EbayDatabaseModule;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/dagger/EbayDatabaseModule;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;->proxyProvideVersionMigrations(Lcom/ebay/db/dagger/EbayDatabaseModule;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideVersionMigrations(Lcom/ebay/db/dagger/EbayDatabaseModule;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/dagger/EbayDatabaseModule;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/ebay/db/dagger/EbayDatabaseModule;->provideVersionMigrations()Ljava/util/List;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 32
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;->module:Lcom/ebay/db/dagger/EbayDatabaseModule;

    invoke-static {v0}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;->provideInstance(Lcom/ebay/db/dagger/EbayDatabaseModule;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
