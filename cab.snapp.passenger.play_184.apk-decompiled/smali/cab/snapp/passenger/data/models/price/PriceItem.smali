.class public Lcab/snapp/passenger/data/models/price/PriceItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field

.field private value:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcab/snapp/passenger/data/models/price/PriceItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 38
    iget v0, p0, Lcab/snapp/passenger/data/models/price/PriceItem;->type:I

    return v0
.end method

.method public getValue()D
    .locals 2

    .line 28
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/price/PriceItem;->value:D

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcab/snapp/passenger/data/models/price/PriceItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcab/snapp/passenger/data/models/price/PriceItem;->type:I

    return-void
.end method

.method public setValue(D)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/price/PriceItem;->value:D

    return-void
.end method
