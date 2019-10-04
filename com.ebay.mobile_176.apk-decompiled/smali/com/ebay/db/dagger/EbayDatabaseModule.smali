.class public Lcom/ebay/db/dagger/EbayDatabaseModule;
.super Ljava/lang/Object;
.source "EbayDatabaseModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideEbayDatabase(Lcom/ebay/db/dagger/EbayDatabaseProvider;)Lcom/ebay/db/EbayDatabase;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/ebay/db/dagger/EbayDatabaseProvider;->get()Lcom/ebay/db/EbayDatabase;

    move-result-object p1

    return-object p1
.end method

.method provideVersionMigrations()Ljava/util/List;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/ebay/db/annotation/processor/EbayDatabaseAutomaticMigrations;->getVersionMigrations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
