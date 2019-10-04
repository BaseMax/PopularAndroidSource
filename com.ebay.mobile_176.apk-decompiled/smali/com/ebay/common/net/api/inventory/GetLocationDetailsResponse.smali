.class public Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetLocationDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$IntervalElement;,
        Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$DayElement;,
        Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$HoursElement;,
        Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;
    }
.end annotation


# instance fields
.field public locationDetails:Lcom/ebay/common/model/inventory/LocationDetails;

.field private locationFound:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 22
    new-instance v0, Lcom/ebay/common/model/inventory/LocationDetails;

    invoke-direct {v0}, Lcom/ebay/common/model/inventory/LocationDetails;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationDetails:Lcom/ebay/common/model/inventory/LocationDetails;

    return-void
.end method

.method static synthetic access$002(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationFound:Z

    return p1
.end method


# virtual methods
.method public isLocationFound()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;->locationFound:Z

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;

    invoke-direct {v0, p0, p0}, Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse$RootElement;-><init>(Lcom/ebay/common/net/api/inventory/GetLocationDetailsResponse;Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    .line 29
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
