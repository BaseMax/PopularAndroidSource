.class public Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "ShortFormEulaResponse.java"


# instance fields
.field public eulaHtml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;->eulaHtml:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;->setAckCode(I)V

    .line 21
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/util/StreamUtil;->streamToBytesForParse(Ljava/io/InputStream;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;->eulaHtml:Ljava/lang/String;

    :cond_0
    return-void
.end method
