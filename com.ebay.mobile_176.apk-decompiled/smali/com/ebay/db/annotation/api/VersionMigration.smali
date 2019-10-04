.class public final Lcom/ebay/db/annotation/api/VersionMigration;
.super Ljava/lang/Object;
.source "VersionMigration.java"


# instance fields
.field private final endVersion:I

.field private final entityMigrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/EntityMigration;",
            ">;"
        }
    .end annotation
.end field

.field private final startVersion:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/EntityMigration;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/ebay/db/annotation/api/VersionMigration;->startVersion:I

    .line 37
    iput p2, p0, Lcom/ebay/db/annotation/api/VersionMigration;->endVersion:I

    .line 38
    iput-object p3, p0, Lcom/ebay/db/annotation/api/VersionMigration;->entityMigrations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public drainSql()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    iget-object v1, p0, Lcom/ebay/db/annotation/api/VersionMigration;->entityMigrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/db/annotation/api/EntityMigration;

    .line 70
    invoke-virtual {v2}, Lcom/ebay/db/annotation/api/EntityMigration;->drainSql()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEndVersion()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/ebay/db/annotation/api/VersionMigration;->endVersion:I

    return v0
.end method

.method public getStartVersion()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/ebay/db/annotation/api/VersionMigration;->startVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/ebay/db/annotation/api/VersionMigration;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/db/annotation/api/VersionMigration;->entityMigrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entity migration(s)]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
