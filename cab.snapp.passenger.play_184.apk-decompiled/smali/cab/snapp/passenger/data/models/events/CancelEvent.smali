.class public Lcab/snapp/passenger/data/models/events/CancelEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private reallottedRideId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "reallotted"
    .end annotation
.end field

.field private rideId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ride_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/CancelEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReallottedRideId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/CancelEvent;->reallottedRideId:Ljava/lang/String;

    return-object v0
.end method

.method public getRideId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/data/models/events/CancelEvent;->rideId:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/data/models/events/CancelEvent;->message:Ljava/lang/String;

    return-void
.end method

.method public setRideId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcab/snapp/passenger/data/models/events/CancelEvent;->rideId:Ljava/lang/String;

    return-void
.end method
