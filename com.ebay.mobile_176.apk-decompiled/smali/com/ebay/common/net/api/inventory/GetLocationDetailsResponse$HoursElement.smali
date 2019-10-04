.class public final Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetLocationDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HoursElement"
.end annotation


# instance fields
.field private final hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;


# direct methods
.method public constructor <init>(Lcom/ebay/common/model/inventory/LocationDetails$Hours;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "Day"

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    iget-object p1, p1, Lcom/ebay/common/model/inventory/LocationDetails$Hours;->days:Ljava/util/List;

    if-nez p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/inventory/LocationDetails$Hours;->days:Ljava/util/List;

    .line 212
    :cond_0
    new-instance p1, Lcom/ebay/common/model/inventory/LocationDetails$Day;

    invoke-direct {p1}, Lcom/ebay/common/model/inventory/LocationDetails$Day;-><init>()V

    .line 213
    iget-object p2, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    iget-object p2, p2, Lcom/ebay/common/model/inventory/LocationDetails$Hours;->days:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance p2, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;

    invoke-direct {p2, p1}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;-><init>(Lcom/ebay/common/model/inventory/LocationDetails$Day;)V

    return-object p2

    .line 217
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
