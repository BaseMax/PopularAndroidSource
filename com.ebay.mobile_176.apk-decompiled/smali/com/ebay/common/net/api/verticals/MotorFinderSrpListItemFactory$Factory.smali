.class interface abstract Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory$Factory;
.super Ljava/lang/Object;
.source "MotorFinderSrpListItemFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/verticals/MotorFinderSrpListItemFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Factory"
.end annotation


# virtual methods
.method public abstract construct(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;Lcom/ebay/common/net/api/search/answers/wire/Position;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.end method

.method public abstract supports(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;)Z
.end method
