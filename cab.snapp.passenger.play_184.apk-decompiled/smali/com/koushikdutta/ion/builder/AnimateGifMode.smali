.class public final enum Lcom/koushikdutta/ion/builder/AnimateGifMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/ion/builder/AnimateGifMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field public static final enum ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field public static final enum ANIMATE_ONCE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field public static final enum NO_ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const/4 v1, 0x0

    const-string v2, "NO_ANIMATE"

    invoke-direct {v0, v2, v1}, Lcom/koushikdutta/ion/builder/AnimateGifMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->NO_ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 14
    new-instance v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const/4 v2, 0x1

    const-string v3, "ANIMATE"

    invoke-direct {v0, v3, v2}, Lcom/koushikdutta/ion/builder/AnimateGifMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 18
    new-instance v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const/4 v3, 0x2

    const-string v4, "ANIMATE_ONCE"

    invoke-direct {v0, v4, v3}, Lcom/koushikdutta/ion/builder/AnimateGifMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE_ONCE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 6
    sget-object v4, Lcom/koushikdutta/ion/builder/AnimateGifMode;->NO_ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE_ONCE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->$VALUES:[Lcom/koushikdutta/ion/builder/AnimateGifMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/ion/builder/AnimateGifMode;
    .locals 1

    .line 6
    const-class v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/ion/builder/AnimateGifMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->$VALUES:[Lcom/koushikdutta/ion/builder/AnimateGifMode;

    invoke-virtual {v0}, [Lcom/koushikdutta/ion/builder/AnimateGifMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/ion/builder/AnimateGifMode;

    return-object v0
.end method
