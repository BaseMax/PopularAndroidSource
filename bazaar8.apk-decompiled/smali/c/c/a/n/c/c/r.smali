.class public final synthetic Lc/c/a/n/c/c/r;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/farsitel/bazaar/common/model/EntityType;->values()[Lcom/farsitel/bazaar/common/model/EntityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/n/c/c/r;->a:[I

    sget-object v0, Lc/c/a/n/c/c/r;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/EntityType;->APP:Lcom/farsitel/bazaar/common/model/EntityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/r;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/EntityType;->VIDEO:Lcom/farsitel/bazaar/common/model/EntityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/common/model/EntityType;->values()[Lcom/farsitel/bazaar/common/model/EntityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/n/c/c/r;->b:[I

    sget-object v0, Lc/c/a/n/c/c/r;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/EntityType;->APP:Lcom/farsitel/bazaar/common/model/EntityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/r;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/EntityType;->VIDEO:Lcom/farsitel/bazaar/common/model/EntityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
