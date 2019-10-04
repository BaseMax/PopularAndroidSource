.class public final enum Lcom/farsitel/bazaar/common/model/page/CommonItemType;
.super Ljava/lang/Enum;
.source "PageType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/page/CommonItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum DESCRIPTION:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum EDITOR_CHOICE_HEADER:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum FEATURE_HEADER:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum LIST_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum LIST_INLINE_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum VITRIN_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum VITRIN_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum VITRIN_HAMI_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum VITRIN_HAMI_INLINE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum VITRIN_PROMO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum VITRIN_SERIAL:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

.field public static final enum VITRIN_VIDEO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/4 v2, 0x0

    const-string v3, "VITRIN_PROMO"

    const/16 v4, 0x3e8

    .line 1
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_PROMO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/4 v2, 0x1

    const-string v3, "VITRIN_HAMI_APP"

    const/16 v4, 0x3e9

    .line 2
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_HAMI_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/4 v2, 0x2

    const-string v3, "VITRIN_HAMI_INLINE"

    const/16 v4, 0x3ea

    .line 3
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_HAMI_INLINE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/4 v2, 0x3

    const-string v3, "VITRIN_VIDEO"

    const/16 v4, 0x3eb

    .line 4
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_VIDEO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/4 v2, 0x4

    const-string v3, "VITRIN_SERIAL"

    const/16 v4, 0x3ec

    .line 5
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_SERIAL:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/4 v2, 0x5

    const-string v3, "VITRIN_APP"

    const/16 v4, 0x3ed

    .line 6
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/4 v2, 0x6

    const-string v3, "VITRIN_EPISODE"

    const/16 v4, 0x3ee

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/4 v2, 0x7

    const-string v3, "FEATURE_HEADER"

    const/16 v4, 0x3ef

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->FEATURE_HEADER:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/16 v2, 0x8

    const-string v3, "DESCRIPTION"

    const/16 v4, 0x3f0

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->DESCRIPTION:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/16 v2, 0x9

    const-string v3, "EDITOR_CHOICE_HEADER"

    const/16 v4, 0x3f1

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->EDITOR_CHOICE_HEADER:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/16 v2, 0xa

    const-string v3, "LIST_INLINE_APP"

    const/16 v4, 0x3f2

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->LIST_INLINE_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    const/16 v2, 0xb

    const-string v3, "LIST_EPISODE"

    const/16 v4, 0x3f3

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->LIST_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/page/CommonItemType;

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

    iput p3, p0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/page/CommonItemType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/page/CommonItemType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->$VALUES:[Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/page/CommonItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->value:I

    return v0
.end method
