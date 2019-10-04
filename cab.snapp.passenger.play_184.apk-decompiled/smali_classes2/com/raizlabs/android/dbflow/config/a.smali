.class public final Lcom/raizlabs/android/dbflow/config/a;
.super Lcom/raizlabs/android/dbflow/config/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/d;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/config/c;-><init>()V

    .line 13
    new-instance v0, Lcab/snapp/passenger/d/c;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/d/c;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    .line 1116
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Lcom/raizlabs/android/dbflow/config/d;->putDatabaseForTable(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 1117
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/config/c;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final areConsistencyChecksEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final backupEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAssociatedDatabaseClassFile()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 18
    const-class v0, Lcab/snapp/passenger/d/a;

    return-object v0
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 1

    const-string v0, "PassengerAppDataBase"

    return-object v0
.end method

.method public final getDatabaseVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isForeignKeysSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
