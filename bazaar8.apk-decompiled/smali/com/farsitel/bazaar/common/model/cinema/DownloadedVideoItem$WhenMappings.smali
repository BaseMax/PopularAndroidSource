.class public final synthetic Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/common/model/ui/EntityState;->values()[Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->values()[Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->SENT:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->PENDING:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method