.class final Lcom/a/a/c/b$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 341
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 342
    iput-object p1, p0, Lcom/a/a/c/b$a;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/ByteArrayOutputStream;B)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/a/a/c/b$a;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method


# virtual methods
.method public final toByteString()Lcom/a/a/c/b;
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/a/a/c/b$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 350
    new-instance v1, Lcom/a/a/c/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/a/a/c/b;-><init>([BB)V

    return-object v1
.end method