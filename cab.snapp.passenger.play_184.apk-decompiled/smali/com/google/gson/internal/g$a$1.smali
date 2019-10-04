.class final Lcom/google/gson/internal/g$a$1;
.super Lcom/google/gson/internal/g$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/g$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/g<",
        "TK;TV;>.c<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/g$a;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/g$a;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/google/gson/internal/g$a$1;->a:Lcom/google/gson/internal/g$a;

    iget-object p1, p1, Lcom/google/gson/internal/g$a;->a:Lcom/google/gson/internal/g;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/g$c;-><init>(Lcom/google/gson/internal/g;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/google/gson/internal/g$a$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lcom/google/gson/internal/g$a$1;->a()Lcom/google/gson/internal/g$d;

    move-result-object v0

    return-object v0
.end method
