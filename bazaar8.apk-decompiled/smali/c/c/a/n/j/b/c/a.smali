.class public final synthetic Lc/c/a/n/j/b/c/a;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;->values()[Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/n/j/b/c/a;->a:[I

    sget-object v0, Lc/c/a/n/j/b/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;->VIDEO:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/j/b/c/a;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;->EPISODE:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
