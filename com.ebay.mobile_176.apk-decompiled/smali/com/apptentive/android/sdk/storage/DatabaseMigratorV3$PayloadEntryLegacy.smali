.class final Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;
.super Ljava/lang/Object;
.source "DatabaseMigratorV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PayloadEntryLegacy"
.end annotation


# static fields
.field static final COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_ENCRYPTED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_PRIMARY_KEY:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_PRIMARY_KEY:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 27
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string/jumbo v1, "payloadType"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 28
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "identifier"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 29
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "contentType"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 30
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "authToken"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 31
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "conversationId"

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 32
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string/jumbo v1, "requestMethod"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 33
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string/jumbo v1, "path"

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 34
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "encrypted"

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_ENCRYPTED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 35
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "localConversationId"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    return-void
.end method
