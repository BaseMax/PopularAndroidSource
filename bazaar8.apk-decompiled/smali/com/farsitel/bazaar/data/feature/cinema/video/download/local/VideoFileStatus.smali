.class public final enum Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;
.super Ljava/lang/Enum;
.source "VideoStorage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXISTS:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

.field public static final enum NOT_EXISTS:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

.field public static final enum TEMP:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

.field public static final synthetic a:[Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    new-instance v1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    const/4 v2, 0x0

    const-string v3, "EXISTS"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->EXISTS:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    const/4 v2, 0x1

    const-string v3, "NOT_EXISTS"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->NOT_EXISTS:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    const/4 v2, 0x2

    const-string v3, "TEMP"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->TEMP:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->a:[Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->a:[Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    return-object v0
.end method
