.class public final enum Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;
.super Ljava/lang/Enum;
.source "CinemaFileState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

.field public static final enum DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

.field public static final enum EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

.field public static final enum NOT_EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

.field public static final enum PART_EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    const/4 v2, 0x0

    const-string v3, "NOT_EXISTS"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->NOT_EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    const/4 v2, 0x1

    const-string v3, "EXISTS"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    const/4 v2, 0x2

    const-string v3, "PART_EXISTS"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->PART_EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    const/4 v2, 0x3

    const-string v3, "DOWNLOADING"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->$VALUES:[Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->$VALUES:[Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    return-object v0
.end method
