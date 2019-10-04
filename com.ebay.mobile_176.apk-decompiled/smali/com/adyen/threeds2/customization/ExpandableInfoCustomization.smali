.class public final Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;
.super Lcom/adyen/threeds2/customization/Customization;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/adyen/threeds2/customization/Customization;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->c:I

    .line 36
    iput v0, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->e:I

    return-void
.end method


# virtual methods
.method public getBorderColor()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->e:I

    return v0
.end method

.method public getExpandedStateIndicatorColor()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadingTextColor()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadingTextFontName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadingTextFontSize()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->c:I

    return v0
.end method

.method public getHighlightedBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setBorderColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->d:Ljava/lang/String;

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

    .line 124
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->e:I

    return-void
.end method

.method public setExpandStateIndicatorColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->f:Ljava/lang/String;

    return-void
.end method

.method public setHeadingTextColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->a:Ljava/lang/String;

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

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->b:Ljava/lang/String;

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

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->c:I

    return-void
.end method

.method public setHighlightedBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->g:Ljava/lang/String;

    return-void
.end method
