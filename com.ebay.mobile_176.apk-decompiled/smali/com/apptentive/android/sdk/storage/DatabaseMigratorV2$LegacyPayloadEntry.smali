.class final Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2$LegacyPayloadEntry;
.super Ljava/lang/Object;
.source "DatabaseMigratorV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyPayloadEntry"
.end annotation


# static fields
.field static final PAYLOAD_KEY_BASE_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final PAYLOAD_KEY_DB_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final PAYLOAD_KEY_JSON:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2$LegacyPayloadEntry;->PAYLOAD_KEY_DB_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 39
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "base_type"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2$LegacyPayloadEntry;->PAYLOAD_KEY_BASE_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 40
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "json"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV2$LegacyPayloadEntry;->PAYLOAD_KEY_JSON:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    return-void
.end method
