.class public final enum Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;
.super Ljava/lang/Enum;
.source "ViewHolderItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

.field public static final enum APP:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

.field public static final enum DUAL:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

.field public static final enum INLINE:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    const/4 v2, 0x0

    const-string v3, "APP"

    .line 1
    invoke-direct {v1, v3, v2, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->APP:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    const/4 v2, 0x1

    const-string v3, "INLINE"

    .line 2
    invoke-direct {v1, v3, v2, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->INLINE:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    const/4 v2, 0x2

    const-string v3, "DUAL"

    .line 3
    invoke-direct {v1, v3, v2, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->DUAL:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->$VALUES:[Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->$VALUES:[Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->value:I

    return v0
.end method
