.class public final Lcab/snapp/passenger/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

.field c:Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 409
    iput v0, p0, Lcab/snapp/passenger/a/h$a;->a:I

    return-void
.end method

.method public static createHeaderItem(Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)Lcab/snapp/passenger/a/h$a;
    .locals 2

    .line 439
    new-instance v0, Lcab/snapp/passenger/a/h$a;

    invoke-direct {v0}, Lcab/snapp/passenger/a/h$a;-><init>()V

    const/4 v1, 0x0

    .line 440
    iput v1, v0, Lcab/snapp/passenger/a/h$a;->a:I

    .line 441
    iput-object p0, v0, Lcab/snapp/passenger/a/h$a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;

    return-object v0
.end method

.method public static createLoadingItem()Lcab/snapp/passenger/a/h$a;
    .locals 2

    .line 426
    new-instance v0, Lcab/snapp/passenger/a/h$a;

    invoke-direct {v0}, Lcab/snapp/passenger/a/h$a;-><init>()V

    const/4 v1, 0x2

    .line 427
    iput v1, v0, Lcab/snapp/passenger/a/h$a;->a:I

    return-object v0
.end method

.method public static createNormalItem(Lcab/snapp/passenger/data/models/RideHistoryInfo;)Lcab/snapp/passenger/a/h$a;
    .locals 2

    .line 453
    new-instance v0, Lcab/snapp/passenger/a/h$a;

    invoke-direct {v0}, Lcab/snapp/passenger/a/h$a;-><init>()V

    const/4 v1, 0x1

    .line 454
    iput v1, v0, Lcab/snapp/passenger/a/h$a;->a:I

    .line 455
    iput-object p0, v0, Lcab/snapp/passenger/a/h$a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    return-object v0
.end method


# virtual methods
.method public final getRideHistoryInfo()Lcab/snapp/passenger/data/models/RideHistoryInfo;
    .locals 1

    .line 496
    iget-object v0, p0, Lcab/snapp/passenger/a/h$a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 486
    iget v0, p0, Lcab/snapp/passenger/a/h$a;->a:I

    return v0
.end method

.method public final isHeaderItem()Z
    .locals 1

    .line 476
    iget v0, p0, Lcab/snapp/passenger/a/h$a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isLoadingItem()Z
    .locals 2

    .line 466
    iget v0, p0, Lcab/snapp/passenger/a/h$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
