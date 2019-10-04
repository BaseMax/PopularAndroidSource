.class public final enum Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;
.super Ljava/lang/Enum;
.source "LogicalOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

.field public static final enum $and:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

.field public static final enum $not:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

.field public static final enum $or:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

.field public static final enum unknown:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    const-string v1, "$and"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$and:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    .line 16
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    const-string v1, "$or"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$or:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    .line 17
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    const-string v1, "$not"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$not:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    .line 19
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    const-string/jumbo v1, "unknown"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->unknown:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    const/4 v0, 0x4

    .line 14
    new-array v0, v0, [Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$and:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$or:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$not:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->unknown:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    aput-object v1, v0, v5

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$VALUES:[Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

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

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;
    .locals 0

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 27
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 30
    :cond_0
    sget-object p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->unknown:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;
    .locals 1

    .line 14
    const-class v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;
    .locals 1

    .line 14
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$VALUES:[Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    return-object v0
.end method
