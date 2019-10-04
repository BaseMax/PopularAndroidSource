.class public final enum Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;
.super Ljava/lang/Enum;
.source "PlatformNotificationsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/PlatformNotificationsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemListingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

.field public static final enum BIDONLY:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

.field public static final enum BIDWITHBIN:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

.field public static final enum BINONLY:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 118
    new-instance v0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    const-string v1, "BINONLY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->BINONLY:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    .line 119
    new-instance v0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    const-string v1, "BIDWITHBIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->BIDWITHBIN:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    .line 120
    new-instance v0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    const-string v1, "BIDONLY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->BIDONLY:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    .line 116
    new-array v0, v5, [Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    sget-object v1, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->BINONLY:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->BIDWITHBIN:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->BIDONLY:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->$VALUES:[Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput p3, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->value:I

    return-void
.end method

.method public static fromListingType(Ljava/lang/String;Z)Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "FixedPriceItem"

    .line 143
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    sget-object p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->BINONLY:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    return-object p0

    :cond_1
    const-string v1, "Chinese"

    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 146
    sget-object p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->BIDWITHBIN:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->BIDONLY:Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    :goto_0
    return-object p0

    :cond_3
    return-object v0
.end method

.method public static get(I)Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;
    .locals 5

    .line 130
    invoke-static {}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->values()[Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 132
    invoke-virtual {v3}, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;
    .locals 1

    .line 116
    const-class v0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;
    .locals 1

    .line 116
    sget-object v0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->$VALUES:[Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    invoke-virtual {v0}, [Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/ebay/common/model/mdns/PlatformNotificationsEvent$ItemListingType;->value:I

    return v0
.end method
