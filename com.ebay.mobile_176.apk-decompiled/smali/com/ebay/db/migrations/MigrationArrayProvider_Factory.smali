.class public final Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;
.super Ljava/lang/Object;
.source "MigrationArrayProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/db/migrations/MigrationArrayProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final migrationSetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Landroidx/room/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final versionMigrationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;>;"
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
            "Ljava/util/Set<",
            "Landroidx/room/migration/Migration;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;->migrationSetProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;->versionMigrationsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Landroidx/room/migration/Migration;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;>;)",
            "Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newMigrationArrayProvider(Ljava/util/Set;Ljava/util/List;)Lcom/ebay/db/migrations/MigrationArrayProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/room/migration/Migration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;)",
            "Lcom/ebay/db/migrations/MigrationArrayProvider;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/ebay/db/migrations/MigrationArrayProvider;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/migrations/MigrationArrayProvider;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/db/migrations/MigrationArrayProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Landroidx/room/migration/Migration;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;>;)",
            "Lcom/ebay/db/migrations/MigrationArrayProvider;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/ebay/db/migrations/MigrationArrayProvider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/migrations/MigrationArrayProvider;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/db/migrations/MigrationArrayProvider;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;->migrationSetProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;->versionMigrationsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/db/migrations/MigrationArrayProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/ebay/db/migrations/MigrationArrayProvider_Factory;->get()Lcom/ebay/db/migrations/MigrationArrayProvider;

    move-result-object v0

    return-object v0
.end method
