.class public final enum Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;
.super Ljava/lang/Enum;
.source "ApptentiveMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/model/ApptentiveMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

.field public static final enum saved:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

.field public static final enum sending:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

.field public static final enum sent:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

.field public static final enum unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 248
    new-instance v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    const-string/jumbo v1, "sending"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->sending:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    .line 249
    new-instance v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    const-string/jumbo v1, "sent"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->sent:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    .line 250
    new-instance v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    const-string/jumbo v1, "saved"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->saved:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    .line 251
    new-instance v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    const-string/jumbo v1, "unknown"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    const/4 v0, 0x4

    .line 247
    new-array v0, v0, [Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    sget-object v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->sending:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->sent:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->saved:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->$VALUES:[Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;
    .locals 4

    .line 255
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 257
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing unknown ApptentiveMessage.State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 260
    sget-object p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;
    .locals 1

    .line 247
    const-class v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;
    .locals 1

    .line 247
    sget-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->$VALUES:[Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/model/ApptentiveMessage$State;

    return-object v0
.end method
