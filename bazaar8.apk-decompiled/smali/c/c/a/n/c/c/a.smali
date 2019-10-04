.class public final synthetic Lc/c/a/n/c/c/a;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/common/model/ui/EntityState;->values()[Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UPDATE_NEEDED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PREPARING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INSTALLED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/c/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->MALICIOUS_APP:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    return-void
.end method
