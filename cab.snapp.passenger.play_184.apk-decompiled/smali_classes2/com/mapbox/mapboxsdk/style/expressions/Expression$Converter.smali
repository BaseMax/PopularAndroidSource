.class public final Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/style/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Converter"
.end annotation


# static fields
.field private static final gson:Lcom/google/gson/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4472
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->gson:Lcom/google/gson/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lcom/google/gson/JsonArray;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 9

    .line 4481
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 4485
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 4486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    .line 4488
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4489
    invoke-virtual {p0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    const-string v5, "literal"

    .line 4490
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Lcom/google/gson/JsonArray;

    if-eqz v5, :cond_2

    .line 4491
    check-cast v4, Lcom/google/gson/JsonArray;

    .line 4492
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 4493
    :goto_1
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 4494
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 4495
    instance-of v8, v7, Lcom/google/gson/JsonPrimitive;

    if-eqz v8, :cond_0

    .line 4496
    check-cast v7, Lcom/google/gson/JsonPrimitive;

    invoke-static {v7}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->convertToValue(Lcom/google/gson/JsonPrimitive;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4498
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Nested literal arrays are not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4502
    :cond_1
    new-instance v4, Lcom/mapbox/mapboxsdk/style/expressions/Expression$ExpressionLiteralArray;

    invoke-direct {v4, v5}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$ExpressionLiteralArray;-><init>([Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4504
    :cond_2
    invoke-static {v4}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4507
    :cond_3
    new-instance p0, Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    invoke-direct {p0, v1, v0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/style/expressions/Expression;)V

    return-object p0

    .line 4482
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t convert empty jsonArray expressions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static convert(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 4

    .line 4517
    instance-of v0, p0, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_0

    .line 4518
    check-cast p0, Lcom/google/gson/JsonArray;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonArray;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object p0

    return-object p0

    .line 4519
    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_1

    .line 4520
    check-cast p0, Lcom/google/gson/JsonPrimitive;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonPrimitive;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object p0

    return-object p0

    .line 4521
    :cond_1
    instance-of v0, p0, Lcom/google/gson/k;

    if-eqz v0, :cond_2

    .line 4522
    new-instance p0, Lcom/mapbox/mapboxsdk/style/expressions/Expression$ExpressionLiteral;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 4523
    :cond_2
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_4

    .line 4524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4525
    check-cast p0, Lcom/google/gson/JsonObject;

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4526
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4528
    :cond_3
    new-instance p0, Lcom/mapbox/mapboxsdk/style/expressions/Expression$ExpressionMap;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 4530
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported expression conversion for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static convert(Lcom/google/gson/JsonPrimitive;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 1

    .line 4541
    new-instance v0, Lcom/mapbox/mapboxsdk/style/expressions/Expression$ExpressionLiteral;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->convertToValue(Lcom/google/gson/JsonPrimitive;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;
    .locals 2

    .line 4570
    sget-object v0, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->gson:Lcom/google/gson/e;

    const-class v1, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonArray;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonArray;)Lcom/mapbox/mapboxsdk/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method private static convertToValue(Lcom/google/gson/JsonPrimitive;)Ljava/lang/Object;
    .locals 3

    .line 4551
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4552
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 4553
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4554
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 4555
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4556
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4558
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported literal expression conversion for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
