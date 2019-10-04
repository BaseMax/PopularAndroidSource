.class public final Lcom/adyen/threeds2/customization/ButtonCustomization;
.super Lcom/adyen/threeds2/customization/Customization;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/adyen/threeds2/customization/Customization;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/adyen/threeds2/customization/ButtonCustomization;->b:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/adyen/threeds2/customization/ButtonCustomization;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/adyen/threeds2/customization/ButtonCustomization;->b:I

    return v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/ButtonCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/ButtonCustomization;->a:Ljava/lang/String;

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

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/ButtonCustomization;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/adyen/threeds2/customization/ButtonCustomization;->b:I

    return-void
.end method
