.class public Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "action"
    .end annotation
.end field

.field private category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "category"
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "label"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "value"
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
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->action:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->category:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->label:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->value:Ljava/lang/String;

    return-void
.end method
