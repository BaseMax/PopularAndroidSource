.class public final Lcom/facebook/b/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# instance fields
.field public final content:Ljava/io/InputStream;

.field public final dso:Lcom/facebook/b/o$a;


# direct methods
.method public constructor <init>(Lcom/facebook/b/o$a;Ljava/io/InputStream;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/facebook/b/o$c;->dso:Lcom/facebook/b/o$a;

    .line 142
    iput-object p2, p0, Lcom/facebook/b/o$c;->content:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/facebook/b/o$c;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
