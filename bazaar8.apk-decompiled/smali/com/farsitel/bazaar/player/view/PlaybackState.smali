.class public final enum Lcom/farsitel/bazaar/player/view/PlaybackState;
.super Ljava/lang/Enum;
.source "PlaybackState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/player/view/PlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENDED:Lcom/farsitel/bazaar/player/view/PlaybackState;

.field public static final enum ERROR:Lcom/farsitel/bazaar/player/view/PlaybackState;

.field public static final enum LOADING:Lcom/farsitel/bazaar/player/view/PlaybackState;

.field public static final enum PAUSED:Lcom/farsitel/bazaar/player/view/PlaybackState;

.field public static final enum PLAYING:Lcom/farsitel/bazaar/player/view/PlaybackState;

.field public static final synthetic a:[Lcom/farsitel/bazaar/player/view/PlaybackState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/farsitel/bazaar/player/view/PlaybackState;

    new-instance v1, Lcom/farsitel/bazaar/player/view/PlaybackState;

    const/4 v2, 0x0

    const-string v3, "LOADING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/player/view/PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/player/view/PlaybackState;->LOADING:Lcom/farsitel/bazaar/player/view/PlaybackState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/player/view/PlaybackState;

    const/4 v2, 0x1

    const-string v3, "PLAYING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/player/view/PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/player/view/PlaybackState;->PLAYING:Lcom/farsitel/bazaar/player/view/PlaybackState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/player/view/PlaybackState;

    const/4 v2, 0x2

    const-string v3, "PAUSED"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/player/view/PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/player/view/PlaybackState;->PAUSED:Lcom/farsitel/bazaar/player/view/PlaybackState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/player/view/PlaybackState;

    const/4 v2, 0x3

    const-string v3, "ERROR"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/player/view/PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/player/view/PlaybackState;->ERROR:Lcom/farsitel/bazaar/player/view/PlaybackState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/player/view/PlaybackState;

    const/4 v2, 0x4

    const-string v3, "ENDED"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/player/view/PlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/player/view/PlaybackState;->ENDED:Lcom/farsitel/bazaar/player/view/PlaybackState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/player/view/PlaybackState;->a:[Lcom/farsitel/bazaar/player/view/PlaybackState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/player/view/PlaybackState;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/player/view/PlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/player/view/PlaybackState;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/player/view/PlaybackState;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/player/view/PlaybackState;->a:[Lcom/farsitel/bazaar/player/view/PlaybackState;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/player/view/PlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/player/view/PlaybackState;

    return-object v0
.end method


# virtual methods
.method public final f()Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/l/c/c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->ENDED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 3
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->ERROR:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->PAUSED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->PLAYING:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->LOADING:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    :goto_0
    return-object v0
.end method
