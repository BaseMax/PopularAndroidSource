.class final Lcom/google/gson/internal/Excluder$1;
.super Lcom/google/gson/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/Excluder;->create(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/gson/e;

.field final synthetic d:Lcom/google/gson/b/a;

.field final synthetic e:Lcom/google/gson/internal/Excluder;

.field private f:Lcom/google/gson/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/q<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/e;Lcom/google/gson/b/a;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/gson/internal/Excluder$1;->e:Lcom/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/google/gson/internal/Excluder$1;->a:Z

    iput-boolean p3, p0, Lcom/google/gson/internal/Excluder$1;->b:Z

    iput-object p4, p0, Lcom/google/gson/internal/Excluder$1;->c:Lcom/google/gson/e;

    iput-object p5, p0, Lcom/google/gson/internal/Excluder$1;->d:Lcom/google/gson/b/a;

    invoke-direct {p0}, Lcom/google/gson/q;-><init>()V

    return-void
.end method

.method private a()Lcom/google/gson/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/q<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->f:Lcom/google/gson/q;

    if-eqz v0, :cond_0

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->c:Lcom/google/gson/e;

    iget-object v1, p0, Lcom/google/gson/internal/Excluder$1;->e:Lcom/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder$1;->d:Lcom/google/gson/b/a;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/e;->getDelegateAdapter(Lcom/google/gson/r;Lcom/google/gson/b/a;)Lcom/google/gson/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder$1;->f:Lcom/google/gson/q;

    return-object v0
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->a:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/Excluder$1;->a()Lcom/google/gson/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/q;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->b:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/Excluder$1;->a()Lcom/google/gson/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/q;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
