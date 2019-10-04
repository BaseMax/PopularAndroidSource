.class public Lcab/snapp/passenger/data/models/SnappUssd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "is_enabled"
    .end annotation
.end field

.field private mciText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "mci_text"
    .end annotation
.end field

.field private noneMciText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "none_mci_text"
    .end annotation
.end field

.field private pattern:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "pattern"
    .end annotation
.end field

.field private ussdText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "ussd_text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMciText()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SnappUssd;->mciText:Ljava/lang/String;

    return-object v0
.end method

.method public getNoneMciText()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SnappUssd;->noneMciText:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SnappUssd;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getUssdText()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcab/snapp/passenger/data/models/SnappUssd;->ussdText:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/SnappUssd;->isEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/SnappUssd;->isEnabled:Z

    return-void
.end method

.method public setMciText(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SnappUssd;->mciText:Ljava/lang/String;

    return-void
.end method

.method public setNoneMciText(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SnappUssd;->noneMciText:Ljava/lang/String;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SnappUssd;->pattern:Ljava/lang/String;

    return-void
.end method

.method public setUssdText(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcab/snapp/passenger/data/models/SnappUssd;->ussdText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappUssd{isEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcab/snapp/passenger/data/models/SnappUssd;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pattern=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/SnappUssd;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mciText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/SnappUssd;->mciText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", noneMciText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/SnappUssd;->noneMciText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
