.class Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;
.super Lcom/apptentive/android/sdk/storage/DatabaseMigrator;
.source "DatabaseMigratorV3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;
    }
.end annotation


# static fields
.field private static final SQL_BACKUP_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

.field private static final SQL_DELETE_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

.field private static final SQL_QUERY_SELECT_LEGACY_PAYLOADS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "ALTER TABLE %s RENAME TO %s;"

    const/4 v1, 0x2

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "payload"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "legacy_payload"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->SQL_BACKUP_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

    const-string v0, "DROP TABLE %s;"

    .line 39
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "legacy_payload"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->SQL_DELETE_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM legacy_payload ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_PRIMARY_KEY:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->SQL_QUERY_SELECT_LEGACY_PAYLOADS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/storage/DatabaseMigrator;-><init>(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 54
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 57
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "\t1. Backing up \'%s\' table to \'%s\'..."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "payload"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "legacy_payload"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->SQL_BACKUP_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "\t2. Creating new \'%s\' table..."

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "payload"

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_CREATE_PAYLOAD_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->SQL_QUERY_SELECT_LEGACY_PAYLOADS:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "\t3. Migrating legacy payloads (%d)..."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v0, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v5, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v5, v5, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    sget-object v6, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v6, v6, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 73
    sget-object v9, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v9, v9, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 74
    sget-object v10, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v10, v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 75
    sget-object v11, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v11, v11, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 76
    sget-object v12, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v12, v12, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 77
    sget-object v13, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_ENCRYPTED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v13, v13, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 78
    sget-object v14, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v14, v14, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 81
    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->getPayloadBodyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 82
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 83
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "\t\tLegacy payload missing its data file. Skipping..."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->getPayloadBodyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    if-nez v13, :cond_1

    const/4 v7, 0x1

    .line 90
    :cond_1
    invoke-static {v15}, Lcom/apptentive/android/sdk/util/Util;->readBytes(Ljava/io/File;)[B

    move-result-object v8

    invoke-virtual {v1, v15, v8, v7}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->writeToFile(Ljava/io/File;[BZ)V

    .line 95
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 96
    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->encrypt(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 102
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTHENTICATED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "payload"

    .line 106
    invoke-virtual {v2, v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 110
    :cond_2
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "\t6. Dropping temporary \'%s\' table..."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "legacy_payload"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0, v3, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->SQL_DELETE_LEGACY_PAYLOAD_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-virtual {v1, v4}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->ensureClosed(Landroid/database/Cursor;)V

    if-eqz v2, :cond_3

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v3

    .line 115
    :goto_1
    invoke-virtual {v1, v4}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;->ensureClosed(Landroid/database/Cursor;)V

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw v0
.end method
