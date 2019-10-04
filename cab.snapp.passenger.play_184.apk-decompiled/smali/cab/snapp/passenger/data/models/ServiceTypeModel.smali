.class public Lcab/snapp/passenger/data/models/ServiceTypeModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private canUseVoucher:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "can_use_voucher"
    .end annotation
.end field

.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_enabled"
    .end annotation
.end field

.field private isNew:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_new"
    .end annotation
.end field

.field private isRideOptionsEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_ride_options_enabled"
    .end annotation
.end field

.field private serviceType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field

.field private stDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "description"
    .end annotation
.end field

.field private stImageURl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "photo_url"
    .end annotation
.end field

.field private stName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .locals 1

    .line 42
    iget v0, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->serviceType:I

    return v0
.end method

.method public getStDesc()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->stDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getStImageURl()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->stImageURl:Ljava/lang/String;

    return-object v0
.end method

.method public getStName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->stName:Ljava/lang/String;

    return-object v0
.end method

.method public isCanUseVoucher()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->canUseVoucher:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isEnabled:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isNew:Z

    return v0
.end method

.method public isRideOptionsEnabled()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isRideOptionsEnabled:Z

    return v0
.end method

.method public setCanUseVoucher(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->canUseVoucher:Z

    return-void
.end method

.method public setNew(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isNew:Z

    return-void
.end method

.method public setRideOptionsEnabled(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isRideOptionsEnabled:Z

    return-void
.end method

.method public setServiceType(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->serviceType:I

    return-void
.end method

.method public setStDesc(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->stDesc:Ljava/lang/String;

    return-void
.end method

.method public setStImageURl(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ServiceTypeModel;->stImageURl:Ljava/lang/String;

    return-void
.end method
