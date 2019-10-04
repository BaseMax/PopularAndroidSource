.class public Lcab/snapp/passenger/data/models/CedarLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cedarBB:Lcab/snapp/passenger/data/models/CedarBB;
    .annotation runtime Lcom/google/gson/a/c;
        value = "bb"
    .end annotation
.end field

.field private center:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "center"
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
.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .line 15
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarLocation;->center:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 2

    .line 21
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarLocation;->center:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 22
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public setCenter(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcab/snapp/passenger/data/models/CedarLocation;->center:Ljava/lang/String;

    return-void
.end method
