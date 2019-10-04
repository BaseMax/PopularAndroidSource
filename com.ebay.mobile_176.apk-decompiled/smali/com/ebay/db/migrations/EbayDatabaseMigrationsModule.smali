.class public abstract Lcom/ebay/db/migrations/EbayDatabaseMigrationsModule;
.super Ljava/lang/Object;
.source "EbayDatabaseMigrationsModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideMigrations(Lcom/ebay/db/migrations/MigrationArrayProvider;)[Landroidx/room/migration/Migration;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/ebay/db/migrations/MigrationArrayProvider;->get()[Landroidx/room/migration/Migration;

    move-result-object p0

    return-object p0
.end method
