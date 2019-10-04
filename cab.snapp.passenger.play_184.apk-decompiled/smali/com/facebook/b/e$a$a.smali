.class final Lcom/facebook/b/e$a$a;
.super Lcom/facebook/b/o$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/b/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/b/e$a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/facebook/b/e$a;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/facebook/b/e$a$a;->a:Lcom/facebook/b/e$a;

    invoke-direct {p0}, Lcom/facebook/b/o$d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/b/e$a;B)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/facebook/b/e$a$a;-><init>(Lcom/facebook/b/e$a;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 131
    iget v0, p0, Lcom/facebook/b/e$a$a;->b:I

    iget-object v1, p0, Lcom/facebook/b/e$a$a;->a:Lcom/facebook/b/e$a;

    .line 1047
    iget-object v1, v1, Lcom/facebook/b/e$a;->a:[Lcom/facebook/b/e$b;

    .line 131
    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Lcom/facebook/b/o$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/facebook/b/e$a$a;->a:Lcom/facebook/b/e$a;

    .line 2047
    iget-object v0, v0, Lcom/facebook/b/e$a;->a:[Lcom/facebook/b/e$b;

    .line 136
    iget v1, p0, Lcom/facebook/b/e$a$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/b/e$a$a;->b:I

    aget-object v0, v0, v1

    .line 137
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, v0, Lcom/facebook/b/e$b;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 139
    :try_start_0
    new-instance v2, Lcom/facebook/b/o$c;

    invoke-direct {v2, v0, v1}, Lcom/facebook/b/o$c;-><init>(Lcom/facebook/b/o$a;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 144
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 146
    throw v0
.end method
