.class public final enum Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;
.super Ljava/lang/Enum;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

.field public static final enum dismiss:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

.field public static final enum interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

.field public static final enum unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    const-string v1, "dismiss"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->dismiss:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    .line 42
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    const-string v1, "interaction"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    .line 43
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    const-string/jumbo v1, "unknown"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->dismiss:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->$VALUES:[Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;
    .locals 4

    .line 47
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 49
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing unknown Action.Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 52
    sget-object p0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;
    .locals 1

    .line 40
    const-class v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;
    .locals 1

    .line 40
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->$VALUES:[Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    return-object v0
.end method
