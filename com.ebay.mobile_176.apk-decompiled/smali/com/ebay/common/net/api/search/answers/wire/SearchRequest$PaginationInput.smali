.class public Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$PaginationInput;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaginationInput"
.end annotation


# instance fields
.field public entriesPerPage:I

.field public pageNumber:I

.field public skipCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method