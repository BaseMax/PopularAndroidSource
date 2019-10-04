.class final Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListingType"
.end annotation


# instance fields
.field private final item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

.field final synthetic this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;Lcom/ebay/nautilus/domain/data/MyEbayListItem;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->this$1:Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$TextElement;-><init>()V

    .line 447
    iput-object p2, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    return-void
.end method


# virtual methods
.method public text(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->listingType:I

    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "AdFormat"

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 462
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    const/4 v0, 0x1

    iput v0, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->listingType:I

    goto :goto_0

    :pswitch_1
    const-string v0, "Chinese"

    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 458
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    const/4 v0, 0x2

    iput v0, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->listingType:I

    goto :goto_0

    :cond_0
    const-string v0, "StoresFixedPrice"

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 480
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    iput v2, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->listingType:I

    goto :goto_0

    :cond_1
    const-string v0, "AuctionWithBIN"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    const/4 v0, 0x3

    iput v0, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->listingType:I

    goto :goto_0

    :cond_2
    const-string v0, "FixedPriceItem"

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    iput v2, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->listingType:I

    goto :goto_0

    :cond_3
    const-string v0, "StoreInventory"

    .line 475
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 476
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    const/4 v0, 0x6

    iput v0, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->listingType:I

    goto :goto_0

    :cond_4
    const-string v0, "Classified"

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 466
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    const/4 v0, 0x4

    iput v0, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->listingType:I

    goto :goto_0

    :cond_5
    const-string v0, "FixedPrice"

    .line 467
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 468
    iget-object p1, p0, Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse$ItemElement$ListingType;->item:Lcom/ebay/nautilus/domain/data/MyEbayListItem;

    iput v2, p1, Lcom/ebay/nautilus/domain/data/MyEbayListItem;->listingType:I

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
