.class public final Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "GetCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;
    }
.end annotation


# instance fields
.field public final categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/EbayCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final fromCache:Z

.field public xml:[B


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;->categories:Ljava/util/ArrayList;

    .line 27
    iput-boolean p1, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;->fromCache:Z

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;->fromCache:Z

    return p0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/util/StreamUtil;->convertToDirectByteArrayInputStreamForParse(Ljava/io/InputStream;)Lcom/ebay/nautilus/kernel/io/DirectByteArrayInputStream;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/io/DirectByteArrayInputStream;->bytesByReference()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;->xml:[B

    .line 39
    new-instance v0, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$RootElement;-><init>(Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse;Lcom/ebay/common/net/api/trading/categories/GetCategoriesResponse$1;)V

    .line 40
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
