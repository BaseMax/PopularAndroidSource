.class Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;
.super Lcom/apptentive/android/sdk/storage/DatabaseMigrator;
.source "DatabaseMigratorV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2$LegacyPayloadEntry;
    }
.end annotation


# static fields
.field private static final SQL_BACKUP_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

.field private static final SQL_DELETE_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

.field private static final SQL_SELECT_LEGACY_PAYLOADS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM legacy_payload ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2$LegacyPayloadEntry;->PAYLOAD_KEY_DB_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->SQL_SELECT_LEGACY_PAYLOADS:Ljava/lang/String;

    const-string v0, "ALTER TABLE %s RENAME TO %s;"

    const/4 v1, 0x2

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "payload"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "legacy_payload"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->SQL_BACKUP_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

    const-string v0, "DROP TABLE %s;"

    .line 47
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "legacy_payload"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->SQL_DELETE_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/storage/DatabaseMigrator;-><init>(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)V

    return-void
.end method

.method private getAllMessages(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/ApptentiveMessage;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SELECT * FROM message ORDER BY COALESCE(id, \'z\') ASC"

    .line 162
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    .line 164
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/messagecenter/model/MessageFactory;->fromJson(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 167
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Error parsing Record json from database: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v2, v5, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->setId(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 171
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->setCreatedAt(Ljava/lang/Double;)V

    const/4 v1, 0x3

    .line 172
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->setNonce(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 173
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->setState(Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;)V

    const/4 v1, 0x5

    .line 174
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v2, v3}, Lcom/apptentive/android/sdk/model/ApptentiveMessage;->setRead(Z)V

    .line 175
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->ensureClosed(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->ensureClosed(Landroid/database/Cursor;)V

    throw v0
.end method

.method private migrateMessages(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 144
    :try_start_0
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->getAllMessages(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p1

    .line 145
    new-instance v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2$1;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2$1;-><init>(Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;Ljava/util/List;)V

    const-string p1, "migrate messages"

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception while trying to migrate messages"

    const/4 v1, 0x0

    .line 153
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 68
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "\t1. Backing up \"payloads\" database to \"legacy_payloads\""

    new-array v2, p3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->SQL_BACKUP_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "\t2. Creating new \"payloads\" database."

    new-array v2, p3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_CREATE_PAYLOAD_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "\t3. Loading legacy payloads."

    new-array v2, p3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->SQL_SELECT_LEGACY_PAYLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "4. Save payloads into new table."

    new-array v3, p3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 82
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apptentive/android/sdk/model/PayloadType;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/PayloadType;

    move-result-object v2

    .line 83
    sget-object v3, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2$LegacyPayloadEntry;->PAYLOAD_KEY_JSON:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/storage/legacy/LegacyPayloadFactory;->createPayload(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;)Lcom/apptentive/android/sdk/model/JsonPayload;

    move-result-object v3

    if-nez v3, :cond_0

    .line 87
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Unable to construct payload of type %s. Continuing."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/model/PayloadType;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p3

    invoke-static {v3, v4, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v2, "nonce"

    .line 92
    invoke-virtual {v3, v2, p2}, Lcom/apptentive/android/sdk/model/JsonPayload;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 94
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_1
    invoke-virtual {v3, v2}, Lcom/apptentive/android/sdk/model/JsonPayload;->setNonce(Ljava/lang/String;)V

    .line 99
    sget-object v2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Payload of type %s:, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getPayloadType()Lcom/apptentive/android/sdk/model/PayloadType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apptentive/android/sdk/model/PayloadType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p3

    aput-object v3, v5, v1

    invoke-static {v2, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 101
    sget-object v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v4, v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getNonce()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v4, v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getPayloadType()Lcom/apptentive/android/sdk/model/PayloadType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apptentive/android/sdk/model/PayloadType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v4, v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getHttpRequestContentType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->isAuthenticated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 106
    sget-object v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v4, v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getConversationToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->encrypt(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 108
    :cond_2
    sget-object v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v4, v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v4, v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getHttpRequestMethod()Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v4, v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    .line 111
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "${conversationId}"

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getConversationId()Ljava/lang/String;

    move-result-object v5

    .line 110
    :goto_1
    invoke-virtual {v3, v5}, Lcom/apptentive/android/sdk/model/JsonPayload;->getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->getPayloadBodyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 115
    sget-object v5, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v6, "Saving payload body to: %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, p3

    invoke-static {v5, v6, v7}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->renderData()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->isAuthenticated()Z

    move-result v6

    xor-int/2addr v1, v6

    invoke-virtual {p0, v4, v5, v1}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->writeToFile(Ljava/io/File;[BZ)V

    .line 118
    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTHENTICATED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v1, v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/model/JsonPayload;->isAuthenticated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "payload"

    .line 120
    invoke-virtual {p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 124
    :cond_4
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "\t6. Migrating messages."

    new-array v2, p3, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->migrateMessages(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "\t6. Delete temporary \"legacy_payloads\" database."

    new-array v2, p3, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    sget-object p2, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->SQL_DELETE_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->ensureClosed(Landroid/database/Cursor;)V

    if-eqz p1, :cond_5

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :catchall_0
    move-exception p3

    move-object v0, p2

    move-object p2, p3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, p2

    move-object p2, v9

    .line 132
    :goto_2
    :try_start_2
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Error in upgradeVersion2to3()"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v1, p2, v2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-static {p2}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->ensureClosed(Landroid/database/Cursor;)V

    if-eqz p1, :cond_5

    .line 137
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5
    return-void

    :catchall_1
    move-exception p2

    .line 135
    :goto_4
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;->ensureClosed(Landroid/database/Cursor;)V

    if-eqz p1, :cond_6

    .line 137
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6
    throw p2
.end method
