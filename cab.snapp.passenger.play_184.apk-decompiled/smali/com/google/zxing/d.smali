.class public final Lcom/google/zxing/d;
.super Lcom/google/zxing/k;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/zxing/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/zxing/d;

    invoke-direct {v0}, Lcom/google/zxing/d;-><init>()V

    .line 30
    sput-object v0, Lcom/google/zxing/d;->c:Lcom/google/zxing/d;

    sget-object v1, Lcom/google/zxing/d;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/zxing/d;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/zxing/k;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/zxing/k;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getFormatInstance()Lcom/google/zxing/d;
    .locals 1

    .line 41
    sget-boolean v0, Lcom/google/zxing/d;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/zxing/d;

    invoke-direct {v0}, Lcom/google/zxing/d;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/zxing/d;->c:Lcom/google/zxing/d;

    return-object v0
.end method

.method public static getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/d;
    .locals 1

    .line 45
    sget-boolean v0, Lcom/google/zxing/d;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/zxing/d;

    invoke-direct {v0, p0}, Lcom/google/zxing/d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/google/zxing/d;->c:Lcom/google/zxing/d;

    return-object p0
.end method
