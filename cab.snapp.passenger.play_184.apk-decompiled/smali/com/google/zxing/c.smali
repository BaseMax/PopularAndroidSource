.class public final Lcom/google/zxing/c;
.super Lcom/google/zxing/k;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/zxing/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/zxing/c;

    invoke-direct {v0}, Lcom/google/zxing/c;-><init>()V

    .line 29
    sput-object v0, Lcom/google/zxing/c;->c:Lcom/google/zxing/c;

    sget-object v1, Lcom/google/zxing/c;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/zxing/c;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/k;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/zxing/k;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getChecksumInstance()Lcom/google/zxing/c;
    .locals 1

    .line 41
    sget-boolean v0, Lcom/google/zxing/c;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/zxing/c;

    invoke-direct {v0}, Lcom/google/zxing/c;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/zxing/c;->c:Lcom/google/zxing/c;

    return-object v0
.end method

.method public static getChecksumInstance(Ljava/lang/Throwable;)Lcom/google/zxing/c;
    .locals 1

    .line 45
    sget-boolean v0, Lcom/google/zxing/c;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/zxing/c;

    invoke-direct {v0, p0}, Lcom/google/zxing/c;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/google/zxing/c;->c:Lcom/google/zxing/c;

    return-object p0
.end method
