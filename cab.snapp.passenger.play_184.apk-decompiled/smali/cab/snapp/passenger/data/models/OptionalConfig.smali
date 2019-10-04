.class public Lcab/snapp/passenger/data/models/OptionalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_BOTH:Ljava/lang/String; = "11"

.field public static final TYPE_IN_RIDE:Ljava/lang/String; = "01"

.field public static final TYPE_MAIN_SCREEN:Ljava/lang/String; = "10"

.field public static final TYPE_NONE:Ljava/lang/String; = "00"


# instance fields
.field private changes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "changes"
    .end annotation
.end field

.field private showType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "visible_in"
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "number"
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
.method public getChanges()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcab/snapp/passenger/data/models/OptionalConfig;->changes:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcab/snapp/passenger/data/models/OptionalConfig;->showType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcab/snapp/passenger/data/models/OptionalConfig;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setChanges(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/data/models/OptionalConfig;->changes:Ljava/lang/String;

    return-void
.end method

.method public setShowType(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/data/models/OptionalConfig;->showType:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/data/models/OptionalConfig;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptionalConfig{changes=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/OptionalConfig;->changes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/OptionalConfig;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", showType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/OptionalConfig;->showType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
