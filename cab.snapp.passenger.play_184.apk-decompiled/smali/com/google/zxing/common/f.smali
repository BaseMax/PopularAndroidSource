.class public Lcom/google/zxing/common/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private final b:[Lcom/google/zxing/m;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/m;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/common/f;->a:Lcom/google/zxing/common/b;

    .line 35
    iput-object p2, p0, Lcom/google/zxing/common/f;->b:[Lcom/google/zxing/m;

    return-void
.end method


# virtual methods
.method public final getBits()Lcom/google/zxing/common/b;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/zxing/common/f;->a:Lcom/google/zxing/common/b;

    return-object v0
.end method

.method public final getPoints()[Lcom/google/zxing/m;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/zxing/common/f;->b:[Lcom/google/zxing/m;

    return-object v0
.end method
