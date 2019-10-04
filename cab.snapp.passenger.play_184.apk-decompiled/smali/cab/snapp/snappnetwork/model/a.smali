.class public Lcab/snapp/snappnetwork/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "error"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "error_description"
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
.method public getError()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcab/snapp/snappnetwork/model/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcab/snapp/snappnetwork/model/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/a;->a:Ljava/lang/String;

    return-void
.end method

.method public setErrorDescription(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/a;->b:Ljava/lang/String;

    return-void
.end method
