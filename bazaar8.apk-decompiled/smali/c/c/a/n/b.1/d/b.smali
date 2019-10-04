.class public final synthetic Lc/c/a/n/b/d/b;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/farsitel/bazaar/common/model/ui/EntityState;->values()[Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/n/b/d/b;->a:[I

    sget-object v0, Lc/c/a/n/b/d/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UPDATE_NEEDED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INSTALLED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/common/model/ui/EntityState;->values()[Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UNDEFINED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UPDATE_NEEDED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INCOMPATIBLE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PREPARING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->CHECKING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->COMPLETED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INSTALLED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/b/d/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->MALICIOUS_APP:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    return-void
.end method
