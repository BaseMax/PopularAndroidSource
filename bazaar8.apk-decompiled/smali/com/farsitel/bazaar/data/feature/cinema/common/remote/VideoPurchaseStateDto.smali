.class public final enum Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;
.super Ljava/lang/Enum;
.source "VideoPurchaseStateDto.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

.field public static final enum bought:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

.field public static final enum free:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

.field public static final enum subscription:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    new-instance v1, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    const/4 v2, 0x0

    const-string v3, "free"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;->free:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    const/4 v2, 0x1

    const-string v3, "bought"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;->bought:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    const/4 v2, 0x2

    const-string v3, "subscription"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;->subscription:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;->a:[Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;->a:[Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    return-object v0
.end method


# virtual methods
.method public final f()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/e/d/h/b/a/b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/common/model/VideoPurchaseState;->BOUGHT:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 3
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/common/model/VideoPurchaseState;->SUBSCRIPTION:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/farsitel/bazaar/common/model/VideoPurchaseState;->FREE:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    :goto_0
    return-object v0
.end method
