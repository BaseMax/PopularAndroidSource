.class public final Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category$CategoryGroup;
    }
.end annotation


# static fields
.field public static UNINITIALIZED_LEVEL:I = -0x80000000


# instance fields
.field public applied:Ljava/lang/String;

.field public categoryGroup:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category$CategoryGroup;

.field public id:J

.field public leafCategory:Z

.field public level:I

.field public localizedName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public parentCategory:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category$CategoryGroup;->OTHER:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category$CategoryGroup;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->categoryGroup:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category$CategoryGroup;

    .line 54
    sget v0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->UNINITIALIZED_LEVEL:I

    iput v0, p0, Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;->level:I

    return-void
.end method
