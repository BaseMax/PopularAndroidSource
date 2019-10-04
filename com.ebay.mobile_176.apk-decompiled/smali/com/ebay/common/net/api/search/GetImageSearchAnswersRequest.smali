.class public Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;
.super Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;
.source "GetImageSearchAnswersRequest.java"


# instance fields
.field private final imageSearchJpgData:[B


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/SearchParameters;ILcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;ILcom/ebay/common/net/api/search/SearchImageHolder;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;-><init>(Lcom/ebay/common/net/api/search/SearchParameters;ILcom/ebay/common/net/api/search/ISearchEventTracker;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;II)V

    .line 31
    iget-object p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->imageSearchJpgData:Ljava/lang/String;

    invoke-interface {p6, p1}, Lcom/ebay/common/net/api/search/SearchImageHolder;->getImageBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->imageSearchJpgData:[B

    const-string p1, "multipart/form-data; boundary=EbaySearchFormBoundary"

    .line 34
    iput-object p1, p0, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->requestBodyContentType:Ljava/lang/String;

    return-void
.end method

.method private buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "search"

    const/4 v1, 0x0

    .line 143
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "search"

    const-string/jumbo v1, "searchV2/image"

    .line 144
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "search"

    const-string/jumbo v1, "searchV2/image"

    .line 145
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private prepareRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    const-string v1, "UTF8"

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string p1, "UTF8"

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 110
    invoke-static {}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p1

    const-string p2, "UTF8"

    .line 113
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo p2, "utf-8"

    const/4 v1, 0x0

    .line 114
    invoke-interface {p1, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->buildXmlRequest(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 119
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    const-string p1, "UTF8"

    .line 122
    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 123
    iget-object p1, p0, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->imageSearchJpgData:[B

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->imageSearchJpgData:[B

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->imageSearchJpgData:[B

    array-length p3, p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    const-string p1, "UTF8"

    .line 125
    invoke-virtual {p4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 127
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 133
    throw p1
.end method


# virtual methods
.method protected addDynamicPagination(Lcom/ebay/common/net/api/search/SearchParameters;Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;)V
    .locals 0
    .param p1    # Lcom/ebay/common/net/api/search/SearchParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public buildRequest()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EbaySearchFormBoundary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\"request\""

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Content-Type"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->buildUniversalSearchRequest()Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;

    move-result-object v2

    const/4 v3, 0x0

    .line 59
    iput-object v3, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answerRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswerRequest;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->defaultRequestMapper:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    invoke-interface {v5, v2}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "searchRequest"

    const-string v6, "imageRequest"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "EbaySearchFormBoundary"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Content-Disposition: form-data; name=\"binaryData\"; data-type=image"

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Content-Type"

    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Content-Transfer-Encoding: binary"

    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    .line 68
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    .line 69
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "EbaySearchFormBoundary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->prepareRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;

    invoke-direct {v1, v0}, Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public buildSearchRequest()Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;
    .locals 4

    .line 151
    invoke-super {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildSearchRequest()Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;

    move-result-object v0

    .line 153
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    const-string v2, "SearchServiceDictionary.UserVisibleConstraints.Enabled"

    const-string/jumbo v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, v0, Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;->requestConfig:Ljava/util/List;

    const-string v2, "SearchServiceDictionary.WHOLE_PATH_LN_ENABLED"

    const-string/jumbo v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/ebay/common/net/api/search/GetImageSearchAnswersRequest;->buildRequestConfigItem(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$MultivalueProperty;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public buildUniversalSearchRequest()Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;
    .locals 4

    .line 161
    invoke-super {p0}, Lcom/ebay/common/net/api/search/GetSearchAnswersRequest;->buildUniversalSearchRequest()Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object v2, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;->supportedNavDestinationTypes:Ljava/util/List;

    .line 164
    sget-object v2, Lcom/ebay/nautilus/domain/data/answers/NavDestinationType;->IMAGE_SEARCH:Lcom/ebay/nautilus/domain/data/answers/NavDestinationType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/answers/NavDestinationType;

    .line 167
    iget-object v3, v0, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest;->answersPlatformRequest:Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;

    iget-object v3, v3, Lcom/ebay/common/net/api/search/answers/wire/UniversalSearchRequest$AnswersPlatformRequest;->supportedNavDestinationTypes:Ljava/util/List;

    .line 168
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getEntriesPerPage(Lcom/ebay/common/net/api/search/SearchParameters;)I
    .locals 0
    .param p1    # Lcom/ebay/common/net/api/search/SearchParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 184
    iget p1, p1, Lcom/ebay/common/net/api/search/SearchParameters;->maxCountPerPage:I

    return p1
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 40
    sget-object v0, Lcom/ebay/nautilus/domain/net/ApiSettings;->imageSearchServiceAnswersPlatformApi:Lcom/ebay/nautilus/domain/net/ApiSettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
