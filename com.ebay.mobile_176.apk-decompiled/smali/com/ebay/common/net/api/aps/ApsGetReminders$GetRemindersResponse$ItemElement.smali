.class final Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$NameValueList;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$VariationSpecifics;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$Variation;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$Variations;
    }
.end annotation


# instance fields
.field private final item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

.field final synthetic this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;Lcom/ebay/nautilus/domain/data/MyEbayListItem;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->this$0:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    return-void
.end method

.method static synthetic access$600(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)Lcom/ebay/nautilus/domain/data/MyEbayListItem;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "itemID"

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$1;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_0
    const-string/jumbo v0, "title"

    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$2;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_1
    const-string v0, "galleryURL"

    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$3;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_2
    const-string v0, "listingType"

    .line 223
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    invoke-direct {p1, p0, p2}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;Lcom/ebay/nautilus/domain/data/MyEbayListItem;)V

    return-object p1

    :cond_3
    const-string v0, "convertedCurrentPrice"

    .line 225
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_4
    const-string v0, "currentPrice"

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 229
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_5
    const-string/jumbo v0, "shippingServiceCost"

    .line 230
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 231
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->shippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_6
    const-string v0, "bestOfferPrice"

    .line 232
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->bestOfferAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_7
    const-string/jumbo v0, "timeLeft"

    .line 234
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$4;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_8
    const-string v0, "endTime"

    .line 248
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$5;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_9
    const-string/jumbo v0, "transactionCreatedDate"

    .line 264
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 265
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$6;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_a
    const-string/jumbo v0, "transactionID"

    .line 280
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 281
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$7;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_b
    const-string v0, "paidStatus"

    .line 289
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 290
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$8;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_c
    const-string v0, "feedbackLeft"

    .line 298
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 299
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$9;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_d
    const-string/jumbo v0, "quantityPurchased"

    .line 307
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 308
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$10;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$10;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_e
    const-string/jumbo v0, "totalTransactionPrice"

    .line 317
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 318
    new-instance p1, Lcom/ebay/nautilus/domain/net/CurrencyElement;

    iget-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->transaction:Lcom/ebay/nautilus/domain/data/MyEbayListItem$Transaction;

    new-instance p3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>()V

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/MyEbayListItem$Transaction;->totalTransactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const-string p2, "currencyID"

    invoke-direct {p1, p3, p2, p4}, Lcom/ebay/nautilus/domain/net/CurrencyElement;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-object p1

    :cond_f
    const-string/jumbo v0, "shippedTime"

    .line 321
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 323
    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->transaction:Lcom/ebay/nautilus/domain/data/MyEbayListItem$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem$Transaction;->shipped:Z

    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1

    :cond_10
    const-string v0, "bidCount"

    .line 326
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 327
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$11;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$11;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_11
    const-string/jumbo v0, "watchCount"

    .line 335
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 336
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$12;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$12;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_12
    const-string/jumbo v0, "reserveMet"

    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 345
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$13;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$13;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_13
    const-string v0, "buyerUserID"

    .line 353
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 354
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$14;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$14;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;)V

    return-object p1

    :cond_14
    const-string v0, "Variations"

    .line 362
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 363
    new-instance p1, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$Variations;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$Variations;-><init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;Lcom/ebay/common/net/api/aps/ApsGetReminders$1;)V

    return-object p1

    .line 365
    :cond_15
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
