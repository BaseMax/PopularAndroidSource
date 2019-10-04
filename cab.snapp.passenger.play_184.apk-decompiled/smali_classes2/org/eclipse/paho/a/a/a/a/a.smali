.class public final Lorg/eclipse/paho/a/a/a/a/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/a;->a:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lorg/eclipse/paho/a/a/a/a/a;->b:I

    return-void
.end method


# virtual methods
.method public final getCounter()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/eclipse/paho/a/a/a/a/a;->b:I

    return v0
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 41
    iget v1, p0, Lorg/eclipse/paho/a/a/a/a/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/paho/a/a/a/a/a;->b:I

    :cond_0
    return v0
.end method

.method public final resetCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lorg/eclipse/paho/a/a/a/a/a;->b:I

    return-void
.end method
