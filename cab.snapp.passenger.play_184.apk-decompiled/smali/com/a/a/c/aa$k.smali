.class final Lcom/a/a/c/aa$k;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation


# instance fields
.field private final a:[Lcom/a/a/c/aa$j;


# direct methods
.method public varargs constructor <init>([Lcom/a/a/c/aa$j;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/a/a/c/aa$j;

    .line 127
    invoke-direct {p0, v0, v1}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    .line 128
    iput-object p1, p0, Lcom/a/a/c/aa$k;->a:[Lcom/a/a/c/aa$j;

    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/a/a/c/aa$k;->a:[Lcom/a/a/c/aa$j;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 142
    invoke-virtual {v4}, Lcom/a/a/c/aa$j;->getSize()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final write(Lcom/a/a/c/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/a/a/c/aa$k;->a:[Lcom/a/a/c/aa$j;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 134
    invoke-virtual {v3, p1}, Lcom/a/a/c/aa$j;->write(Lcom/a/a/c/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
