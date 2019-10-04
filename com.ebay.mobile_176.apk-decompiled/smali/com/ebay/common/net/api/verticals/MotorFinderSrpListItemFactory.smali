.class public Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;
.super Ljava/lang/Object;
.source "MotorFinderSrpListItemFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$FinderConfirmationFactory;,
        Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$FullFinderFactory;,
        Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$Factory;
    }
.end annotation


# instance fields
.field private factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;->factories:Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;->factories:Ljava/util/List;

    new-instance v1, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$FullFinderFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$FullFinderFactory;-><init>(Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;->factories:Ljava/util/List;

    new-instance v1, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$FinderConfirmationFactory;

    invoke-direct {v1, v2}, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$FinderConfirmationFactory;-><init>(Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static get()Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;

    invoke-direct {v0}, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createMotorFinderSrpListItem(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;Lcom/ebay/common/net/api/search/answers/wire/Position;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$Factory;

    .line 35
    invoke-interface {v2, p1}, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$Factory;->supports(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-interface {v2, p1, p2}, Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$Factory;->construct(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;Lcom/ebay/common/net/api/search/answers/wire/Position;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method
