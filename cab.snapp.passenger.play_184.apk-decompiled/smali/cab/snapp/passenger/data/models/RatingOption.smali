.class public Lcab/snapp/passenger/data/models/RatingOption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private option:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "text"
    .end annotation
.end field

.field private optionType:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
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
.method public getOption()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/data/models/RatingOption;->option:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionType()I
    .locals 1

    .line 19
    iget v0, p0, Lcab/snapp/passenger/data/models/RatingOption;->optionType:I

    return v0
.end method

.method public setOption(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/data/models/RatingOption;->option:Ljava/lang/String;

    return-void
.end method

.method public setOptionType(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcab/snapp/passenger/data/models/RatingOption;->optionType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RatingOption{optionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcab/snapp/passenger/data/models/RatingOption;->optionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", option=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data/models/RatingOption;->option:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
