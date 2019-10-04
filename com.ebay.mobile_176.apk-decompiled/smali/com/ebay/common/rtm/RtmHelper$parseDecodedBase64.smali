.class Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;
.super Ljava/lang/Object;
.source "RtmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/rtm/RtmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "parseDecodedBase64"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$BodyElement;,
        Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$RootElement;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/rtm/RtmHelper;


# direct methods
.method public constructor <init>(Lcom/ebay/common/rtm/RtmHelper;Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;->this$0:Lcom/ebay/common/rtm/RtmHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    :try_start_0
    new-instance p1, Lcom/ebay/nautilus/kernel/io/DirectByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/kernel/io/DirectByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1}, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/ebay/nautilus/kernel/net/ParseResponseDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$RootElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64$RootElement;-><init>(Lcom/ebay/common/rtm/RtmHelper$parseDecodedBase64;Lcom/ebay/common/rtm/RtmHelper$1;)V

    .line 219
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/SaxHandler;->parseXml(Ljava/io/InputStream;Lcom/ebay/nautilus/kernel/util/SaxHandler$Element;)V

    return-void
.end method
