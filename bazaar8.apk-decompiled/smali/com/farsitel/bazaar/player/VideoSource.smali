.class public final enum Lcom/farsitel/bazaar/player/VideoSource;
.super Ljava/lang/Enum;
.source "PlayerParams.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/player/VideoSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APARAT:Lcom/farsitel/bazaar/player/VideoSource;

.field public static final enum DISK:Lcom/farsitel/bazaar/player/VideoSource;

.field public static final enum NETWORK:Lcom/farsitel/bazaar/player/VideoSource;

.field public static final synthetic a:[Lcom/farsitel/bazaar/player/VideoSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/player/VideoSource;

    new-instance v1, Lcom/farsitel/bazaar/player/VideoSource;

    const/4 v2, 0x0

    const-string v3, "NETWORK"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/player/VideoSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/player/VideoSource;->NETWORK:Lcom/farsitel/bazaar/player/VideoSource;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/player/VideoSource;

    const/4 v2, 0x1

    const-string v3, "DISK"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/player/VideoSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/player/VideoSource;->DISK:Lcom/farsitel/bazaar/player/VideoSource;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/player/VideoSource;

    const/4 v2, 0x2

    const-string v3, "APARAT"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/player/VideoSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/player/VideoSource;->APARAT:Lcom/farsitel/bazaar/player/VideoSource;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/player/VideoSource;->a:[Lcom/farsitel/bazaar/player/VideoSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/player/VideoSource;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/player/VideoSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/player/VideoSource;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/player/VideoSource;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/player/VideoSource;->a:[Lcom/farsitel/bazaar/player/VideoSource;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/player/VideoSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/player/VideoSource;

    return-object v0
.end method
