.class public final enum Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;
.super Ljava/lang/Enum;
.source "OtherEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENDED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final enum ERROR:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final enum EXIT_FULL_SCREEN:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final enum FULL_SCREEN:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final enum LOADING:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final enum PAUSED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final enum PLAYING:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final enum QUALITY_CHANGED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final enum SEEK:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final enum SUBTITLE_CHANGED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

.field public static final synthetic a:[Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;


# instance fields
.field public final actionLogValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/4 v2, 0x0

    const-string v3, "SUBTITLE_CHANGED"

    const-string v4, "subtitle_changed"

    .line 1
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->SUBTITLE_CHANGED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/4 v2, 0x1

    const-string v3, "QUALITY_CHANGED"

    const-string v4, "quality_changed"

    .line 2
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->QUALITY_CHANGED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/4 v2, 0x2

    const-string v3, "FULL_SCREEN"

    const-string v4, "full_screen"

    .line 3
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->FULL_SCREEN:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/4 v2, 0x3

    const-string v3, "EXIT_FULL_SCREEN"

    const-string v4, "exit_full_screen"

    .line 4
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->EXIT_FULL_SCREEN:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/4 v2, 0x4

    const-string v3, "SEEK"

    const-string v4, "seek"

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->SEEK:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/4 v2, 0x5

    const-string v3, "LOADING"

    const-string v4, "loading"

    .line 6
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->LOADING:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/4 v2, 0x6

    const-string v3, "PLAYING"

    const-string v4, "playing"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->PLAYING:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/4 v2, 0x7

    const-string v3, "PAUSED"

    const-string v4, "paused"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->PAUSED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/16 v2, 0x8

    const-string v3, "ERROR"

    const-string v4, "error"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->ERROR:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/16 v2, 0x9

    const-string v3, "ENDED"

    const-string v4, "ended"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->ENDED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->a:[Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->actionLogValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->a:[Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->actionLogValue:Ljava/lang/String;

    return-object v0
.end method
