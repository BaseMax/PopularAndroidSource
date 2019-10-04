.class public Lcom/ebay/mobile/ads/promotedlistings/model/TemplatedTextualDisplayResolver;
.super Ljava/lang/Object;
.source "TemplatedTextualDisplayResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;
    .locals 4

    .line 23
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    .line 29
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->text:Ljava/lang/String;

    .line 30
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->template:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->template:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicTemplateCalculator;->getValueForTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_0
    new-instance v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->styles:Ljava/util/Set;

    invoke-direct {v3, v2, v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-direct {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;-><init>(Ljava/util/List;)V

    .line 37
    invoke-virtual {p1, p3}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
