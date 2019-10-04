.class Lcom/ebay/db/dagger/EbayDatabaseProvider;
.super Ljava/lang/Object;
.source "EbayDatabaseProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation runtime Ldagger/Reusable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/ebay/db/EbayDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private instance:Lcom/ebay/db/EbayDatabase;

.field private final migrations:[Landroidx/room/migration/Migration;

.field private final nonFatalReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;[Landroidx/room/migration/Migration;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroidx/room/migration/Migration;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->migrations:[Landroidx/room/migration/Migration;

    .line 35
    iput-object p3, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->nonFatalReporterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private attemptToDeleteDatabase()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->instance:Lcom/ebay/db/EbayDatabase;

    invoke-virtual {v0}, Lcom/ebay/db/EbayDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method


# virtual methods
.method attemptOpen()Ljava/lang/IllegalStateException;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->instance:Lcom/ebay/db/EbayDatabase;

    invoke-virtual {v0}, Lcom/ebay/db/EbayDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    .line 91
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v1

    .line 97
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create RELEASE database."

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method create()Lcom/ebay/db/EbayDatabase;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ebay/db/EbayDatabase;

    const-string v2, "nautilus_db"

    invoke-static {v0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->migrations:[Landroidx/room/migration/Migration;

    .line 79
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/ebay/db/EbayDatabase;

    return-object v0
.end method

.method public get()Lcom/ebay/db/EbayDatabase;
    .locals 5

    .line 43
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->instance:Lcom/ebay/db/EbayDatabase;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/ebay/db/dagger/EbayDatabaseProvider;->create()Lcom/ebay/db/EbayDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->instance:Lcom/ebay/db/EbayDatabase;

    .line 50
    invoke-virtual {p0}, Lcom/ebay/db/dagger/EbayDatabaseProvider;->attemptOpen()Ljava/lang/IllegalStateException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/ebay/db/dagger/EbayDatabaseProvider;->attemptToDeleteDatabase()V

    .line 57
    invoke-virtual {p0}, Lcom/ebay/db/dagger/EbayDatabaseProvider;->create()Lcom/ebay/db/EbayDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->instance:Lcom/ebay/db/EbayDatabase;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->instance:Lcom/ebay/db/EbayDatabase;

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 67
    iget-object v2, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider;->nonFatalReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nonfatalreporter/NonFatalReporter;

    .line 68
    sget-object v3, Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;->FOUNDATIONS:Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;

    const-string v4, "Unable to create database.  Falling back to destructive re-creation."

    invoke-interface {v2, v0, v3, v4}, Lcom/ebay/nonfatalreporter/NonFatalReporter;->log(Ljava/lang/Throwable;Lcom/ebay/nonfatalreporter/NonFatalReportingDomain;Ljava/lang/String;)V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v0

    .line 62
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/ebay/db/dagger/EbayDatabaseProvider;->get()Lcom/ebay/db/EbayDatabase;

    move-result-object v0

    return-object v0
.end method
