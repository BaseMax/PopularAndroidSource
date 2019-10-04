.class public final Lcom/google/zxing/h;
.super Lcom/google/zxing/k;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/zxing/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/zxing/h;

    invoke-direct {v0}, Lcom/google/zxing/h;-><init>()V

    .line 29
    sput-object v0, Lcom/google/zxing/h;->c:Lcom/google/zxing/h;

    sget-object v1, Lcom/google/zxing/h;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/zxing/h;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/k;-><init>()V

    return-void
.end method

.method public static getNotFoundInstance()Lcom/google/zxing/h;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/zxing/h;->c:Lcom/google/zxing/h;

    return-object v0
.end method
