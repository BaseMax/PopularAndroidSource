.class public final synthetic Lc/c/a/e/d/n/a/g;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->values()[Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/e/d/n/a/g;->a:[I

    sget-object v0, Lc/c/a/e/d/n/a/g;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->VIDEO:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/e/d/n/a/g;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->EPISODE:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
