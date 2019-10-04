.class public Lcab/snapp/passenger/data/models/OnActivityResultModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Landroid/content/Intent;

.field private requestCode:I

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->requestCode:I

    .line 19
    iput p2, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->resultCode:I

    .line 20
    iput-object p3, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->data:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getData()Landroid/content/Intent;
    .locals 1

    .line 45
    iget-object v0, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 25
    iget v0, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->requestCode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 35
    iget v0, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->resultCode:I

    return v0
.end method

.method public setData(Landroid/content/Intent;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->data:Landroid/content/Intent;

    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->requestCode:I

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->resultCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnActivityResultModel{requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->requestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/OnActivityResultModel;->data:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
