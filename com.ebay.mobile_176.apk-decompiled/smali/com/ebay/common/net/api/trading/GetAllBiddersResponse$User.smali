.class final Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetAllBiddersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "User"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

.field private final user:Lcom/ebay/common/model/AllBiddersData$Offer$User;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$User;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->user:Lcom/ebay/common/model/AllBiddersData$Offer$User;

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)Lcom/ebay/common/model/AllBiddersData$Offer$User;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->user:Lcom/ebay/common/model/AllBiddersData$Offer$User;

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

    const-string/jumbo v0, "urn:ebay:apis:eBLBaseComponents"

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "AboutMePage"

    .line 219
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$1;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_0
    const-string v0, "BiddingSummary"

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->user:Lcom/ebay/common/model/AllBiddersData$Offer$User;

    iget-object p3, p3, Lcom/ebay/common/model/AllBiddersData$Offer$User;->biddingSummary:Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BiddingSummary;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;)V

    return-object p1

    :cond_1
    const-string v0, "BuyerInfo"

    .line 230
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BuyerInfo;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->this$0:Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;

    iget-object p3, p0, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;->user:Lcom/ebay/common/model/AllBiddersData$Offer$User;

    iget-object p3, p3, Lcom/ebay/common/model/AllBiddersData$Offer$User;->buyerInfo:Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;

    invoke-direct {p1, p2, p3}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$BuyerInfo;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse;Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;)V

    return-object p1

    :cond_2
    const-string v0, "eBayGoodStanding"

    .line 232
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$2;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_3
    const-string v0, "Email"

    .line 241
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$3;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_4
    const-string v0, "FeedbackPrivate"

    .line 250
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$4;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_5
    const-string v0, "FeedbackRatingStar"

    .line 259
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$5;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_6
    const-string v0, "FeedbackScore"

    .line 268
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$6;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_7
    const-string v0, "IDVerified"

    .line 277
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 278
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$7;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_8
    const-string v0, "NewUser"

    .line 286
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 287
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$8;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_9
    const-string v0, "PositiveFeedbackPercent"

    .line 295
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 296
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$9;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_a
    const-string v0, "RegistrationDate"

    .line 304
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 305
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$10;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_b
    const-string v0, "Site"

    .line 313
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 314
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$11;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$11;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_c
    const-string v0, "Status"

    .line 322
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 323
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$12;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$12;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_d
    const-string v0, "UserAnonymized"

    .line 331
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 332
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$13;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$13;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_e
    const-string v0, "UserID"

    .line 340
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 341
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$14;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$14;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_f
    const-string v0, "UserIDChanged"

    .line 349
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 350
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$15;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$15;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_10
    const-string v0, "UserIDLastChanged"

    .line 358
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 359
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$16;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$16;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    :cond_11
    const-string v0, "VATStatus"

    .line 367
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 368
    new-instance p1, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$17;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User$17;-><init>(Lcom/ebay/common/net/api/trading/GetAllBiddersResponse$User;)V

    return-object p1

    .line 377
    :cond_12
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
