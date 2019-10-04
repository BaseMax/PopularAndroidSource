.class public final Lcom/adyen/threeds2/customization/SelectionItemCustomization;
.super Lcom/adyen/threeds2/customization/Customization;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/adyen/threeds2/customization/Customization;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->d:I

    return-void
.end method


# virtual methods
.method public getBorderColor()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->d:I

    return v0
.end method

.method public getHighlightedBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionIndicatorTintColor()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setBorderColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->c:Ljava/lang/String;

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

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->d:I

    return-void
.end method

.method public setHighlightedBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->b:Ljava/lang/String;

    return-void
.end method

.method public setSelectionIndicatorTintColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->a:Ljava/lang/String;

    return-void
.end method
