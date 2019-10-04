.class public final enum Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/java_websocket/drafts/Draft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandshakeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

.field public static final enum MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

.field public static final enum NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    const/4 v1, 0x0

    const-string v2, "MATCHED"

    invoke-direct {v0, v2, v1}, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    .line 37
    new-instance v0, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    const/4 v2, 0x1

    const-string v3, "NOT_MATCHED"

    invoke-direct {v0, v3, v2}, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    .line 33
    sget-object v3, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    aput-object v3, v0, v1

    sget-object v1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->$VALUES:[Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    .locals 1

    .line 33
    const-class v0, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p0
.end method

.method public static values()[Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    .locals 1

    .line 33
    sget-object v0, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->$VALUES:[Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    invoke-virtual {v0}, [Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object v0
.end method
