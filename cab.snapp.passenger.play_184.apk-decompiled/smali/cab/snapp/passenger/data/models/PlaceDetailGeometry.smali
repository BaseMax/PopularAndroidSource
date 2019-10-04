.class public Lcab/snapp/passenger/data/models/PlaceDetailGeometry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private location:Lcab/snapp/passenger/data/models/PlaceDetailLocation;
    .annotation runtime Lcom/google/gson/a/c;
        value = "location"
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
.method public getLocation()Lcab/snapp/passenger/data/models/PlaceDetailLocation;
    .locals 1

    .line 12
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PlaceDetailGeometry;->location:Lcab/snapp/passenger/data/models/PlaceDetailLocation;

    return-object v0
.end method

.method public setLocation(Lcab/snapp/passenger/data/models/PlaceDetailLocation;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PlaceDetailGeometry;->location:Lcab/snapp/passenger/data/models/PlaceDetailLocation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaceDetailGeometry{location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/PlaceDetailGeometry;->location:Lcab/snapp/passenger/data/models/PlaceDetailLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
