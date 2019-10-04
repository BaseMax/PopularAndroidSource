.class public abstract enum Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;
.super Ljava/lang/Enum;
.source "ConditionalOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $after:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $before:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $contains:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $ends_with:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $eq:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $exists:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $gt:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $gte:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $lt:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $lte:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $ne:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum $starts_with:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public static final enum unknown:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 16
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$1;

    const-string v1, "$exists"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$exists:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 35
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$2;

    const-string v1, "$ne"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$ne:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 55
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$3;

    const-string v1, "$eq"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$eq:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 79
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$4;

    const-string v1, "$lt"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$lt:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 96
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$5;

    const-string v1, "$lte"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$lte:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 113
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$6;

    const-string v1, "$gte"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$gte:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 130
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$7;

    const-string v1, "$gt"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$gt:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 148
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$8;

    const-string v1, "$contains"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$contains:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 165
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$9;

    const-string v1, "$starts_with"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$starts_with:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 179
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$10;

    const-string v1, "$ends_with"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$ends_with:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 194
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$11;

    const-string v1, "$before"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$before:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 221
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$12;

    const-string v1, "$after"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$after:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    .line 249
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$13;

    const-string/jumbo v1, "unknown"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->unknown:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    const/16 v0, 0xd

    .line 15
    new-array v0, v0, [Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$exists:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$ne:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$eq:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$lt:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$lte:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$gte:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v7

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$gt:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v8

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$contains:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v9

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$starts_with:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v10

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$ends_with:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v11

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$before:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v12

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$after:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v13

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->unknown:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    aput-object v1, v0, v14

    sput-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$VALUES:[Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->toPrettyDate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;
    .locals 4

    if-eqz p0, :cond_0

    .line 265
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/RuntimeException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "Unrecognized ConditionalOperator: %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 270
    :cond_0
    sget-object p0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->unknown:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    return-object p0
.end method

.method private static toPrettyDate(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 277
    instance-of v0, p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    if-eqz v0, :cond_0

    .line 278
    check-cast p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    .line 279
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/Apptentive$DateTime;->getDateTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->toPrettyDate(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 282
    :cond_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/StringUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;
    .locals 1

    .line 15
    const-class v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;
    .locals 1

    .line 15
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->$VALUES:[Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    return-object v0
.end method


# virtual methods
.method public abstract apply(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
.end method

.method public abstract description(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/String;
.end method
