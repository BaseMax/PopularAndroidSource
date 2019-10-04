.class public Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;
.super Ljava/io/IOException;
.source "EbayRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/EbayRequestHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EbayRequestErrorException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final errors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;->errors:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;->errors:Ljava/util/ArrayList;

    .line 92
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

    .line 94
    instance-of v1, v0, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;->errors:Ljava/util/ArrayList;

    check-cast v0, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getErrors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;->errors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    iget-object v2, p0, Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;->errors:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;->errors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
