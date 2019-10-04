.class public final synthetic Lc/c/a/n/p/b;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/common/model/login/LoginType;->values()[Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/n/p/b;->a:[I

    sget-object v0, Lc/c/a/n/p/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/login/LoginType;->MERGE_ACCOUNT:Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/common/model/login/LoginType;->values()[Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/n/p/b;->b:[I

    sget-object v0, Lc/c/a/n/p/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/login/LoginType;->IN_APP_PURCHASE:Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/p/b;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/login/LoginType;->IN_APP_REVIEW:Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
