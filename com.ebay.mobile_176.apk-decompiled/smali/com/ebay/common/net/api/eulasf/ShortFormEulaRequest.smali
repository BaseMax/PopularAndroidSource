.class public Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;
.super Lcom/ebay/nautilus/domain/net/EbayRequest;
.source "ShortFormEulaRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbayRequest<",
        "Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OPERATION_NAME:Ljava/lang/String; = "shortFormNotice"

.field public static final SERVICE_NAME:Ljava/lang/String; = "userAgreements"


# instance fields
.field private final appName:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private final marketPlaceId:Ljava/lang/String;

.field private final shortFormNoticeVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;)V
    .locals 2

    const-string/jumbo v0, "userAgreements"

    const-string/jumbo v1, "shortFormNotice"

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/ebay/nautilus/domain/net/EbayRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AEAPP"

    .line 26
    iput-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;->appName:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->serviceVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;->shortFormNoticeVersion:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;->appVersion:Ljava/lang/String;

    .line 29
    iget-object p1, p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;->marketPlaceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRequestUrl()Ljava/net/URL;
    .locals 5

    .line 50
    sget-object v0, Lcom/ebay/nautilus/domain/net/ApiSettings;->shortFormEulaUrl:Lcom/ebay/nautilus/domain/net/ApiSettings;

    .line 51
    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;->shortFormNoticeVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed encoding URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;
    .locals 1

    .line 35
    new-instance v0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;->getResponse()Lcom/ebay/common/net/api/eulasf/ShortFormEulaResponse;

    move-result-object v0

    return-object v0
.end method

.method public onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/ebay/nautilus/domain/net/EbayRequest;->onAddHeaders(Lcom/ebay/nautilus/kernel/net/IHeaders;)V

    const-string/jumbo v0, "x-ebay-c-marketplace-id"

    .line 43
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaRequest;->marketPlaceId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/ebay/nautilus/kernel/net/IHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
