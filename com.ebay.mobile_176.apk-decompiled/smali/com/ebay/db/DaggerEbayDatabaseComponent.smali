.class public final Lcom/ebay/db/DaggerEbayDatabaseComponent;
.super Ljava/lang/Object;
.source "DaggerEbayDatabaseComponent.java"

# interfaces
.implements Lcom/ebay/db/EbayDatabaseComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;
    }
.end annotation


# instance fields
.field private ebayDatabaseProvider:Ljavax/inject/Provider;

.field private migrationArrayProvider:Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;

.field private nonFatalReporterImplProvider:Ljavax/inject/Provider;

.field private provideEbayDatabaseProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/db/EbayDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private provideMigrationsProvider:Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;

.field private provideVersionMigrationsProvider:Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;

.field private setOfMigrationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Landroidx/room/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field

.field private withContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Lcom/ebay/db/DaggerEbayDatabaseComponent;->initialize(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;Lcom/ebay/db/DaggerEbayDatabaseComponent$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/ebay/db/DaggerEbayDatabaseComponent;-><init>(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/ebay/db/EbayDatabaseComponent$Builder;
    .locals 2

    .line 50
    new-instance v0, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;-><init>(Lcom/ebay/db/DaggerEbayDatabaseComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;)V
    .locals 3

    .line 55
    invoke-static {p1}, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->access$100(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->withContextProvider:Ljavax/inject/Provider;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 57
    invoke-static {v0, v1}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;->create()Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/ebay/db/migrations/RecentSearchEntityFrom2To3_Factory;->create()Lcom/ebay/db/migrations/RecentSearchEntityFrom2To3_Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/ebay/db/migrations/RecentSearchEntityFrom3To5_28_0_Factory;->create()Lcom/ebay/db/migrations/RecentSearchEntityFrom3To5_28_0_Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/ebay/db/migrations/NPlusOneEntityFrom5_30_0To5_31_0_Factory;->create()Lcom/ebay/db/migrations/NPlusOneEntityFrom5_30_0To5_31_0_Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetFactory$Builder;->addProvider(Ljavax/inject/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->setOfMigrationProvider:Ljavax/inject/Provider;

    .line 64
    invoke-static {p1}, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->access$200(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;)Lcom/ebay/db/dagger/EbayDatabaseModule;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;->create(Lcom/ebay/db/dagger/EbayDatabaseModule;)Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->provideVersionMigrationsProvider:Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;

    .line 65
    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->setOfMigrationProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->provideVersionMigrationsProvider:Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideVersionMigrationsFactory;

    .line 66
    invoke-static {v0, v1}, Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->migrationArrayProvider:Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;

    .line 68
    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->migrationArrayProvider:Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;

    .line 69
    invoke-static {v0}, Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;->create(Ljavax/inject/Provider;)Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->provideMigrationsProvider:Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;

    .line 72
    invoke-static {}, Ldagger/internal/SetFactory;->empty()Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nonfatalreporter/NonFatalReporterImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/ebay/nonfatalreporter/NonFatalReporterImpl_Factory;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->nonFatalReporterImplProvider:Ljavax/inject/Provider;

    .line 73
    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->withContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->provideMigrationsProvider:Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule_ProvideMigrationsFactory;

    iget-object v2, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->nonFatalReporterImplProvider:Ljavax/inject/Provider;

    .line 75
    invoke-static {v0, v1, v2}, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->ebayDatabaseProvider:Ljavax/inject/Provider;

    .line 80
    invoke-static {p1}, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->access$200(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;)Lcom/ebay/db/dagger/EbayDatabaseModule;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->ebayDatabaseProvider:Ljavax/inject/Provider;

    .line 79
    invoke-static {p1, v0}, Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;->create(Lcom/ebay/db/dagger/EbayDatabaseModule;Ljavax/inject/Provider;)Lcom/ebay/db/dagger/EbayDatabaseModule_ProvideEbayDatabaseFactory;

    move-result-object p1

    .line 78
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->provideEbayDatabaseProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getEbayDatabase()Lcom/ebay/db/EbayDatabase;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent;->provideEbayDatabaseProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/db/EbayDatabase;

    return-object v0
.end method
