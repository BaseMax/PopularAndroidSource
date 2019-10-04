.class public Lcom/ebay/common/net/api/mdns/EbayMdnsApi;
.super Ljava/lang/Object;
.source "EbayMdnsApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsRequest;,
        Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;,
        Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;
    }
.end annotation


# static fields
.field public static final DEVICE_TYPE_GOOGLENOW:Ljava/lang/String; = "GOOGLENOW"

.field public static final DEVICE_TYPE_PUSH:Ljava/lang/String; = "C2DM"

.field public static final MOBILE_SERVICE_DOMAIN:Ljava/lang/String; = "http://www.ebay.com/marketplace/mobile/v1/services"

.field public static final SERVICE_DOMAIN:Ljava/lang/String; = "http://www.ebay.com/marketplace/services"

.field public static final SERVICE_NAME:Ljava/lang/String; = "MobileDeviceNotificationService"

.field public static final SOAP_DOMAIN:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-envelope"


# instance fields
.field private final context:Lcom/ebay/nautilus/kernel/content/EbayContext;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    return-void
.end method

.method private abortIfIafTokenInvalid(Lcom/ebay/nautilus/domain/net/EbayResponse;)V
    .locals 4

    .line 129
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->getConfig()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$MarketingTech$B;->mdnsIafFailureValidation:Lcom/ebay/nautilus/domain/dcs/DcsDomain$MarketingTech$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/net/EbayResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 139
    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getId()I

    move-result v0

    const/16 v1, 0x2afa

    if-ne v0, v1, :cond_0

    .line 142
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getNonFatalReporter()Lcom/ebay/nonfatalreporter/NonFatalReporter;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAF token invalid after MDNS call"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;->MKTG_TECH:Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;

    const-string v3, "IAF token invalid after MDNS call"

    invoke-interface {v0, v1, v2, v3}, Lcom/ebay/nonfatalreporter/NonFatalReporter;->log(Ljava/lang/Throwable;Lcom/ebay/nonfatalreporter/NonFatalReportingDomain;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 147
    invoke-static {v0}, Lcom/ebay/mobile/MyApp;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static writeCommonFirstElements(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "soap"

    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    .line 293
    invoke-interface {p4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ser"

    const-string v1, "http://www.ebay.com/marketplace/mobile/v1/services"

    .line 294
    invoke-interface {p4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Envelope"

    .line 296
    invoke-interface {p4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Body"

    .line 297
    invoke-interface {p4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    .line 298
    invoke-interface {p4, v0, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string/jumbo v0, "userid"

    .line 300
    invoke-static {p4, p0, v0, p1}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string p1, "deviceHandle"

    .line 301
    invoke-interface {p4, p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    iget-object p0, p3, Lcom/ebay/common/model/mdns/DeviceHandle;->deviceToken:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string p1, "deviceToken"

    .line 303
    iget-object v0, p3, Lcom/ebay/common/model/mdns/DeviceHandle;->deviceToken:Ljava/lang/String;

    invoke-static {p4, p0, p1, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string p1, "deviceType"

    .line 304
    iget-object v0, p3, Lcom/ebay/common/model/mdns/DeviceHandle;->deviceType:Ljava/lang/String;

    invoke-static {p4, p0, p1, v0}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string p1, "clientID"

    .line 305
    iget-object p3, p3, Lcom/ebay/common/model/mdns/DeviceHandle;->clientId:Ljava/lang/String;

    invoke-static {p4, p0, p1, p3}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string p1, "deviceHandle"

    .line 306
    invoke-interface {p4, p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string p1, "description"

    const-string p3, "eBay App for Android phone"

    .line 308
    invoke-static {p4, p0, p1, p3}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "http://www.ebay.com/marketplace/mobile/v1/services"

    const-string p1, "language"

    .line 310
    invoke-static {p4, p0, p1, p2}, Lcom/ebay/nautilus/domain/net/XmlSerializerHelper;->writeSimple(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected static writeCommonLastElements(Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://www.ebay.com/marketplace/mobile/v1/services"

    .line 285
    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v0, "Body"

    .line 286
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v0, "Envelope"

    .line 287
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public activateUserOnDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    .line 189
    :try_start_0
    new-instance v9, Lcom/ebay/common/net/api/mdns/ActivateUserOnDeviceRequest;

    new-instance v7, Lcom/ebay/common/model/mdns/DeviceHandle;

    const-string v2, "C2DM"

    move-object v3, p3

    move-object v4, p5

    invoke-direct {v7, p3, v2, p5}, Lcom/ebay/common/model/mdns/DeviceHandle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/ebay/common/net/api/mdns/ActivateUserOnDeviceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lcom/ebay/nautilus/domain/EbaySite;)V

    .line 191
    iget-object v2, v0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-static {v2, v9}, Lcom/ebay/nautilus/kernel/net/ConnectorLegacy;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;

    .line 192
    invoke-direct {p0, v2}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->abortIfIafTokenInvalid(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    .line 193
    iget v2, v2, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;->ackCode:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    return v1
.end method

.method public deactivateUserOnDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    .line 270
    :try_start_0
    new-instance v9, Lcom/ebay/common/net/api/mdns/DeactivateUserOnDeviceRequest;

    new-instance v7, Lcom/ebay/common/model/mdns/DeviceHandle;

    move-object v2, p3

    move-object v3, p5

    move-object/from16 v4, p8

    invoke-direct {v7, p3, v4, p5}, Lcom/ebay/common/model/mdns/DeviceHandle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/ebay/common/net/api/mdns/DeactivateUserOnDeviceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/common/model/mdns/DeviceHandle;Lcom/ebay/nautilus/domain/EbaySite;)V

    .line 272
    iget-object v2, v0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-static {v2, v9}, Lcom/ebay/nautilus/kernel/net/ConnectorLegacy;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;

    .line 273
    invoke-direct {p0, v2}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->abortIfIafTokenInvalid(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    .line 274
    iget v2, v2, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$MdnsResponse;->ackCode:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    return v1
.end method

.method public getDeviceNotificationSubscriptions(Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;)Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    new-instance v8, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;

    iget-object v2, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->iafToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 241
    invoke-virtual {p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->getDeviceHandle()Lcom/ebay/common/model/mdns/DeviceHandle;

    move-result-object v5

    iget-object v6, p1, Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;->language:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/common/model/mdns/DeviceHandle;Ljava/lang/String;Z)V

    .line 240
    invoke-static {v0, v8}, Lcom/ebay/nautilus/kernel/net/ConnectorLegacy;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;

    .line 243
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->abortIfIafTokenInvalid(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    .line 244
    invoke-virtual {p1}, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;->subscriptions:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

    if-eqz v0, :cond_0

    .line 245
    iget-object p1, p1, Lcom/ebay/common/net/api/mdns/GetDeviceNotificationSubscriptionsResponse;->subscriptions:Lcom/ebay/common/net/api/mdns/DeviceNotificationSubscriptions;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setDeviceNotificationSubscriptions(Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;)Lcom/ebay/nautilus/domain/net/EbayResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    new-instance v1, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;

    invoke-direct {v1, p1}, Lcom/ebay/common/net/api/mdns/SetDeviceNotificationSubscriptionsRequest;-><init>(Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;)V

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/net/ConnectorLegacy;->sendRequest(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/EbayResponse;

    .line 213
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->abortIfIafTokenInvalid(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1
.end method

.method public syncUserWithDevice(Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;)Lcom/ebay/nautilus/domain/net/EbayResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getConnector()Lcom/ebay/nautilus/kernel/net/Connector;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/ebay/common/net/api/mdns/SyncUserOnDeviceRequest;

    invoke-direct {v1, p1}, Lcom/ebay/common/net/api/mdns/SyncUserOnDeviceRequest;-><init>(Lcom/ebay/common/net/api/mdns/EbayMdnsApi$NotificationParams;)V

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/net/Connector;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/EbayResponse;

    .line 222
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/mdns/EbayMdnsApi;->abortIfIafTokenInvalid(Lcom/ebay/nautilus/domain/net/EbayResponse;)V

    return-object p1
.end method
