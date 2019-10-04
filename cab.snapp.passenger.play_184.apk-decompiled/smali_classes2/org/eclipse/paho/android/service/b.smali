.class final Lorg/eclipse/paho/android/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/android/service/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/b$c;,
        Lorg/eclipse/paho/android/service/b$a;,
        Lorg/eclipse/paho/android/service/b$b;
    }
.end annotation


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field b:Lorg/eclipse/paho/android/service/b$b;

.field private c:Lorg/eclipse/paho/android/service/h;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/MqttService;Landroid/content/Context;)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    iput-object v0, p0, Lorg/eclipse/paho/android/service/b;->b:Lorg/eclipse/paho/android/service/b$b;

    .line 52
    iput-object v0, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    .line 144
    iput-object p1, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    .line 147
    new-instance p1, Lorg/eclipse/paho/android/service/b$b;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/paho/android/service/b$b;-><init>(Lorg/eclipse/paho/android/service/h;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/eclipse/paho/android/service/b;->b:Lorg/eclipse/paho/android/service/b$b;

    .line 153
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    const-string p2, "DatabaseMessageStore"

    const-string v0, "DatabaseMessageStore<init> complete"

    invoke-interface {p1, p2, v0}, Lorg/eclipse/paho/android/service/h;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v1, "messageId"

    aput-object v1, v3, v9

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v9

    .line 216
    iget-object v1, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "clientHandle=?"

    const-string v2, "MqttArrivedMessageTable"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 226
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 229
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v9
.end method


# virtual methods
.method public final clearArrivedMessages(Ljava/lang/String;)V
    .locals 6

    .line 384
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b;->b:Lorg/eclipse/paho/android/service/b$b;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "MqttArrivedMessageTable"

    const-string v2, "DatabaseMessageStore"

    if-nez p1, :cond_0

    .line 390
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    const-string v0, "clearArrivedMessages: clearing the table"

    invoke-interface {p1, v2, v0}, Lorg/eclipse/paho/android/service/h;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 394
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clearArrivedMessages: clearing the table of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " messages"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v2, p1}, Lorg/eclipse/paho/android/service/h;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "clientHandle=?"

    invoke-virtual {p1, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 402
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "clearArrivedMessages: rows affected = "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lorg/eclipse/paho/android/service/h;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 1

    .line 457
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method public final discardArrived(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 246
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b;->b:Lorg/eclipse/paho/android/service/b$b;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 248
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "discardArrived{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}, {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatabaseMessageStore"

    invoke-interface {v0, v2, v1}, Lorg/eclipse/paho/android/service/h;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v3, 0x1

    aput-object p1, v0, v3

    .line 256
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "MqttArrivedMessageTable"

    const-string v6, "messageId=? AND clientHandle=?"

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v3, :cond_0

    .line 265
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "discardArrived - Error deleting message {"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "} from database: Rows affected = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lorg/eclipse/paho/android/service/h;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/b;->a(Ljava/lang/String;)I

    move-result p1

    .line 271
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "discardArrived - Message deleted successfully. - messages in db for this clientHandle "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-interface {p2, v2, p1}, Lorg/eclipse/paho/android/service/h;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception p1

    .line 261
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    const-string v0, "discardArrived"

    invoke-interface {p2, v2, v0, p1}, Lorg/eclipse/paho/android/service/h;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 262
    throw p1
.end method

.method public final getAllArrivedMessages(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/paho/android/service/c$a;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Lorg/eclipse/paho/android/service/b$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/paho/android/service/b$1;-><init>(Lorg/eclipse/paho/android/service/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public final storeArrived(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)Ljava/lang/String;
    .locals 7

    .line 171
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b;->b:Lorg/eclipse/paho/android/service/b$b;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 173
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "storeArrived{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}, {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p3}, Lorg/eclipse/paho/a/a/q;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatabaseMessageStore"

    .line 173
    invoke-interface {v0, v2, v1}, Lorg/eclipse/paho/android/service/h;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p3}, Lorg/eclipse/paho/a/a/q;->getPayload()[B

    move-result-object v0

    .line 177
    invoke-virtual {p3}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v1

    .line 178
    invoke-virtual {p3}, Lorg/eclipse/paho/a/a/q;->isRetained()Z

    move-result v3

    .line 179
    invoke-virtual {p3}, Lorg/eclipse/paho/a/a/q;->isDuplicate()Z

    move-result p3

    .line 181
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 182
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "messageId"

    .line 183
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "clientHandle"

    .line 184
    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "destinationName"

    .line 185
    invoke-virtual {v4, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "payload"

    .line 186
    invoke-virtual {v4, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "qos"

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "retained"

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 189
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "duplicate"

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "mtimestamp"

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "MqttArrivedMessageTable"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/b;->a(Ljava/lang/String;)I

    move-result p1

    .line 198
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "storeArrived: inserted message with id of {"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "} - Number of messages in database for this clientHandle = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-interface {p2, v2, p1}, Lorg/eclipse/paho/android/service/h;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :catch_0
    move-exception p1

    .line 194
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b;->c:Lorg/eclipse/paho/android/service/h;

    const-string p3, "onUpgrade"

    invoke-interface {p2, v2, p3, p1}, Lorg/eclipse/paho/android/service/h;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 195
    throw p1
.end method
