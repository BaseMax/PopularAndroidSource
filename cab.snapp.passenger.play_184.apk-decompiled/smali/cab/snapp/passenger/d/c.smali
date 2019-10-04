.class public final Lcab/snapp/passenger/d/c;
.super Lcom/raizlabs/android/dbflow/structure/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/structure/f<",
        "Lcab/snapp/passenger/d/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

.field public static final jsonString:Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final key:Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final lastModificationTimestamp:Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const-class v1, Lcab/snapp/passenger/d/b;

    const-string v2, "key"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcab/snapp/passenger/d/c;->key:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 28
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const-class v1, Lcab/snapp/passenger/d/b;

    const-string v2, "type"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcab/snapp/passenger/d/c;->type:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 30
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const-class v1, Lcab/snapp/passenger/d/b;

    const-string v2, "jsonString"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcab/snapp/passenger/d/c;->jsonString:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 32
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const-class v1, Lcab/snapp/passenger/d/b;

    const-string v2, "lastModificationTimestamp"

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcab/snapp/passenger/d/c;->lastModificationTimestamp:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 34
    sget-object v1, Lcab/snapp/passenger/d/c;->key:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcab/snapp/passenger/d/c;->type:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcab/snapp/passenger/d/c;->jsonString:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcab/snapp/passenger/d/c;->lastModificationTimestamp:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcab/snapp/passenger/d/c;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/f;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method


# virtual methods
.method public final bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcab/snapp/passenger/d/b;)V
    .locals 1

    .line 110
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getKey()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindStringOrNull(ILjava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcab/snapp/passenger/d/b;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/d/c;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcab/snapp/passenger/d/b;)V

    return-void
.end method

.method public final bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcab/snapp/passenger/d/b;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 93
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 94
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindLong(IJ)V

    add-int/lit8 v0, p3, 0x3

    .line 95
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindStringOrNull(ILjava/lang/String;)V

    add-int/lit8 p3, p3, 0x4

    .line 96
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getLastModificationTimestamp()J

    move-result-wide v0

    invoke-interface {p1, p3, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindLong(IJ)V

    return-void
.end method

.method public final bridge synthetic bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lcab/snapp/passenger/d/b;

    invoke-virtual {p0, p1, p2, p3}, Lcab/snapp/passenger/d/c;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcab/snapp/passenger/d/b;I)V

    return-void
.end method

.method public final bindToInsertValues(Landroid/content/ContentValues;Lcab/snapp/passenger/d/b;)V
    .locals 2

    .line 84
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`key`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "`type`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getJsonString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`jsonString`"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getLastModificationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "`lastModificationTimestamp`"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public final bridge synthetic bindToInsertValues(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcab/snapp/passenger/d/b;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/d/c;->bindToInsertValues(Landroid/content/ContentValues;Lcab/snapp/passenger/d/b;)V

    return-void
.end method

.method public final bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcab/snapp/passenger/d/b;)V
    .locals 3

    .line 101
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindStringOrNull(ILjava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindLong(IJ)V

    .line 103
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getJsonString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindStringOrNull(ILjava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getLastModificationTimestamp()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Lcab/snapp/passenger/d/b;->getKey()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-interface {p1, v0, p2}, Lcom/raizlabs/android/dbflow/structure/b/g;->bindStringOrNull(ILjava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcab/snapp/passenger/d/b;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/d/c;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/b/g;Lcab/snapp/passenger/d/b;)V

    return-void
.end method

.method public final exists(Lcab/snapp/passenger/d/b;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 143
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/x;->selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/y;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/d/b;

    .line 144
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/y;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 145
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/d/c;->getPrimaryConditionClause(Lcab/snapp/passenger/d/b;)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/l;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/ad;->hasData(Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 23
    check-cast p1, Lcab/snapp/passenger/d/b;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/d/c;->exists(Lcab/snapp/passenger/d/b;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    move-result p1

    return p1
.end method

.method public final getAllColumnProperties()[Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 1

    .line 79
    sget-object v0, Lcab/snapp/passenger/d/c;->ALL_COLUMN_PROPERTIES:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-object v0
.end method

.method public final getCompiledStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `GeneralDataModel`(`key`,`type`,`jsonString`,`lastModificationTimestamp`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method public final getCreationQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `GeneralDataModel`(`key` TEXT, `type` INTEGER, `jsonString` TEXT, `lastModificationTimestamp` INTEGER, PRIMARY KEY(`key`))"

    return-object v0
.end method

.method public final getDeleteStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `GeneralDataModel` WHERE `key`=?"

    return-object v0
.end method

.method public final getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/d/b;",
            ">;"
        }
    .end annotation

    .line 42
    const-class v0, Lcab/snapp/passenger/d/b;

    return-object v0
.end method

.method public final getPrimaryConditionClause(Lcab/snapp/passenger/d/b;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 2

    .line 151
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/u;->clause()Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object v0

    .line 152
    sget-object v1, Lcab/snapp/passenger/d/c;->key:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/d/b;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    return-object v0
.end method

.method public final bridge synthetic getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 0

    .line 23
    check-cast p1, Lcab/snapp/passenger/d/b;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/d/c;->getPrimaryConditionClause(Lcab/snapp/passenger/d/b;)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 4

    .line 57
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "`jsonString`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "`key`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "`lastModificationTimestamp`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "`type`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 69
    sget-object p1, Lcab/snapp/passenger/d/c;->lastModificationTimestamp:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    return-object p1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid column name passed. Ensure you are calling the correct table\'s column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_2
    sget-object p1, Lcab/snapp/passenger/d/c;->jsonString:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    return-object p1

    .line 63
    :cond_3
    sget-object p1, Lcab/snapp/passenger/d/c;->type:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    return-object p1

    .line 60
    :cond_4
    sget-object p1, Lcab/snapp/passenger/d/c;->key:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x55936bfa -> :sswitch_3
        -0x53cd8a4 -> :sswitch_2
        0x57afe41 -> :sswitch_1
        0x25ca7c07 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "`GeneralDataModel`"

    return-object v0
.end method

.method public final getUpdateStatementQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `GeneralDataModel` SET `key`=?,`type`=?,`jsonString`=?,`lastModificationTimestamp`=? WHERE `key`=?"

    return-object v0
.end method

.method public final loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcab/snapp/passenger/d/b;)V
    .locals 2

    const-string v0, "key"

    .line 135
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/d/b;->setKey(Ljava/lang/String;)V

    const-string v0, "type"

    .line 136
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getIntOrDefault(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/d/b;->setType(I)V

    const-string v0, "jsonString"

    .line 137
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/d/b;->setJsonString(Ljava/lang/String;)V

    const-string v0, "lastModificationTimestamp"

    .line 138
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getLongOrDefault(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcab/snapp/passenger/d/b;->setLastModificationTimestamp(J)V

    return-void
.end method

.method public final bridge synthetic loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcab/snapp/passenger/d/b;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/d/c;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/b/j;Lcab/snapp/passenger/d/b;)V

    return-void
.end method

.method public final newInstance()Lcab/snapp/passenger/d/b;
    .locals 1

    .line 52
    new-instance v0, Lcab/snapp/passenger/d/b;

    invoke-direct {v0}, Lcab/snapp/passenger/d/b;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcab/snapp/passenger/d/c;->newInstance()Lcab/snapp/passenger/d/b;

    move-result-object v0

    return-object v0
.end method
