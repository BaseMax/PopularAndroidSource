.class public interface abstract Lcom/google/zxing/j;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract decode(Lcom/google/zxing/b;)Lcom/google/zxing/l;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/c;,
            Lcom/google/zxing/d;
        }
    .end annotation
.end method

.method public abstract decode(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/b;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;,
            Lcom/google/zxing/c;,
            Lcom/google/zxing/d;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
