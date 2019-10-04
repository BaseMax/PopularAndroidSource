.class public final Lcom/adyen/threeds2/customization/UiCustomization;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;",
            "Lcom/adyen/threeds2/customization/ButtonCustomization;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/adyen/threeds2/customization/Customization;",
            ">;",
            "Lcom/adyen/threeds2/customization/Customization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->a:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ButtonCustomization;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/adyen/threeds2/customization/ButtonCustomization;

    invoke-direct {v0}, Lcom/adyen/threeds2/customization/ButtonCustomization;-><init>()V

    .line 368
    iget-object v1, p0, Lcom/adyen/threeds2/customization/UiCustomization;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/adyen/threeds2/customization/Customization;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/Customization;

    if-nez v0, :cond_0

    .line 380
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/Customization;

    .line 381
    iget-object v1, p0, Lcom/adyen/threeds2/customization/UiCustomization;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 386
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access constructor of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 384
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getButtonCustomization(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "buttonType"

    .line 56
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;

    move-result-object p1

    return-object p1
.end method

.method public getExpandableInfoCustomization()Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;
    .locals 1

    .line 171
    const-class v0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    return-object v0
.end method

.method public getLabelCustomization()Lcom/adyen/threeds2/customization/LabelCustomization;
    .locals 1

    .line 115
    const-class v0, Lcom/adyen/threeds2/customization/LabelCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/LabelCustomization;

    return-object v0
.end method

.method public getScreenCustomization()Lcom/adyen/threeds2/customization/ScreenCustomization;
    .locals 1

    .line 77
    const-class v0, Lcom/adyen/threeds2/customization/ScreenCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ScreenCustomization;

    return-object v0
.end method

.method public getSelectionItemCustomization()Lcom/adyen/threeds2/customization/SelectionItemCustomization;
    .locals 1

    .line 152
    const-class v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    return-object v0
.end method

.method public getTextBoxCustomization()Lcom/adyen/threeds2/customization/TextBoxCustomization;
    .locals 1

    .line 133
    const-class v0, Lcom/adyen/threeds2/customization/TextBoxCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/TextBoxCustomization;

    return-object v0
.end method

.method public getToolbarCustomization()Lcom/adyen/threeds2/customization/ToolbarCustomization;
    .locals 1

    .line 96
    const-class v0, Lcom/adyen/threeds2/customization/ToolbarCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ToolbarCustomization;

    return-object v0
.end method

.method public setBorderColor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "hexColorCode"

    .line 285
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-class v0, Lcom/adyen/threeds2/customization/TextBoxCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/TextBoxCustomization;

    .line 288
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/TextBoxCustomization;->setBorderColor(Ljava/lang/String;)V

    .line 290
    const-class v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    .line 291
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->setBorderColor(Ljava/lang/String;)V

    .line 293
    const-class v0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    .line 294
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->setBorderColor(Ljava/lang/String;)V

    return-void
.end method

.method public setButtonCustomization(Lcom/adyen/threeds2/customization/ButtonCustomization;Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "buttonType"

    .line 69
    invoke-static {v0, p2}, Lcom/adyen/threeds2/util/Preconditions;->requireNonNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpandableInfoCustomization(Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "expandableInfoCustomization"

    .line 182
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->b:Ljava/util/Map;

    const-class v1, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHighlightedBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "hexColorCode"

    .line 347
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-class v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    .line 350
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->setHighlightedBackgroundColor(Ljava/lang/String;)V

    .line 352
    const-class v0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    .line 353
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->setHighlightedBackgroundColor(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 355
    new-array v0, v0, [Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    sget-object v1, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->CANCEL:Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->RESEND:Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    .line 358
    invoke-direct {p0, v1}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;

    move-result-object v1

    .line 359
    invoke-virtual {v1, p1}, Lcom/adyen/threeds2/customization/ButtonCustomization;->setBackgroundColor(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelCustomization(Lcom/adyen/threeds2/customization/LabelCustomization;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "labelCustomization"

    .line 125
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->b:Ljava/util/Map;

    const-class v1, Lcom/adyen/threeds2/customization/LabelCustomization;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setScreenBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "hexColorCode"

    .line 221
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-class v0, Lcom/adyen/threeds2/customization/ScreenCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ScreenCustomization;

    .line 224
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ScreenCustomization;->setBackgroundColor(Ljava/lang/String;)V

    return-void
.end method

.method public setScreenCustomization(Lcom/adyen/threeds2/customization/ScreenCustomization;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string/jumbo v0, "screenCustomization"

    .line 88
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->b:Ljava/util/Map;

    const-class v1, Lcom/adyen/threeds2/customization/ScreenCustomization;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSelectionItemCustomization(Lcom/adyen/threeds2/customization/SelectionItemCustomization;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string/jumbo v0, "selectionItemCustomization"

    .line 163
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->b:Ljava/util/Map;

    const-class v1, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStatusBarColor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "hexColorCode"

    .line 207
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-class v0, Lcom/adyen/threeds2/customization/ScreenCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ScreenCustomization;

    .line 210
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ScreenCustomization;->setStatusBarColor(Ljava/lang/String;)V

    return-void
.end method

.method public setTextBoxCustomization(Lcom/adyen/threeds2/customization/TextBoxCustomization;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string/jumbo v0, "textBoxCustomization"

    .line 144
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->b:Ljava/util/Map;

    const-class v1, Lcom/adyen/threeds2/customization/TextBoxCustomization;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "hexColorCode"

    .line 244
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-class v0, Lcom/adyen/threeds2/customization/ScreenCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ScreenCustomization;

    .line 247
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ScreenCustomization;->setTextColor(Ljava/lang/String;)V

    .line 249
    const-class v0, Lcom/adyen/threeds2/customization/ToolbarCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ToolbarCustomization;

    .line 250
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->setTextColor(Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->CANCEL:Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ButtonCustomization;->setTextColor(Ljava/lang/String;)V

    .line 255
    const-class v0, Lcom/adyen/threeds2/customization/LabelCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/LabelCustomization;

    .line 256
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/LabelCustomization;->setTextColor(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/LabelCustomization;->setHeadingTextColor(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/LabelCustomization;->setInputLabelTextColor(Ljava/lang/String;)V

    .line 260
    const-class v0, Lcom/adyen/threeds2/customization/TextBoxCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/TextBoxCustomization;

    .line 261
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/TextBoxCustomization;->setTextColor(Ljava/lang/String;)V

    .line 263
    const-class v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    .line 264
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->setTextColor(Ljava/lang/String;)V

    .line 266
    const-class v0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;

    .line 267
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->setTextColor(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->setHeadingTextColor(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ExpandableInfoCustomization;->setExpandStateIndicatorColor(Ljava/lang/String;)V

    return-void
.end method

.method public setTintColor(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string v0, "hexColorCode"

    .line 310
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-class v0, Lcom/adyen/threeds2/customization/ToolbarCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ToolbarCustomization;

    .line 313
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->setBackgroundColor(Ljava/lang/String;)V

    .line 315
    const-class v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/SelectionItemCustomization;

    .line 316
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/SelectionItemCustomization;->setSelectionIndicatorTintColor(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->values()[Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 319
    invoke-direct {p0, v3}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;)Lcom/adyen/threeds2/customization/ButtonCustomization;

    move-result-object v4

    .line 321
    sget-object v5, Lcom/adyen/threeds2/customization/UiCustomization$1;->a:[I

    invoke-virtual {v3}, Lcom/adyen/threeds2/customization/UiCustomization$ButtonType;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 328
    invoke-virtual {v4, p1}, Lcom/adyen/threeds2/customization/ButtonCustomization;->setBackgroundColor(Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :pswitch_0
    invoke-virtual {v4, p1}, Lcom/adyen/threeds2/customization/ButtonCustomization;->setTextColor(Ljava/lang/String;)V

    :goto_1
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setToolbarCustomization(Lcom/adyen/threeds2/customization/ToolbarCustomization;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/exception/InvalidInputException;
        }
    .end annotation

    const-string/jumbo v0, "toolbarCustomization"

    .line 107
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/adyen/threeds2/customization/UiCustomization;->b:Ljava/util/Map;

    const-class v1, Lcom/adyen/threeds2/customization/ToolbarCustomization;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    .line 193
    invoke-static {v0, p1}, Lcom/adyen/threeds2/util/Preconditions;->requireNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-class v0, Lcom/adyen/threeds2/customization/ToolbarCustomization;

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/customization/UiCustomization;->a(Ljava/lang/Class;)Lcom/adyen/threeds2/customization/Customization;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/customization/ToolbarCustomization;

    .line 196
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/customization/ToolbarCustomization;->setHeaderText(Ljava/lang/String;)V

    return-void
.end method
