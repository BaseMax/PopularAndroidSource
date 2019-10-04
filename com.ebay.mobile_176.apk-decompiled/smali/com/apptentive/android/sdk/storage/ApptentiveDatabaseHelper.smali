.class public Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ApptentiveDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;,
        Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "apptentive"

.field static final SQL_CREATE_PAYLOAD_TABLE:Ljava/lang/String;

.field private static final SQL_REMOVE_INCOMPLETE_PAYLOADS:Ljava/lang/String;

.field private static final SQL_SELECT_PAYLOADS_IN_SEND_ORDER:Ljava/lang/String;

.field private static final SQL_UPDATE_INCOMPLETE_PAYLOADS:Ljava/lang/String;

.field private static final SQL_UPDATE_LEGACY_PAYLOADS:Ljava/lang/String;


# instance fields
.field private final encryption:Lcom/apptentive/android/sdk/Encryption;

.field private final fileDir:Ljava/io/File;

.field private final payloadDataDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE payload ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PRIMARY_KEY:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " BLOB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTHENTICATED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_CREATE_PAYLOAD_TABLE:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM payload ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PRIMARY_KEY:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_SELECT_PAYLOADS_IN_SEND_ORDER:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE payload SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ?, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ? WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_UPDATE_INCOMPLETE_PAYLOADS:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE payload SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ?, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ?, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ? WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_UPDATE_LEGACY_PAYLOADS:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM payload WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_REMOVE_INCOMPLETE_PAYLOADS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/apptentive/android/sdk/Encryption;)V
    .locals 3

    const-string v0, "apptentive"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 201
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->fileDir:Ljava/io/File;

    .line 207
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->fileDir:Ljava/io/File;

    const-string v1, "payloads"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->payloadDataDir:Ljava/io/File;

    .line 208
    iput-object p2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encryption:Lcom/apptentive/android/sdk/Encryption;

    return-void

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encryption key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createDatabaseMigrator(II)Lcom/apptentive/android/sdk/storage/DatabaseMigrator;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string p2, "Missing database migrator version: %d"

    const/4 v0, 0x1

    .line 260
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertFail(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 257
    :pswitch_0
    new-instance p1, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;

    iget-object p2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encryption:Lcom/apptentive/android/sdk/Encryption;

    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->payloadDataDir:Ljava/io/File;

    invoke-direct {p1, p2, v0}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;-><init>(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)V

    return-object p1

    .line 255
    :pswitch_1
    new-instance p1, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;

    iget-object p2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encryption:Lcom/apptentive/android/sdk/Encryption;

    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->payloadDataDir:Ljava/io/File;

    invoke-direct {p1, p2, v0}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;-><init>(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)V

    return-object p1

    .line 253
    :pswitch_2
    new-instance p1, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV1;

    iget-object p2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encryption:Lcom/apptentive/android/sdk/Encryption;

    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->payloadDataDir:Ljava/io/File;

    invoke-direct {p1, p2, v0}, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV1;-><init>(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decryptString([B)Ljava/lang/String;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/encryption/EncryptionHelper;->decryptString(Lcom/apptentive/android/sdk/Encryption;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encrypt(Ljava/lang/String;)[B
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/encryption/EncryptionHelper;->encrypt(Lcom/apptentive/android/sdk/Encryption;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private ensureClosed(Landroid/database/Cursor;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 564
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 567
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Error closing SQLite cursor."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getPayloadBodyFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 558
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->payloadDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".data"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 0

    .line 651
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private printPayloadTable(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 658
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 659
    sget-object v5, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_SELECT_PAYLOADS_IN_SEND_ORDER:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 660
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v2, :cond_0

    .line 662
    sget-object v7, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v8, "%s (%d payload(s))"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v7, v8, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    invoke-direct {v1, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    return-void

    :cond_0
    add-int/lit8 v7, v2, 0x1

    .line 666
    :try_start_2
    new-array v7, v7, [[Ljava/lang/Object;

    const/16 v8, 0xa

    .line 667
    new-array v9, v8, [Ljava/lang/Object;

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PRIMARY_KEY:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    aput-object v10, v9, v3

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    aput-object v10, v9, v6

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    aput-object v10, v9, v5

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const/4 v11, 0x3

    aput-object v10, v9, v11

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const/4 v12, 0x4

    aput-object v10, v9, v12

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const/4 v13, 0x5

    aput-object v10, v9, v13

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const/4 v14, 0x6

    aput-object v10, v9, v14

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTHENTICATED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const/4 v15, 0x7

    aput-object v10, v9, v15

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const/16 v16, 0x8

    aput-object v10, v9, v16

    sget-object v10, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const/16 v17, 0x9

    aput-object v10, v9, v17

    aput-object v9, v7, v3

    const/4 v9, 0x1

    .line 681
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v10, v9, 0x1

    .line 682
    new-array v15, v8, [Ljava/lang/Object;

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PRIMARY_KEY:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 683
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v15, v3

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 684
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v6

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 685
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v5

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 686
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v11

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 687
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v12

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 688
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v13

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 689
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v15, v14

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTHENTICATED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 690
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v18, 0x7

    aput-object v8, v15, v18

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 691
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v16

    sget-object v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v8, v8, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    .line 692
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    const-string v12, "<CORRUPTED>"

    invoke-direct {v1, v8, v12, v3}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->tryDecryptString([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v15, v17

    aput-object v15, v7, v9

    move v9, v10

    const/16 v8, 0xa

    const/4 v12, 0x4

    const/4 v15, 0x7

    goto/16 :goto_0

    .line 695
    :cond_1
    sget-object v8, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v9, "%s (%d payload(s)):\n%s"

    new-array v10, v11, [Ljava/lang/Object;

    aput-object p1, v10, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v6

    invoke-static {v7}, Lcom/apptentive/android/sdk/util/StringUtils;->table([[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v5

    invoke-static {v8, v9, v10}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 700
    invoke-direct {v1, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :catch_1
    move-exception v0

    .line 697
    :goto_1
    :try_start_3
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Exception while printing metadata"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    invoke-direct {v1, v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 700
    invoke-direct {v1, v2}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    :goto_2
    return-void

    :goto_3
    invoke-direct {v1, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    throw v0
.end method

.method private readFromFile(Ljava/io/File;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 624
    iget-object p2, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-static {p2, p1}, Lcom/apptentive/android/sdk/encryption/EncryptionHelper;->readFromEncryptedFile(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readBytes(Ljava/io/File;)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private removeCorruptedPayloads()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 461
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_REMOVE_INCOMPLETE_PAYLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 463
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Removed incomplete payloads"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_0
    :try_start_2
    const-string v3, "Exception while removing incomplete payloads"

    .line 465
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    invoke-direct {p0, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    :goto_1
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    throw v0
.end method

.method private tryDecryptString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 585
    invoke-direct {p0, p1, p2, v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->tryDecryptString([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tryDecryptString([BLjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 590
    :try_start_0
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->decryptString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    const-string p3, "Failed to decrypt string"

    const/4 v0, 0x0

    .line 593
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method private tryReadFromFile(Ljava/io/File;Z)[B
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 614
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->readFromFile(Ljava/io/File;Z)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 616
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Unable to read% file: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string p2, " encrypted"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updatePayloadRequestPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "${conversationId}"

    .line 424
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private writeToFile(Ljava/io/File;[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 606
    iget-object p3, p0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-static {p3, p1, p2}, Lcom/apptentive/android/sdk/encryption/EncryptionHelper;->writeToEncryptedFile(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;[B)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/util/Util;->writeAtomically(Ljava/io/File;[B)V

    :goto_0
    return-void
.end method


# virtual methods
.method addCompoundMessageFiles(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/StoredFile;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 524
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/model/StoredFile;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/StoredFile;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 530
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v6, "compound_message_file_store"

    const-string v7, "nonce = ?"

    .line 532
    new-array v8, v2, [Ljava/lang/String;

    aput-object v1, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 534
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v6, v3

    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/model/StoredFile;

    .line 535
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "nonce"

    .line 536
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/StoredFile;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "local_path"

    .line 537
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/StoredFile;->getLocalFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mime_type"

    .line 538
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/StoredFile;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "local_uri"

    .line 539
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/StoredFile;->getSourceUriOrPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "apptentive_url"

    .line 540
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/StoredFile;->getApptentiveUri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "creation_time"

    .line 541
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/model/StoredFile;->getCreationTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "compound_message_file_store"

    const/4 v9, 0x0

    .line 542
    invoke-virtual {v5, v1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    move-wide v6, v8

    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 545
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-wide v6, v3

    .line 547
    :goto_1
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addCompoundMessageFiles EXCEPTION: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v8}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V

    :goto_2
    cmp-long p1, v6, v3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method addPayload(Lcom/apptentive/android/sdk/model/Payload;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 278
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 279
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getPayloadType()Lcom/apptentive/android/sdk/model/PayloadType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/model/PayloadType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getHttpRequestContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->isAuthenticated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getConversationToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encrypt(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 286
    :cond_0
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getHttpRequestMethod()Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "${conversationId}"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getConversationId()Ljava/lang/String;

    move-result-object v4

    .line 288
    :goto_0
    invoke-virtual {p1, v4}, Lcom/apptentive/android/sdk/model/Payload;->getHttpEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getNonce()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getPayloadBodyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 293
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Saving payload body to: %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v4, v5, v7}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->renderData()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->isAuthenticated()Z

    move-result v5

    xor-int/2addr v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->writeToFile(Ljava/io/File;[BZ)V

    .line 296
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTHENTICATED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->isAuthenticated()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    sget-object v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget-object v3, v3, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/model/Payload;->getLocalConversationIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "payload"

    .line 299
    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 300
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 307
    :cond_2
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Added payload"

    .line 308
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->printPayloadTable(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 303
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw p1
.end method

.method deleteAllPayloads()V
    .locals 4

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "payload"

    const-string v2, ""

    const/4 v3, 0x0

    .line 344
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 346
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllPayloads EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method deleteAssociatedFiles(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "compound_message_file_store"

    const-string v3, "nonce = ?"

    const/4 v4, 0x1

    .line 480
    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v0

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 481
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Deleted %d stored files."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 483
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAssociatedFiles EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method deletePayload(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "payload"

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 326
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deletePayload EXCEPTION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-direct {p0, v2}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V

    .line 331
    :goto_0
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getPayloadBodyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 332
    sget-object v3, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v4, "Deleted payload \"%s\" data file successfully? %b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Deleted payload"

    .line 335
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->printPayloadTable(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 314
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Payload identifier is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getAssociatedFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/model/StoredFile;",
            ">;"
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 493
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM compound_message_file_store WHERE nonce = ?"

    const/4 v5, 0x1

    .line 494
    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 498
    :cond_0
    new-instance v4, Lcom/apptentive/android/sdk/model/StoredFile;

    invoke-direct {v4}, Lcom/apptentive/android/sdk/model/StoredFile;-><init>()V

    .line 499
    invoke-virtual {v4, p1}, Lcom/apptentive/android/sdk/model/StoredFile;->setId(Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 500
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apptentive/android/sdk/model/StoredFile;->setLocalFilePath(Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 501
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apptentive/android/sdk/model/StoredFile;->setMimeType(Ljava/lang/String;)V

    const/4 v5, 0x4

    .line 502
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apptentive/android/sdk/model/StoredFile;->setSourceUriOrPath(Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 503
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/apptentive/android/sdk/model/StoredFile;->setApptentiveUri(Ljava/lang/String;)V

    const/4 v5, 0x6

    .line 504
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/apptentive/android/sdk/model/StoredFile;->setCreationTime(J)V

    .line 505
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_0

    .line 512
    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v2

    .line 509
    :goto_1
    :try_start_2
    sget-object v4, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssociatedFiles EXCEPTION: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 514
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, v2

    :goto_3
    return-object v0

    :catchall_1
    move-exception p1

    .line 512
    :goto_4
    invoke-direct {p0, v3}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    throw p1
.end method

.method getOldestUnsentPayload()Lcom/apptentive/android/sdk/model/PayloadData;
    .locals 18

    move-object/from16 v1, p0

    .line 352
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getOldestUnsentPayload"

    .line 353
    invoke-direct {v1, v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->printPayloadTable(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 359
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 360
    sget-object v4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_SELECT_PAYLOADS_IN_SEND_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 362
    sget-object v5, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v6, "Unsent payloads count: %d"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-static {v5, v6, v8}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 365
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 367
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Oldest unsent payload is missing a conversation id"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 419
    invoke-direct {v1, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    return-object v2

    .line 371
    :cond_1
    :try_start_2
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 374
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const-string v5, ""

    invoke-direct {v1, v0, v5}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->tryDecryptString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 375
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 376
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Oldest unsent payload auth token can\'t be decrypted. Deleting..."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    invoke-virtual {v1, v10}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->deletePayload(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_2
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/model/PayloadType;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/PayloadType;

    move-result-object v9

    .line 382
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->unknown:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-virtual {v0, v9}, Lcom/apptentive/android/sdk/model/PayloadType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "Oldest unsent payload has unknown type"

    invoke-static {v0, v5}, Lcom/apptentive/android/sdk/debug/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 384
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->unknown:Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-virtual {v0, v9}, Lcom/apptentive/android/sdk/model/PayloadType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Oldest unsent payload type is undefined. Deleting..."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v1, v10}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->deletePayload(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_3
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v0, v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v11}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->updatePayloadRequestPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 392
    invoke-direct {v1, v10}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getPayloadBodyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 394
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Oldest unsent payload had no data file. Deleting..."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    invoke-virtual {v1, v10}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->deletePayload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :cond_4
    sget-object v5, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v5, v5, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    .line 400
    sget-object v5, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v5, v5, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/apptentive/android/sdk/network/HttpRequestMethod;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/network/HttpRequestMethod;

    move-result-object v16

    .line 401
    sget-object v5, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTHENTICATED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    iget v5, v5, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;->index:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v7, :cond_5

    const/16 v17, 0x1

    goto :goto_1

    :cond_5
    const/16 v17, 0x0

    :goto_1
    xor-int/lit8 v5, v17, 0x1

    .line 403
    invoke-direct {v1, v0, v5}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->tryReadFromFile(Ljava/io/File;Z)[B

    move-result-object v12

    if-nez v12, :cond_6

    .line 405
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v5, "Oldest unsent payload file can\'t be read. Deleting..."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    invoke-virtual {v1, v10}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->deletePayload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :cond_6
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadData;

    move-object v8, v0

    invoke-direct/range {v8 .. v17}, Lcom/apptentive/android/sdk/model/PayloadData;-><init>(Lcom/apptentive/android/sdk/model/PayloadType;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apptentive/android/sdk/network/HttpRequestMethod;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 419
    invoke-direct {v1, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    return-object v0

    :cond_7
    invoke-direct {v1, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v2

    :goto_2
    :try_start_3
    const-string v5, "Error getting oldest unsent payload."

    .line 414
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    invoke-direct {v1, v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 419
    invoke-direct {v1, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    return-object v2

    :catchall_1
    move-exception v0

    :goto_3
    invoke-direct {v1, v4}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->ensureClosed(Landroid/database/Cursor;)V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 219
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "ApptentiveDatabase.onCreate(db)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    sget-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_CREATE_PAYLOAD_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE message (_id INTEGER PRIMARY KEY, id TEXT, client_created_at DOUBLE, nonce TEXT, state TEXT, read INTEGER, json TEXT);"

    .line 223
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE file_store (id TEXT PRIMARY KEY, mime_type TEXT, original_uri TEXT, local_uri TEXT, apptentive_uri TEXT);"

    .line 224
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE compound_message_file_store (_id INTEGER PRIMARY KEY, nonce TEXT, local_path TEXT, mime_type TEXT, local_uri TEXT, apptentive_url TEXT, creation_time LONG);"

    .line 225
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    .line 234
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "Upgrade database from %d to %d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->createDatabaseMigrator(II)Lcom/apptentive/android/sdk/storage/DatabaseMigrator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1, p2, p3}, Lcom/apptentive/android/sdk/storage/DatabaseMigrator;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 241
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v3, "Exception while trying to migrate database from %d to %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {v1, v0, v3, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V

    const-string p2, "DROP TABLE payload;"

    .line 245
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    :goto_0
    return-void
.end method

.method reset(Landroid/content/Context;)V
    .locals 1

    const-string v0, "apptentive"

    .line 577
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method updateIncompletePayloads(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 428
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateIncompletePayloads BEFORE"

    .line 429
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->printPayloadTable(Ljava/lang/String;)V

    .line 432
    :cond_0
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 435
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz p4, :cond_1

    .line 440
    sget-object p4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_UPDATE_LEGACY_PAYLOADS:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_UPDATE_INCOMPLETE_PAYLOADS:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 441
    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->encrypt(Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v2, v0

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    .line 440
    invoke-virtual {v1, p4, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Updated missing conversation ids"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Exception while updating missing conversation ids"

    .line 445
    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->logException(Ljava/lang/Exception;)V

    .line 450
    :goto_1
    invoke-direct {p0}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->removeCorruptedPayloads()V

    .line 452
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "updateIncompletePayloads AFTER"

    .line 453
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->printPayloadTable(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 436
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Token is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Conversation id is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
