.class Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$FinderConfirmationFactory;
.super Ljava/lang/Object;
.source "MotorFinderSrpListItemFactory.java"

# interfaces
.implements Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinderConfirmationFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$1;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$FinderConfirmationFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;Lcom/ebay/common/net/api/search/answers/wire/Position;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
    .locals 1

    .line 75
    new-instance v0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;

    iget-object p2, p2, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {v0, p1, p2}, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    return-object v0
.end method

.method public supports(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;)Z
    .locals 1

    const-string v0, "CONFIRMATION_MESSAGE"

    .line 69
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->displayState:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
