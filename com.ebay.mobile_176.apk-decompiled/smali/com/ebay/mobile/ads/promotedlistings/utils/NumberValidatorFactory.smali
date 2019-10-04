.class public Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;
.super Ljava/lang/Object;
.source "NumberValidatorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;Ljava/lang/Double;)Lcom/ebay/nautilus/domain/data/experience/bestoffer/validation/Validator;
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;",
            "Ljava/lang/Double;",
            ")",
            "Lcom/ebay/nautilus/domain/data/experience/bestoffer/validation/Validator<",
            "**>;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/ebay/nautilus/domain/data/experience/bestoffer/validation/NumberValidator;

    invoke-direct {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/experience/bestoffer/validation/NumberValidator;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;Ljava/lang/Double;)V

    return-object v0
.end method
