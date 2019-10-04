.class final Lcom/google/zxing/datamatrix/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:[Lcom/google/zxing/datamatrix/a/e$a;


# direct methods
.method private constructor <init>(ILcom/google/zxing/datamatrix/a/e$a;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/google/zxing/datamatrix/a/e$b;->a:I

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/zxing/datamatrix/a/e$a;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 124
    iput-object p1, p0, Lcom/google/zxing/datamatrix/a/e$b;->b:[Lcom/google/zxing/datamatrix/a/e$a;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/zxing/datamatrix/a/e$a;B)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/a/e$b;-><init>(ILcom/google/zxing/datamatrix/a/e$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/datamatrix/a/e$a;Lcom/google/zxing/datamatrix/a/e$a;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e

    .line 128
    iput v0, p0, Lcom/google/zxing/datamatrix/a/e$b;->a:I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/datamatrix/a/e$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 129
    iput-object v0, p0, Lcom/google/zxing/datamatrix/a/e$b;->b:[Lcom/google/zxing/datamatrix/a/e$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/a/e$a;Lcom/google/zxing/datamatrix/a/e$a;B)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/a/e$b;-><init>(Lcom/google/zxing/datamatrix/a/e$a;Lcom/google/zxing/datamatrix/a/e$a;)V

    return-void
.end method
