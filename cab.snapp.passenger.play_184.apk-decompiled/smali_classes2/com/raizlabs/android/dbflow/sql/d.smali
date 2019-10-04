.class public final Lcom/raizlabs/android/dbflow/sql/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/d;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addContentValues(Landroid/content/ContentValues;Lcom/raizlabs/android/dbflow/sql/language/u;)V
    .locals 3

    .line 184
    invoke-virtual {p0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    invoke-direct {v2, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v2

    .line 189
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/raizlabs/android/dbflow/sql/language/t;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v1

    .line 188
    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/u;->and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6

    .line 238
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 239
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 240
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 241
    sget-object v4, Lcom/raizlabs/android/dbflow/sql/d;->a:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 242
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static doubleForQuery(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)D
    .locals 2

    .line 225
    invoke-interface {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/i;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p0

    .line 227
    :try_start_0
    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/b/g;->simpleQueryForLong()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v0, v0

    .line 229
    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    return-wide v0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    throw p1
.end method

.method public static dropIndex(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)V
    .locals 2

    .line 167
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "DROP INDEX IF EXISTS "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 168
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/i;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropIndex(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 174
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/raizlabs/android/dbflow/sql/d;->dropIndex(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)V

    return-void
.end method

.method public static dropTrigger(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "DROP TRIGGER IF EXISTS "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    .line 157
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object p0

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/i;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static getContentValuesKey(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 200
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    .line 208
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not find the specified key in the Content Values object."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, p1, v0, v0}, Lcom/raizlabs/android/dbflow/sql/d;->getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/String;Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/Iterable;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            "Ljava/lang/Iterable<",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 77
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "dbflow"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 78
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-eqz p2, :cond_1

    .line 83
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 84
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/sql/language/w;->columnName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/sql/language/w;->value()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/String;Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 132
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    invoke-direct {v0, p2}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p2

    invoke-static {p2}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x1

    new-array p3, p3, [Lcom/raizlabs/android/dbflow/sql/language/w;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    .line 135
    invoke-static {p0, p1, p3}, Lcom/raizlabs/android/dbflow/sql/d;->getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/w;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/w;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            "[",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "dbflow"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 103
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    if-eqz p2, :cond_2

    .line 107
    array-length p1, p2

    if-lez p1, :cond_2

    .line 108
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    .line 110
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/language/w;->columnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/language/w;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static longForQuery(Lcom/raizlabs/android/dbflow/structure/b/i;Ljava/lang/String;)J
    .locals 2

    .line 215
    invoke-interface {p0, p1}, Lcom/raizlabs/android/dbflow/structure/b/i;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;

    move-result-object p0

    .line 217
    :try_start_0
    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/b/g;->simpleQueryForLong()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    return-wide v0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/structure/b/g;->close()V

    throw p1
.end method

.method public static notifyModelChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            "Ljava/lang/Iterable<",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/d;->getNotificationUri(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/Iterable;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 38
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method

.method public static notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/f;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/raizlabs/android/dbflow/d/f;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/f;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    return-void
.end method

.method public static notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {}, Lcom/raizlabs/android/dbflow/d/f;->get()Lcom/raizlabs/android/dbflow/d/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/raizlabs/android/dbflow/d/f;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    return-void
.end method
