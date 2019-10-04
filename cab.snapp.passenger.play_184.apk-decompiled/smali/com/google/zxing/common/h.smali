.class public abstract Lcom/google/zxing/common/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/zxing/common/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/zxing/common/e;

    invoke-direct {v0}, Lcom/google/zxing/common/e;-><init>()V

    sput-object v0, Lcom/google/zxing/common/h;->a:Lcom/google/zxing/common/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/h;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/zxing/common/h;->a:Lcom/google/zxing/common/h;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/h;)V
    .locals 0

    .line 48
    sput-object p0, Lcom/google/zxing/common/h;->a:Lcom/google/zxing/common/h;

    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/b;IILcom/google/zxing/common/j;)Lcom/google/zxing/common/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation
.end method
