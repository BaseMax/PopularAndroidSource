.class public Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "EbayMdnsApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/mdns/EbayMdnsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MdnsResponse"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    return-void
.end method

.method private parseAck(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 317
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Success"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 320
    iput p1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;->ackCode:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 324
    iput p1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;->ackCode:I

    :goto_0
    return-void
.end method

.method private parseError(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 330
    new-instance v0, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;-><init>()V

    .line 334
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 339
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorId"

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->code:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "message"

    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->longMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, "domain"

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/net/EbayResponseError$LongDetails;->domain:Ljava/lang/String;

    .line 354
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 357
    new-array p1, p1, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;->addResultMessage([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 366
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 367
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-nez v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ack"

    .line 376
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;->parseAck(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 379
    iget p1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;->ackCode:I

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "error"

    .line 384
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 386
    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;->parseError(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 390
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 404
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;->create(Ljava/lang/Throwable;)Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 400
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;->create(Ljava/lang/Throwable;)Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    const-string v0, "MdnsResponse"

    const-string v1, "Exception parsing response"

    .line 395
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;->create(Ljava/lang/Throwable;)Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    move-result-object p1

    throw p1
.end method
