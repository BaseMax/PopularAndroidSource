.class public final Lcom/ebay/common/model/UserDetail;
.super Ljava/lang/Object;
.source "UserDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/UserDetail$Address;,
        Lcom/ebay/common/model/UserDetail$SellerInfo;
    }
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public feedbackRatingStar:Ljava/lang/String;

.field public isPpa:Z

.field public msuuid:Ljava/lang/String;

.field public payPalAccountLevel:Ljava/lang/String;

.field public payPalAccountStatus:Ljava/lang/String;

.field public payPalAccountType:Ljava/lang/String;

.field public registrationAddress:Lcom/ebay/common/model/UserDetail$Address;

.field public sellerInfo:Lcom/ebay/common/model/UserDetail$SellerInfo;

.field public site:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/ebay/common/model/UserDetail;->sellerInfo:Lcom/ebay/common/model/UserDetail$SellerInfo;

    .line 14
    iput-object v0, p0, Lcom/ebay/common/model/UserDetail;->msuuid:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/ebay/common/model/UserDetail;->feedbackRatingStar:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/ebay/common/model/UserDetail;->payPalAccountLevel:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/ebay/common/model/UserDetail;->payPalAccountStatus:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/ebay/common/model/UserDetail;->payPalAccountType:Ljava/lang/String;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/ebay/common/model/UserDetail;->isPpa:Z

    return-void
.end method
