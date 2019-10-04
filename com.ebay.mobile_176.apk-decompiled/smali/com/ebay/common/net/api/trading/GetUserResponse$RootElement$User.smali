.class final Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;
.source "GetUserResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "User"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;->this$1:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;

    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;Lcom/ebay/common/net/api/trading/GetUserResponse$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;)V

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

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Email"

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$1;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$1;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V

    return-object p1

    :cond_0
    const-string v0, "Site"

    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$2;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$2;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V

    return-object p1

    :cond_1
    const-string v0, "Status"

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$3;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$3;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V

    return-object p1

    :cond_2
    const-string v0, "UserID"

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$4;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$4;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V

    return-object p1

    :cond_3
    const-string v0, "SellerInfo"

    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;->this$1:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetUserResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/GetUserResponse;->detail:Lcom/ebay/common/model/UserDetail;

    new-instance p3, Lcom/ebay/common/model/UserDetail$SellerInfo;

    invoke-direct {p3}, Lcom/ebay/common/model/UserDetail$SellerInfo;-><init>()V

    iput-object p3, p2, Lcom/ebay/common/model/UserDetail;->sellerInfo:Lcom/ebay/common/model/UserDetail$SellerInfo;

    invoke-direct {p1, p3}, Lcom/ebay/common/net/api/trading/GetUserResponse$SellerInfo;-><init>(Lcom/ebay/common/model/UserDetail$SellerInfo;)V

    return-object p1

    :cond_4
    const-string v0, "FeedbackRatingStar"

    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$5;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$5;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V

    return-object p1

    :cond_5
    const-string v0, "RegistrationAddress"

    .line 119
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    iget-object p1, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;->this$1:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetUserResponse;

    iget-object p1, p1, Lcom/ebay/common/net/api/trading/GetUserResponse;->detail:Lcom/ebay/common/model/UserDetail;

    new-instance p2, Lcom/ebay/common/model/UserDetail$Address;

    invoke-direct {p2}, Lcom/ebay/common/model/UserDetail$Address;-><init>()V

    iput-object p2, p1, Lcom/ebay/common/model/UserDetail;->registrationAddress:Lcom/ebay/common/model/UserDetail$Address;

    .line 122
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$Address;

    iget-object p2, p0, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;->this$1:Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement;->this$0:Lcom/ebay/common/net/api/trading/GetUserResponse;

    iget-object p2, p2, Lcom/ebay/common/net/api/trading/GetUserResponse;->detail:Lcom/ebay/common/model/UserDetail;

    iget-object p2, p2, Lcom/ebay/common/model/UserDetail;->registrationAddress:Lcom/ebay/common/model/UserDetail$Address;

    invoke-direct {p1, p2}, Lcom/ebay/common/net/api/trading/GetUserResponse$Address;-><init>(Lcom/ebay/common/model/UserDetail$Address;)V

    return-object p1

    :cond_6
    const-string v0, "PayPalAccountLevel"

    .line 124
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$6;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$6;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V

    return-object p1

    :cond_7
    const-string v0, "PayPalAccountStatus"

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$7;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$7;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V

    return-object p1

    :cond_8
    const-string v0, "PayPalAccountType"

    .line 142
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$8;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$8;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V

    return-object p1

    :cond_9
    const-string v0, "BusinessRole"

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 152
    new-instance p1, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$9;

    invoke-direct {p1, p0}, Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User$9;-><init>(Lcom/ebay/common/net/api/trading/GetUserResponse$RootElement$User;)V

    return-object p1

    .line 161
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;

    move-result-object p1

    return-object p1
.end method
