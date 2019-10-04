.class final Lcom/ebay/db/migrations/MigrationArrayProvider;
.super Ljava/lang/Object;
.source "MigrationArrayProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "[",
        "Landroidx/room/migration/Migration;",
        ">;"
    }
.end annotation


# instance fields
.field private final migrationSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation
.end field

.field private final versionMigrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/room/migration/Migration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ebay/db/migrations/MigrationArrayProvider;->migrationSet:Ljava/util/Set;

    .line 34
    iput-object p2, p0, Lcom/ebay/db/migrations/MigrationArrayProvider;->versionMigrations:Ljava/util/List;

    return-void
.end method

.method private addMigration(Ljava/util/HashMap;Landroidx/room/migration/Migration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/room/migration/Migration;",
            ">;",
            "Landroidx/room/migration/Migration;",
            ")V"
        }
    .end annotation

    .line 66
    iget v0, p2, Landroidx/room/migration/Migration;->endVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/migration/Migration;

    if-nez v0, :cond_0

    .line 69
    iget v0, p2, Landroidx/room/migration/Migration;->endVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_0
    instance-of v1, v0, Lcom/ebay/db/migrations/AggregateMigration;

    if-eqz v1, :cond_1

    .line 76
    check-cast v0, Lcom/ebay/db/migrations/AggregateMigration;

    goto :goto_0

    .line 80
    :cond_1
    new-instance v1, Lcom/ebay/db/migrations/AggregateMigration;

    invoke-direct {v1, v0}, Lcom/ebay/db/migrations/AggregateMigration;-><init>(Landroidx/room/migration/Migration;)V

    .line 81
    iget v0, v0, Landroidx/room/migration/Migration;->endVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 83
    :goto_0
    invoke-virtual {v0, p2}, Lcom/ebay/db/migrations/AggregateMigration;->add(Landroidx/room/migration/Migration;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/ebay/db/migrations/MigrationArrayProvider;->get()[Landroidx/room/migration/Migration;

    move-result-object v0

    return-object v0
.end method

.method public get()[Landroidx/room/migration/Migration;
    .locals 5

    .line 49
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ebay/db/migrations/MigrationArrayProvider;->migrationSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ebay/db/migrations/MigrationArrayProvider;->versionMigrations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 51
    iget-object v1, p0, Lcom/ebay/db/migrations/MigrationArrayProvider;->migrationSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/migration/Migration;

    .line 52
    invoke-direct {p0, v0, v2}, Lcom/ebay/db/migrations/MigrationArrayProvider;->addMigration(Ljava/util/HashMap;Landroidx/room/migration/Migration;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/ebay/db/migrations/MigrationArrayProvider;->versionMigrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/db/annotation/api/VersionMigration;

    .line 55
    new-instance v3, Lcom/ebay/db/migrations/VersionMigrationWrapper;

    invoke-direct {v3, v2}, Lcom/ebay/db/migrations/VersionMigrationWrapper;-><init>(Lcom/ebay/db/annotation/api/VersionMigration;)V

    invoke-direct {p0, v0, v3}, Lcom/ebay/db/migrations/MigrationArrayProvider;->addMigration(Ljava/util/HashMap;Landroidx/room/migration/Migration;)V

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/room/migration/Migration;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/migration/Migration;

    add-int/lit8 v4, v2, 0x1

    .line 60
    aput-object v3, v1, v2

    move v2, v4

    goto :goto_2

    :cond_2
    return-object v1
.end method
