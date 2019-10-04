.class final Lcom/ebay/common/net/api/trading/GetUserResponse$Address;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetUserResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Address"
.end annotation


# instance fields
.field address:Lcom/ebay/common/model/UserDetail$Address;


# direct methods
.method constructor <init>(Lcom/ebay/common/model/UserDetail$Address;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$Address;->address:Lcom/ebay/common/model/UserDetail$Address;

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

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "CityName"

    .line 224
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$1;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_0
    const-string v0, "CompanyName"

    .line 233
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$2;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_1
    const-string v0, "Country"

    .line 242
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$3;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_2
    const-string v0, "CountryName"

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$4;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_3
    const-string v0, "Name"

    .line 260
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$5;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_4
    const-string v0, "Phone"

    .line 269
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$6;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_5
    const-string v0, "PostalCode"

    .line 278
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 279
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$7;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_6
    const-string v0, "StateOrProvince"

    .line 287
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$8;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_7
    const-string v0, "Street"

    .line 296
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$9;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_8
    const-string v0, "Street1"

    .line 305
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 306
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$10;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    :cond_9
    const-string v0, "Street2"

    .line 314
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 315
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$11;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address$11;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$Address;)V

    return-object p1

    .line 324
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
