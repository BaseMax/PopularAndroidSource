.class public Lcab/snapp/a/b;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private a:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "time"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "events"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getRideEventModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/a/a;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcab/snapp/a/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcab/snapp/a/b;->a:J

    return-wide v0
.end method

.method public setRideEventModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/a/a;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcab/snapp/a/b;->b:Ljava/util/List;

    return-void
.end method

.method public setServerTime(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcab/snapp/a/b;->a:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappEventResponse{serverTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcab/snapp/a/b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rideEventModels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/a/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
