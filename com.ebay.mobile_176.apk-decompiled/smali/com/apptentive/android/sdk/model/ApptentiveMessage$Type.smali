.class public final enum Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;
.super Ljava/lang/Enum;
.source "ApptentiveMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/model/ApptentiveMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

.field public static final enum AutomatedMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

.field public static final enum CompoundMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

.field public static final enum FileMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

.field public static final enum TextMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

.field public static final enum unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 229
    new-instance v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    const-string v1, "TextMessage"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->TextMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    .line 230
    new-instance v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    const-string v1, "FileMessage"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->FileMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    .line 231
    new-instance v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    const-string v1, "AutomatedMessage"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->AutomatedMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    .line 232
    new-instance v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    const-string v1, "CompoundMessage"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->CompoundMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    .line 234
    new-instance v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    const-string/jumbo v1, "unknown"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    const/4 v0, 0x5

    .line 228
    new-array v0, v0, [Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    sget-object v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->TextMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->FileMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->AutomatedMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->CompoundMessage:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->$VALUES:[Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;
    .locals 4

    .line 238
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 240
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->MESSAGES:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing unknown ApptentiveMessage.Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 243
    sget-object p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->unknown:Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;
    .locals 1

    .line 228
    const-class v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;
    .locals 1

    .line 228
    sget-object v0, Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->$VALUES:[Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/model/ApptentiveMessage$Type;

    return-object v0
.end method
