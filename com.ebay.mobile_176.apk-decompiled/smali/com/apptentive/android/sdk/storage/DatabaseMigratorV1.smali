.class Lcom/apptentive/android/sdk/storage/DatabaseMigratorV1;
.super Lcom/apptentive/android/sdk/storage/DatabaseMigrator;
.source "DatabaseMigratorV1.java"


# direct methods
.method public constructor <init>(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/storage/DatabaseMigrator;-><init>(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 23
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "\t1. Dropping legacy table..."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "DROP TABLE payload;"

    .line 24
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    sget-object p2, Lcom/apptentive/android/sdk/ApptentiveLogTag;->DATABASE:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p3, "\t2. Creating new table..."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    sget-object p2, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;->SQL_CREATE_PAYLOAD_TABLE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
