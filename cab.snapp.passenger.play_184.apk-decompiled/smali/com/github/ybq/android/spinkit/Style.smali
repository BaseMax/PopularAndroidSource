.class public final enum Lcom/github/ybq/android/spinkit/Style;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/ybq/android/spinkit/Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/ybq/android/spinkit/Style;

.field public static final enum CHASING_DOTS:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum CIRCLE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum CUBE_GRID:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum DOUBLE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum FADING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum FOLDING_CUBE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum MULTIPLE_PULSE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum MULTIPLE_PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum PULSE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum ROTATING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum ROTATING_PLANE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum THREE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum WANDERING_CUBES:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum WAVE:Lcom/github/ybq/android/spinkit/Style;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/4 v1, 0x0

    const-string v2, "ROTATING_PLANE"

    invoke-direct {v0, v2, v1, v1}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->ROTATING_PLANE:Lcom/github/ybq/android/spinkit/Style;

    .line 9
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/4 v2, 0x1

    const-string v3, "DOUBLE_BOUNCE"

    invoke-direct {v0, v3, v2, v2}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->DOUBLE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    .line 10
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/4 v3, 0x2

    const-string v4, "WAVE"

    invoke-direct {v0, v4, v3, v3}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->WAVE:Lcom/github/ybq/android/spinkit/Style;

    .line 11
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/4 v4, 0x3

    const-string v5, "WANDERING_CUBES"

    invoke-direct {v0, v5, v4, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->WANDERING_CUBES:Lcom/github/ybq/android/spinkit/Style;

    .line 12
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/4 v5, 0x4

    const-string v6, "PULSE"

    invoke-direct {v0, v6, v5, v5}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->PULSE:Lcom/github/ybq/android/spinkit/Style;

    .line 13
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/4 v6, 0x5

    const-string v7, "CHASING_DOTS"

    invoke-direct {v0, v7, v6, v6}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->CHASING_DOTS:Lcom/github/ybq/android/spinkit/Style;

    .line 14
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/4 v7, 0x6

    const-string v8, "THREE_BOUNCE"

    invoke-direct {v0, v8, v7, v7}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->THREE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    .line 15
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/4 v8, 0x7

    const-string v9, "CIRCLE"

    invoke-direct {v0, v9, v8, v8}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    .line 16
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/16 v9, 0x8

    const-string v10, "CUBE_GRID"

    invoke-direct {v0, v10, v9, v9}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->CUBE_GRID:Lcom/github/ybq/android/spinkit/Style;

    .line 17
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/16 v10, 0x9

    const-string v11, "FADING_CIRCLE"

    invoke-direct {v0, v11, v10, v10}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->FADING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    .line 18
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/16 v11, 0xa

    const-string v12, "FOLDING_CUBE"

    invoke-direct {v0, v12, v11, v11}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->FOLDING_CUBE:Lcom/github/ybq/android/spinkit/Style;

    .line 19
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/16 v12, 0xb

    const-string v13, "ROTATING_CIRCLE"

    invoke-direct {v0, v13, v12, v12}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->ROTATING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    .line 20
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/16 v13, 0xc

    const-string v14, "MULTIPLE_PULSE"

    invoke-direct {v0, v14, v13, v13}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE:Lcom/github/ybq/android/spinkit/Style;

    .line 21
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/16 v14, 0xd

    const-string v15, "PULSE_RING"

    invoke-direct {v0, v15, v14, v14}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    .line 22
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const/16 v15, 0xe

    const-string v14, "MULTIPLE_PULSE_RING"

    invoke-direct {v0, v14, v15, v15}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/github/ybq/android/spinkit/Style;

    .line 6
    sget-object v14, Lcom/github/ybq/android/spinkit/Style;->ROTATING_PLANE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v14, v0, v1

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->DOUBLE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->WAVE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->WANDERING_CUBES:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->PULSE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->CHASING_DOTS:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->THREE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v7

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v8

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->CUBE_GRID:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v9

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->FADING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v10

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->FOLDING_CUBE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v11

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->ROTATING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v12

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v13

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    aput-object v1, v0, v15

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->$VALUES:[Lcom/github/ybq/android/spinkit/Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/github/ybq/android/spinkit/Style;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/ybq/android/spinkit/Style;
    .locals 1

    .line 6
    const-class v0, Lcom/github/ybq/android/spinkit/Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/ybq/android/spinkit/Style;

    return-object p0
.end method

.method public static values()[Lcom/github/ybq/android/spinkit/Style;
    .locals 1

    .line 6
    sget-object v0, Lcom/github/ybq/android/spinkit/Style;->$VALUES:[Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v0}, [Lcom/github/ybq/android/spinkit/Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/ybq/android/spinkit/Style;

    return-object v0
.end method
