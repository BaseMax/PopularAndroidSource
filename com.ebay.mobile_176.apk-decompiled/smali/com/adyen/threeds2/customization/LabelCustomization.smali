.class public final Lcom/adyen/threeds2/customization/LabelCustomization;
.super Lcom/adyen/threeds2/customization/Customization;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/adyen/threeds2/customization/Customization;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->c:I

    .line 38
    iput v0, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->f:I

    return-void
.end method


# virtual methods
.method public getHeadingTextColor()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadingTextFontName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadingTextFontSize()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->c:I

    return v0
.end method

.method public getInputLabelTextColor()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getInputLabelTextFontName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getInputLabelTextFontSize()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->f:I

    return v0
.end method

.method public setHeadingTextColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/LabelCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->a:Ljava/lang/String;

    return-void
.end method

.method public setHeadingTextFontName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "fontName"

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/LabelCustomization;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->b:Ljava/lang/String;

    return-void
.end method

.method public setHeadingTextFontSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "fontSize"

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/LabelCustomization;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->c:I

    return-void
.end method

.method public setInputLabelTextColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/LabelCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->d:Ljava/lang/String;

    return-void
.end method

.method public setInputLabelTextFontName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "fontName"

    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/LabelCustomization;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->e:Ljava/lang/String;

    return-void
.end method

.method public setInputLabelTextFontSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "fontSize"

    .line 139
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/LabelCustomization;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/adyen/threeds2/customization/LabelCustomization;->f:I

    return-void
.end method
