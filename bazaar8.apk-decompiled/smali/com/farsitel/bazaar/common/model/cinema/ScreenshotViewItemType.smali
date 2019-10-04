.class public final enum Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;
.super Ljava/lang/Enum;
.source "ViewHolderItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

.field public static final enum BIG_IMAGE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

.field public static final enum IMAGE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

.field public static final enum TRAILER_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    const/4 v2, 0x0

    const-string v3, "BIG_IMAGE_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->BIG_IMAGE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    const/4 v2, 0x1

    const-string v3, "IMAGE_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->IMAGE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    const/4 v2, 0x2

    const-string v3, "TRAILER_ITEM"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->TRAILER_ITEM:Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/cinema/ScreenshotViewItemType;

    return-object v0
.end method
