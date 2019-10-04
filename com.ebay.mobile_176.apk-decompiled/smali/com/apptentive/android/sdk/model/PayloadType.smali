.class public final enum Lcom/apptentive/android/sdk/model/PayloadType;
.super Ljava/lang/Enum;
.source "PayloadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/model/PayloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum app_release:Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum device:Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum event:Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum logout:Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum message:Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum person:Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum sdk:Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum sdk_and_app_release:Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum survey:Lcom/apptentive/android/sdk/model/PayloadType;

.field public static final enum unknown:Lcom/apptentive/android/sdk/model/PayloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 15
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string v1, "message"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->message:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 16
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string v1, "event"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->event:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 17
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string v1, "device"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->device:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 18
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string/jumbo v1, "sdk"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->sdk:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 19
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string v1, "app_release"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->app_release:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 20
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string/jumbo v1, "sdk_and_app_release"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->sdk_and_app_release:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 21
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string v1, "person"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->person:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 22
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string v1, "logout"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->logout:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 23
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string/jumbo v1, "unknown"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->unknown:Lcom/apptentive/android/sdk/model/PayloadType;

    .line 25
    new-instance v0, Lcom/apptentive/android/sdk/model/PayloadType;

    const-string/jumbo v1, "survey"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/apptentive/android/sdk/model/PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->survey:Lcom/apptentive/android/sdk/model/PayloadType;

    const/16 v0, 0xa

    .line 14
    new-array v0, v0, [Lcom/apptentive/android/sdk/model/PayloadType;

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->message:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->event:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->device:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->sdk:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->app_release:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->sdk_and_app_release:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->person:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->logout:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->unknown:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/apptentive/android/sdk/model/PayloadType;->survey:Lcom/apptentive/android/sdk/model/PayloadType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->$VALUES:[Lcom/apptentive/android/sdk/model/PayloadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/PayloadType;
    .locals 4

    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/model/PayloadType;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/PayloadType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 31
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->PAYLOADS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing unknown Payload.PayloadType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 34
    sget-object p0, Lcom/apptentive/android/sdk/model/PayloadType;->unknown:Lcom/apptentive/android/sdk/model/PayloadType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/PayloadType;
    .locals 1

    .line 14
    const-class v0, Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/model/PayloadType;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/model/PayloadType;
    .locals 1

    .line 14
    sget-object v0, Lcom/apptentive/android/sdk/model/PayloadType;->$VALUES:[Lcom/apptentive/android/sdk/model/PayloadType;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/model/PayloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/model/PayloadType;

    return-object v0
.end method
