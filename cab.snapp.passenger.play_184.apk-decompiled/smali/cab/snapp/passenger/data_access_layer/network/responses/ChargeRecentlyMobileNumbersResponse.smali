.class public Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private mobileNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;->mobileNumbers:Ljava/util/List;

    return-object v0
.end method

.method public setMobileNumbers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;->mobileNumbers:Ljava/util/List;

    return-void
.end method
