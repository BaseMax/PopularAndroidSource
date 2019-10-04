.class public final enum Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;
.super Ljava/lang/Enum;
.source "ViewHolderItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HEADER:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

.field public static final enum NORMAL:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    new-instance v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    const/4 v2, 0x0

    const-string v3, "NORMAL"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;->NORMAL:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    const/4 v2, 0x1

    const-string v3, "HEADER"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;->HEADER:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;->a:[Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;->a:[Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityViewType;

    return-object v0
.end method
