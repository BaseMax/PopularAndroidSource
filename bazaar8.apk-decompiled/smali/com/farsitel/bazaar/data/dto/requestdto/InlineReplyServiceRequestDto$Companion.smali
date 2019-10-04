.class public final Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto$Companion;
.super Ljava/lang/Object;
.source "InlineReplyServiceRequestDto.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInlineRelayService(Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;)Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;
    .locals 12

    const-string v0, "inlineService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getSessionId()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getUniqueID()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getInlinePlatformVersion()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getTelNum()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getEmail()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getReferrer()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getPayload()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v0

    .line 12
    invoke-direct/range {v1 .. v11}, Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
