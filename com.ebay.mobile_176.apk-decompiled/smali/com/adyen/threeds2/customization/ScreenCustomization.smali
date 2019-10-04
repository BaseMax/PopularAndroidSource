.class public final Lcom/adyen/threeds2/customization/ScreenCustomization;
.super Lcom/adyen/threeds2/customization/Customization;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/adyen/threeds2/customization/Customization;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/adyen/threeds2/customization/ScreenCustomization;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBarColor()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/adyen/threeds2/customization/ScreenCustomization;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/ScreenCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/ScreenCustomization;->b:Ljava/lang/String;

    return-void
.end method

.method public setStatusBarColor(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/customization/ScreenCustomization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/customization/ScreenCustomization;->a:Ljava/lang/String;

    return-void
.end method
