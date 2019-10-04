.class public Lcab/snapp/snappnetwork/model/c;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "status"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "access_token"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "token_type"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "expires_in"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "refresh_token"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "email"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "fullname"
    .end annotation
.end field

.field private h:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_new_user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcab/snapp/snappnetwork/model/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcab/snapp/snappnetwork/model/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()I
    .locals 1

    .line 57
    iget v0, p0, Lcab/snapp/snappnetwork/model/c;->d:I

    return v0
.end method

.method public getFullname()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcab/snapp/snappnetwork/model/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcab/snapp/snappnetwork/model/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 97
    iget v0, p0, Lcab/snapp/snappnetwork/model/c;->a:I

    return v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcab/snapp/snappnetwork/model/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isNewUser()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcab/snapp/snappnetwork/model/c;->h:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/c;->b:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/c;->f:Ljava/lang/String;

    return-void
.end method

.method public setExpiresIn(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcab/snapp/snappnetwork/model/c;->d:I

    return-void
.end method

.method public setFullname(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/c;->g:Ljava/lang/String;

    return-void
.end method

.method public setNewUser(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcab/snapp/snappnetwork/model/c;->h:Z

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/c;->e:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcab/snapp/snappnetwork/model/c;->a:I

    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/c;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappGrantResponseModel{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/snappnetwork/model/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/snappnetwork/model/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tokenType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/snappnetwork/model/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expiresIn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcab/snapp/snappnetwork/model/c;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", refreshToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/snappnetwork/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/snappnetwork/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fullname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/snappnetwork/model/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isNewUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcab/snapp/snappnetwork/model/c;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
