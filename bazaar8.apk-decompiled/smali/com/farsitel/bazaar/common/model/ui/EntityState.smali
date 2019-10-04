.class public final enum Lcom/farsitel/bazaar/common/model/ui/EntityState;
.super Ljava/lang/Enum;
.source "EntityState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum CHECKING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum COMPLETED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum INCOMPATIBLE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum INSTALLED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum MALICIOUS_APP:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum PAUSE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum PREPARING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum UNDEFINED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public static final enum UPDATE_NEEDED:Lcom/farsitel/bazaar/common/model/ui/EntityState;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/ui/EntityState;

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/4 v2, 0x0

    const-string v3, "UNDEFINED"

    const-string v4, "undefined"

    .line 1
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UNDEFINED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/4 v2, 0x1

    const-string v3, "UPDATE_NEEDED"

    const-string v4, "update_needed"

    .line 2
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UPDATE_NEEDED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/4 v2, 0x2

    const-string v3, "INSTALLED"

    const-string v4, "installed"

    .line 3
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INSTALLED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/4 v2, 0x3

    const-string v3, "FILE_EXISTS"

    const-string v4, "file_exists"

    .line 4
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/4 v2, 0x4

    const-string v3, "NONE"

    const-string v4, "none"

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/4 v2, 0x5

    const-string v3, "PREPARING"

    const-string v4, "preparing"

    .line 6
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PREPARING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/4 v2, 0x6

    const-string v3, "INCOMPATIBLE"

    const-string v4, "incompatible"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INCOMPATIBLE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/4 v2, 0x7

    const-string v3, "MALICIOUS_APP"

    const-string v4, "malicious_app"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->MALICIOUS_APP:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/16 v2, 0x8

    const-string v3, "IN_QUEUE"

    const-string v4, "in_queue"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/16 v2, 0x9

    const-string v3, "DOWNLOADING"

    const-string v4, "downloading"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/16 v2, 0xa

    const-string v3, "CHECKING"

    const-string v4, "checking"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->CHECKING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/16 v2, 0xb

    const-string v3, "COMPLETED"

    const-string v4, "completed"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->COMPLETED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/16 v2, 0xc

    const-string v3, "PAUSE"

    const-string v4, "pause"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/16 v2, 0xd

    const-string v3, "PAUSE_BY_SYSTEM"

    const-string v4, "pause_by_system"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/16 v2, 0xe

    const-string v3, "FAILED"

    const-string v4, "failed"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const-string v2, "FAILED_STORAGE"

    const/16 v3, 0xf

    const-string v4, "failed_storage"

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->$VALUES:[Lcom/farsitel/bazaar/common/model/ui/EntityState;

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

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->$VALUES:[Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/ui/EntityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final inDownloadProcess()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PREPARING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final needToDownloadContinue()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE_BY_SYSTEM:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->PAUSE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
