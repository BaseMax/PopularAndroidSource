.class public final enum Lcom/pusher/java_websocket/WebSocket$READYSTATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/java_websocket/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "READYSTATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pusher/java_websocket/WebSocket$READYSTATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pusher/java_websocket/WebSocket$READYSTATE;

.field public static final enum CLOSED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

.field public static final enum CLOSING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

.field public static final enum CONNECTING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

.field public static final enum NOT_YET_CONNECTED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

.field public static final enum OPEN:Lcom/pusher/java_websocket/WebSocket$READYSTATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 v1, 0x0

    const-string v2, "NOT_YET_CONNECTED"

    invoke-direct {v0, v2, v1}, Lcom/pusher/java_websocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    new-instance v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 v2, 0x1

    const-string v3, "CONNECTING"

    invoke-direct {v0, v3, v2}, Lcom/pusher/java_websocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    new-instance v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 v3, 0x2

    const-string v4, "OPEN"

    invoke-direct {v0, v4, v3}, Lcom/pusher/java_websocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->OPEN:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    new-instance v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 v4, 0x3

    const-string v5, "CLOSING"

    invoke-direct {v0, v5, v4}, Lcom/pusher/java_websocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    new-instance v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 v5, 0x4

    const-string v6, "CLOSED"

    invoke-direct {v0, v6, v5}, Lcom/pusher/java_websocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    .line 15
    sget-object v6, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    aput-object v6, v0, v1

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->OPEN:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->$VALUES:[Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pusher/java_websocket/WebSocket$READYSTATE;
    .locals 1

    .line 15
    const-class v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    return-object p0
.end method

.method public static values()[Lcom/pusher/java_websocket/WebSocket$READYSTATE;
    .locals 1

    .line 15
    sget-object v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->$VALUES:[Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    invoke-virtual {v0}, [Lcom/pusher/java_websocket/WebSocket$READYSTATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    return-object v0
.end method
