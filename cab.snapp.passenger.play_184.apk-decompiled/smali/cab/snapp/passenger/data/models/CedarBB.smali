.class public Lcab/snapp/passenger/data/models/CedarBB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ne:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ne"
    .end annotation
.end field

.field private sw:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "sw"
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
.method public getNe()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarBB;->ne:Ljava/lang/String;

    return-object v0
.end method

.method public getSw()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcab/snapp/passenger/data/models/CedarBB;->sw:Ljava/lang/String;

    return-object v0
.end method

.method public setNe(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcab/snapp/passenger/data/models/CedarBB;->ne:Ljava/lang/String;

    return-void
.end method

.method public setSw(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcab/snapp/passenger/data/models/CedarBB;->sw:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CedarBB{ne=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/CedarBB;->ne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sw=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/CedarBB;->sw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
