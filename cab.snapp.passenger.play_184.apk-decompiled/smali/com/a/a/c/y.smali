.class final Lcom/a/a/c/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c/aj;


# instance fields
.field private final a:I

.field private final b:[Lcom/a/a/c/aj;

.field private final c:Lcom/a/a/c/z;


# direct methods
.method public varargs constructor <init>(I[Lcom/a/a/c/aj;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/a/a/c/y;->a:I

    .line 16
    iput-object p2, p0, Lcom/a/a/c/y;->b:[Lcom/a/a/c/aj;

    .line 17
    new-instance p2, Lcom/a/a/c/z;

    invoke-direct {p2, p1}, Lcom/a/a/c/z;-><init>(I)V

    iput-object p2, p0, Lcom/a/a/c/y;->c:Lcom/a/a/c/z;

    return-void
.end method


# virtual methods
.method public final getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7

    .line 22
    array-length v0, p1

    iget v1, p0, Lcom/a/a/c/y;->a:I

    if-gt v0, v1, :cond_0

    return-object p1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/y;->b:[Lcom/a/a/c/aj;

    array-length v1, v0

    const/4 v2, 0x0

    move-object v3, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 28
    array-length v5, v3

    iget v6, p0, Lcom/a/a/c/y;->a:I

    if-le v5, v6, :cond_1

    .line 32
    invoke-interface {v4, p1}, Lcom/a/a/c/aj;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_1
    array-length p1, v3

    iget v0, p0, Lcom/a/a/c/y;->a:I

    if-le p1, v0, :cond_2

    .line 36
    iget-object p1, p0, Lcom/a/a/c/y;->c:Lcom/a/a/c/z;

    invoke-virtual {p1, v3}, Lcom/a/a/c/z;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    :cond_2
    return-object v3
.end method
