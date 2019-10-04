.class public final enum Lcom/farsitel/bazaar/data/entity/CommentAction;
.super Ljava/lang/Enum;
.source "CommentAction.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/entity/CommentAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/data/entity/CommentAction;

.field public static final enum DOWN_VOTE:Lcom/farsitel/bazaar/data/entity/CommentAction;

.field public static final enum REPORT:Lcom/farsitel/bazaar/data/entity/CommentAction;

.field public static final enum UP_VOTE:Lcom/farsitel/bazaar/data/entity/CommentAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/data/entity/CommentAction;

    new-instance v1, Lcom/farsitel/bazaar/data/entity/CommentAction;

    const/4 v2, 0x0

    const-string v3, "UP_VOTE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/entity/CommentAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/CommentAction;->UP_VOTE:Lcom/farsitel/bazaar/data/entity/CommentAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/entity/CommentAction;

    const/4 v2, 0x1

    const-string v3, "DOWN_VOTE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/entity/CommentAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/CommentAction;->DOWN_VOTE:Lcom/farsitel/bazaar/data/entity/CommentAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/entity/CommentAction;

    const/4 v2, 0x2

    const-string v3, "REPORT"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/entity/CommentAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/entity/CommentAction;->REPORT:Lcom/farsitel/bazaar/data/entity/CommentAction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/entity/CommentAction;->$VALUES:[Lcom/farsitel/bazaar/data/entity/CommentAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/CommentAction;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/entity/CommentAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/entity/CommentAction;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/entity/CommentAction;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/entity/CommentAction;->$VALUES:[Lcom/farsitel/bazaar/data/entity/CommentAction;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/entity/CommentAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/entity/CommentAction;

    return-object v0
.end method
