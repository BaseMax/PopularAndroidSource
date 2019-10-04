.class final Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;
.super Ljava/lang/Object;
.source "ApptentiveDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PayloadEntry"
.end annotation


# static fields
.field static final COLUMN_AUTHENTICATED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_PRIMARY_KEY:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

.field static final COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PRIMARY_KEY:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 64
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "payloadType"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PAYLOAD_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 65
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "identifier"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_IDENTIFIER:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 66
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "contentType"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONTENT_TYPE:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 67
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "authToken"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTH_TOKEN:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 68
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "conversationId"

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 69
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "requestMethod"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_REQUEST_METHOD:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 70
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "path"

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_PATH:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 71
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "authenticated"

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_AUTHENTICATED:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    .line 72
    new-instance v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    const-string v1, "localConversationId"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry;->COLUMN_LOCAL_CONVERSATION_ID:Lcom/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn;

    return-void
.end method
