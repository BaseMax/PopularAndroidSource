.class public Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;
.super Ljava/lang/Object;
.source "EbayCategoryHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayCategoryHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BreadCrumb"
.end annotation


# instance fields
.field public final categoryId:J

.field public final displayName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;->displayName:Ljava/lang/String;

    .line 246
    iput-wide p2, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;->categoryId:J

    return-void
.end method
