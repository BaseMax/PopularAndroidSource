.class public Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ImageSearchOutputSelector;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSearchOutputSelector"
.end annotation


# instance fields
.field public itemId:Ljava/lang/Long;

.field public md5:Ljava/lang/String;

.field public zoomGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method