.class public final Lcom/ebay/common/util/IncrementingInt;
.super Ljava/lang/Object;
.source "IncrementingInt.java"


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/ebay/common/util/IncrementingInt;->value:I

    return-void
.end method


# virtual methods
.method public increment()V
    .locals 1

    .line 25
    iget v0, p0, Lcom/ebay/common/util/IncrementingInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ebay/common/util/IncrementingInt;->value:I

    return-void
.end method

.method public intValue()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/ebay/common/util/IncrementingInt;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    iget v0, p0, Lcom/ebay/common/util/IncrementingInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
