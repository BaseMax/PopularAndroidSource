.class public final Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetLocationDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntervalElement"
.end annotation


# instance fields
.field private final interval:Lcom/ebay/common/model/inventory/LocationDetails$Interval;


# direct methods
.method public constructor <init>(Lcom/ebay/common/model/inventory/LocationDetails$Interval;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;->interval:Lcom/ebay/common/model/inventory/LocationDetails$Interval;

    return-void
.end method

.method static synthetic access$200(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;)Lcom/ebay/common/model/inventory/LocationDetails$Interval;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;->interval:Lcom/ebay/common/model/inventory/LocationDetails$Interval;

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

    const-string v0, "Open"

    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement$1;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;)V

    return-object p1

    :cond_0
    const-string v0, "Close"

    .line 294
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    new-instance p1, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement$2;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;)V

    return-object p1

    .line 303
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
