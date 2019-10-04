.class public Lcab/snapp/passenger/data/models/AvailableServiceTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_enabled"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field

.field private vehicles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "vehicles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Vehicle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 21
    iget v0, p0, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->type:I

    return v0
.end method

.method public getVehicles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Vehicle;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->vehicles:Ljava/util/List;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->isEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->isEnabled:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->type:I

    return-void
.end method

.method public setVehicles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Vehicle;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AvailableServiceTypes;->vehicles:Ljava/util/List;

    return-void
.end method
