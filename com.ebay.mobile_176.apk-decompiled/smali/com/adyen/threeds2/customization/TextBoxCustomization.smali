.class public final Lcom/adyen/threeds2/customization/TextBoxCustomization;
.super Lcom/adyen/threeds2/customization/Customization;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/adyen/threeds2/customization/Customization;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/adyen/threeds2/customization/TextBoxCustomization;->b:I

    .line 34
    iput v0, p0, Lcom/adyen/threeds2/customization/TextBoxCustomization;->c:I

    return-void
.end method


# virtual methods
.method public getBorderColor()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/adyen/threeds2/customization/TextBoxCustomization;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/adyen/threeds2/customization/TextBoxCustomization;->b:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/adyen/threeds2/customization/TextBoxCustomization;->c:I

    return v0
.end method

.method public setBorderColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/TextBoxCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/TextBoxCustomization;->a:Ljava/lang/String;

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "borderWidth"

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/TextBoxCustomization;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/adyen/threeds2/customization/TextBoxCustomization;->b:I

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "cornerRadius"

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/TextBoxCustomization;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/adyen/threeds2/customization/TextBoxCustomization;->c:I

    return-void
.end method
