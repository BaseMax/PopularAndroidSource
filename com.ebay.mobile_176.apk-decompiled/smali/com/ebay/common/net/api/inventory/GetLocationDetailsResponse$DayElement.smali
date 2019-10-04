.class public final Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetLocationDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DayElement"
.end annotation


# instance fields
.field private final day:Lcom/ebay/common/model/inventory/LocationDetails$Day;


# direct methods
.method public constructor <init>(Lcom/ebay/common/model/inventory/LocationDetails$Day;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;->day:Lcom/ebay/common/model/inventory/LocationDetails$Day;

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;)Lcom/ebay/common/model/inventory/LocationDetails$Day;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;->day:Lcom/ebay/common/model/inventory/LocationDetails$Day;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "Date"

    .line 234
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$1;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;)V

    return-object p1

    :cond_0
    const-string v0, "DayOfWeek"

    .line 243
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement$2;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;)V

    return-object p1

    :cond_1
    const-string v0, "Interval"

    .line 262
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    new-instance p1, Lcom/ebay/common/model/inventory/LocationDetails$Interval;

    invoke-direct {p1}, Lcom/ebay/common/model/inventory/LocationDetails$Interval;-><init>()V

    .line 265
    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;->day:Lcom/ebay/common/model/inventory/LocationDetails$Day;

    iget-object p2, p2, Lcom/ebay/common/model/inventory/LocationDetails$Day;->intervals:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance p2, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;

    invoke-direct {p2, p1}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;-><init>(Lcom/ebay/common/model/inventory/LocationDetails$Interval;)V

    return-object p2

    .line 268
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
