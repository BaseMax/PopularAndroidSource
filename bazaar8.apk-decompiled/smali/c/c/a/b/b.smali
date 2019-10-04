.class public final synthetic Lc/c/a/b/b;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->values()[Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/b/b;->a:[I

    sget-object v0, Lc/c/a/b/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lc/c/a/b/b;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
