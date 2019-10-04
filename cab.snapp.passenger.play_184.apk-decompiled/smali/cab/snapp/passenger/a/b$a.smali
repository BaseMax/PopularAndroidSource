.class public final Lcab/snapp/passenger/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;

.field c:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 308
    iput v0, p0, Lcab/snapp/passenger/a/b$a;->a:I

    return-void
.end method

.method public static createHeaderItem(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)Lcab/snapp/passenger/a/b$a;
    .locals 2

    .line 336
    new-instance v0, Lcab/snapp/passenger/a/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/a/b$a;-><init>()V

    const/4 v1, 0x0

    .line 337
    iput v1, v0, Lcab/snapp/passenger/a/b$a;->a:I

    .line 338
    iput-object p0, v0, Lcab/snapp/passenger/a/b$a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;

    return-object v0
.end method

.method public static createLoadingItem()Lcab/snapp/passenger/a/b$a;
    .locals 2

    .line 324
    new-instance v0, Lcab/snapp/passenger/a/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/a/b$a;-><init>()V

    const/4 v1, 0x2

    .line 325
    iput v1, v0, Lcab/snapp/passenger/a/b$a;->a:I

    return-object v0
.end method

.method public static createNormalItem(Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;)Lcab/snapp/passenger/a/b$a;
    .locals 2

    .line 349
    new-instance v0, Lcab/snapp/passenger/a/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/a/b$a;-><init>()V

    const/4 v1, 0x1

    .line 350
    iput v1, v0, Lcab/snapp/passenger/a/b$a;->a:I

    .line 351
    iput-object p0, v0, Lcab/snapp/passenger/a/b$a;->b:Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;

    return-object v0
.end method


# virtual methods
.method public final getChargeHistoryInfo()Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;
    .locals 1

    .line 388
    iget-object v0, p0, Lcab/snapp/passenger/a/b$a;->b:Lcab/snapp/passenger/data/models/charge/ChargeHistoryInfo;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 379
    iget v0, p0, Lcab/snapp/passenger/a/b$a;->a:I

    return v0
.end method

.method public final isHeaderItem()Z
    .locals 1

    .line 370
    iget v0, p0, Lcab/snapp/passenger/a/b$a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isLoadingItem()Z
    .locals 2

    .line 361
    iget v0, p0, Lcab/snapp/passenger/a/b$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
