.class public final enum Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;
.super Ljava/lang/Enum;
.source "Question.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

.field public static final enum multichoice:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

.field public static final enum multiselect:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

.field public static final enum range:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

.field public static final enum singleline:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

.field public static final enum unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    const-string v1, "multichoice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->multichoice:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    .line 35
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    const-string/jumbo v1, "singleline"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->singleline:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    .line 36
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    const-string v1, "multiselect"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->multiselect:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    .line 37
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    const-string v1, "range"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->range:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    .line 38
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    const-string/jumbo v1, "unknown"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    const/4 v0, 0x5

    .line 33
    new-array v0, v0, [Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->multichoice:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->singleline:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->multiselect:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->range:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->$VALUES:[Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;
    .locals 4

    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 44
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing unknown Question.Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 47
    sget-object p0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;
    .locals 1

    .line 33
    const-class v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;
    .locals 1

    .line 33
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->$VALUES:[Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;

    return-object v0
.end method
